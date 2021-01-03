	.file	"types.c"
	.intel_syntax noprefix
# GNU C17 (Ubuntu 9.3.0-17ubuntu1~20.04) version 9.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.3.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu types.c -masm=intel
# -mtune=generic -march=x86-64 -auxbase-strip ./x86_x64/types-0.s -g -O0
# -fverbose-asm -fasynchronous-unwind-tables -fstack-protector-strong
# -Wformat -Wformat-security -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop
# -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "types.c"
	.loc 1 3 12
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
# types.c:3: int main() {
	.loc 1 3 12
	mov	rax, QWORD PTR fs:40	# tmp88, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.2326, tmp88
	xor	eax, eax	# tmp88
# types.c:4:    int i = 32;
	.loc 1 4 8
	mov	DWORD PTR -56[rbp], 32	# i,
# types.c:5:    int ia[] = {1, 2};
	.loc 1 5 8
	mov	DWORD PTR -48[rbp], 1	# ia,
	mov	DWORD PTR -44[rbp], 2	# ia,
# types.c:6:    char c = 'c';
	.loc 1 6 9
	mov	BYTE PTR -57[rbp], 99	# c,
# types.c:7:    char ca[] = "this is a string";
	.loc 1 7 9
	movabs	rax, 2338328219631577204	# tmp90,
	movabs	rdx, 7453010373645639777	#,
	mov	QWORD PTR -32[rbp], rax	# ca, tmp90
	mov	QWORD PTR -24[rbp], rdx	# ca,
	mov	BYTE PTR -16[rbp], 0	# ca,
# types.c:8:    float f = 2.2;
	.loc 1 8 10
	movss	xmm0, DWORD PTR .LC0[rip]	# tmp84,
	movss	DWORD PTR -52[rbp], xmm0	# f, tmp84
# types.c:9:    float fa[] = {1.1, 2.2};
	.loc 1 9 10
	movss	xmm0, DWORD PTR .LC1[rip]	# tmp85,
	movss	DWORD PTR -40[rbp], xmm0	# fa, tmp85
	movss	xmm0, DWORD PTR .LC0[rip]	# tmp86,
	movss	DWORD PTR -36[rbp], xmm0	# fa, tmp86
# types.c:10:    return 0;
	.loc 1 10 11
	mov	eax, 0	# _10,
# types.c:11: }
	.loc 1 11 1
	mov	rcx, QWORD PTR -8[rbp]	# tmp89, D.2326
	xor	rcx, QWORD PTR fs:40	# tmp89, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1074580685
	.align 4
.LC1:
	.long	1066192077
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x389
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF50
	.byte	0xc
	.long	.LASF51
	.long	.LASF52
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6c
	.uleb128 0x6
	.long	0x65
	.long	0x9b
	.uleb128 0x7
	.long	0x39
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0xa1
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x9
	.long	0xa1
	.uleb128 0xa
	.long	.LASF53
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x234
	.uleb128 0xb
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0xb
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x9b
	.byte	0x8
	.uleb128 0xb
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x9b
	.byte	0x10
	.uleb128 0xb
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x9b
	.byte	0x18
	.uleb128 0xb
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x9b
	.byte	0x20
	.uleb128 0xb
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x9b
	.byte	0x28
	.uleb128 0xb
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x9b
	.byte	0x30
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x9b
	.byte	0x38
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x9b
	.byte	0x40
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x9b
	.byte	0x48
	.uleb128 0xb
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x9b
	.byte	0x50
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x9b
	.byte	0x58
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x24d
	.byte	0x60
	.uleb128 0xb
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x253
	.byte	0x68
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0xb
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x73
	.byte	0x78
	.uleb128 0xb
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x259
	.byte	0x83
	.uleb128 0xb
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x269
	.byte	0x88
	.uleb128 0xb
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x7f
	.byte	0x90
	.uleb128 0xb
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x274
	.byte	0x98
	.uleb128 0xb
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x27f
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x253
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x285
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xad
	.uleb128 0xc
	.long	.LASF54
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF41
	.uleb128 0x8
	.byte	0x8
	.long	0x248
	.uleb128 0x8
	.byte	0x8
	.long	0xad
	.uleb128 0x6
	.long	0xa1
	.long	0x269
	.uleb128 0x7
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.long	0x240
	.uleb128 0xd
	.long	.LASF42
	.uleb128 0x8
	.byte	0x8
	.long	0x26f
	.uleb128 0xd
	.long	.LASF43
	.uleb128 0x8
	.byte	0x8
	.long	0x27a
	.uleb128 0x6
	.long	0xa1
	.long	0x295
	.uleb128 0x7
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x2a1
	.uleb128 0x8
	.byte	0x8
	.long	0x234
	.uleb128 0xe
	.long	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x2a1
	.uleb128 0xe
	.long	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x2a1
	.uleb128 0xe
	.long	.LASF47
	.byte	0x7
	.byte	0x1a
	.byte	0xc
	.long	0x65
	.uleb128 0x6
	.long	0x2e1
	.long	0x2d6
	.uleb128 0xf
	.byte	0
	.uleb128 0x9
	.long	0x2cb
	.uleb128 0x8
	.byte	0x8
	.long	0xa8
	.uleb128 0x9
	.long	0x2db
	.uleb128 0xe
	.long	.LASF48
	.byte	0x7
	.byte	0x1b
	.byte	0x1a
	.long	0x2d6
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0x65
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x369
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x4
	.byte	0x8
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x11
	.string	"ia"
	.byte	0x1
	.byte	0x5
	.byte	0x8
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"c"
	.byte	0x1
	.byte	0x6
	.byte	0x9
	.long	0xa1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x11
	.string	"ca"
	.byte	0x1
	.byte	0x7
	.byte	0x9
	.long	0x369
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x8
	.byte	0xa
	.long	0x379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.string	"fa"
	.byte	0x1
	.byte	0x9
	.byte	0xa
	.long	0x380
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x6
	.long	0xa1
	.long	0x379
	.uleb128 0x7
	.long	0x39
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF49
	.uleb128 0x12
	.long	0x379
	.uleb128 0x7
	.long	0x39
	.byte	0x1
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"_IO_buf_end"
.LASF27:
	.string	"_old_offset"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF52:
	.string	"/home/crash/Documents/local/sysdig-repo/polyasm/0_types"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF49:
	.string	"float"
.LASF46:
	.string	"stderr"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF28:
	.string	"_cur_column"
.LASF53:
	.string	"_IO_FILE"
.LASF2:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF30:
	.string	"_shortbuf"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF12:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF10:
	.string	"char"
.LASF55:
	.string	"main"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF37:
	.string	"__pad5"
.LASF42:
	.string	"_IO_codecvt"
.LASF50:
	.string	"GNU C17 9.3.0 -masm=intel -mtune=generic -march=x86-64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF43:
	.string	"_IO_wide_data"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF25:
	.string	"_fileno"
.LASF40:
	.string	"FILE"
.LASF51:
	.string	"types.c"
.LASF45:
	.string	"stdout"
.LASF54:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
