```
pt1 :: proc (x : int) -> int {
  return x
}
```

```
define internal i64 @odinasm.pt1(i64 %0, i8* noalias nocapture nonnull %__.context_ptr) !dbg !2136 {
decls:
  %1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !2139, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.declare(metadata i8* %__.context_ptr, metadata !2141, metadata !DIExpression()), !dbg !2142
  br label %entry, !dbg !2142

entry:                                            ; preds = %decls
  store i64 %0, i64* %1, align 8
  %2 = bitcast i8* %__.context_ptr to %runtime.Context*
  ret i64 %0, !dbg !2143
}

```
```
	.p2align	4, 0x90
_odinasm.pt1:
Lfunc_begin35:
	.loc	16 9 0
	.cfi_startproc
	movq	%rdi, -16(%rsp)
Ltmp369:
	movq	-16(%rsp), %rax
	movq	%rax, -8(%rsp)
Ltmp370:
	.loc	16 10 3 prologue_end
	retq
Ltmp371:
Lfunc_end35:
	.cfi_endproc

```

```
odinasm.bin`odinasm.pt1:
    0x100006e80 <+0>:  movq   %rdi, -0x8(%rsp)
->  0x100006e85 <+5>:  jmp    0x100006e87               ; <+7> at main.odin
    0x100006e87 <+7>:  movq   -0x8(%rsp), %rax
    0x100006e8c <+12>: retq   
```
