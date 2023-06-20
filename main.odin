package odinasm
import "core:mem"
import "core:fmt"
import "core:strings"

pt0 :: proc (x, y : int) -> int {
  return x + y
}

pt1 :: proc (x : int) -> int {
  return x
}

pt2 :: proc (x : any) -> any {
  return x
}

pt3 :: proc (x : []int) -> []int {
  return x
}

pt4 :: proc (s : string) -> int {
  return len (s)
}

pt5 :: proc (s : string) -> string {
  return s
}

// I don't understand the code generated for this ...
pt6 :: proc (s : string) -> string {
  new_s := strings.clone (s)
  return new_s
}

pt7 :: proc (p : rawptr) {
}

pt8 :: proc (s : string) {
    pt1 (len (s))
}

pt9 :: proc (s : string) {
    pt7 (raw_data (s))
}

pt10 :: proc (s : string) -> rawptr {
    p := raw_data (s)
    return p
}

p2 : rawptr

pt11 :: proc (s : string) {
    p2 = raw_data (s)
}

i : int
pt12 :: proc (s : string) {
    i = len (s)
}

string_from_ptr :: proc(ptr: ^byte, len: int) -> (res: string) {
	return transmute(string)mem.Raw_String{ptr, len}
}

main :: proc () {
  z0 : int = pt0 (65, 66)
  z1 : int = pt1 (65)
  z2 : any = pt2 (65)
  z3 : []int = pt3 ([]int{65,66,67})
  z4 := pt4 ("abcdefghijklmn ABCDEFGHIJKLMN")
  z5 := pt5 ("abcdefghijklmn ABCDEFGHIJKLMN")
  z6 := pt6 ("abcdefghijklmn ABCDEFGHIJKLMN")
  pt8  ("abcdefghijklmn ABCDEFGHIJKLMN")
  pt9  ("abcdefghijklmn ABCDEFGHIJKLMN")
  z10 := pt10  ("abcdefghijklmn ABCDEFGHIJKLMN")
  pt11  ("abcdefghijklmn ABCDEFGHIJKLMN")
  pt12  ("abcdefghijklmn ABCDEFGHIJKLMN")
  s := "abcdefghijklmn ABCDEFGHIJKLMN"
  zsfp := string_from_ptr  (raw_data(s),29)
}

