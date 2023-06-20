all:
	odin build . -debug -o:none -build-mode:asm

asm:
	odin build . -debug -o:none -build-mode:asm

asmo:
	odin build . -debug -build-mode:asm

ir:
	odin build . -debug -o:none -build-mode:llvm-ir

llvm: ir



