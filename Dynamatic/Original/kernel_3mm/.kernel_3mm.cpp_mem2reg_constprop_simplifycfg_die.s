	.text
	.file	"kernel_3mm.cpp"
	.globl	_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_ # -- Begin function _Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_
	.p2align	4, 0x90
	.type	_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_,@function
_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_: # @_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	xorl	%r10d, %r10d
	movq	%rax, -8(%rbp)          # 8-byte Spill
	movq	%r9, -16(%rbp)          # 8-byte Spill
	movq	%r8, -24(%rbp)          # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
	movl	-60(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	movl	-68(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	-64(%rbp), %edx         # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%eax, %esi
	movl	%esi, %r8d
	imulq	$40, %rdi, %rdi
	movq	-24(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	shlq	$2, %r8
	addq	%r8, %r9
	movl	$0, (%r9)
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movl	%ecx, -76(%rbp)         # 4-byte Spill
.LBB0_3:                                # %for.body8
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax         # 4-byte Reload
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, %edi
	imulq	$40, %rsi, %rsi
	movq	-56(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	movl	(%r8), %edx
	movl	%eax, %r9d
	movl	%r9d, %esi
	movl	-72(%rbp), %r9d         # 4-byte Reload
	movl	%r9d, %r10d
	movl	%r10d, %edi
	imulq	$40, %rsi, %rsi
	movq	-48(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	imull	(%r8), %edx
	movl	%ecx, %r10d
	movl	%r10d, %esi
	movl	%r9d, %r10d
	movl	%r10d, %edi
	imulq	$40, %rsi, %rsi
	movq	-24(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	addl	(%r8), %edx
	movl	%edx, (%r8)
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jb	.LBB0_3
# %bb.4:                                # %for.inc21
                                        #   in Loop: Header=BB0_2 Depth=2
	movl	-72(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jb	.LBB0_2
# %bb.5:                                # %for.inc24
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jb	.LBB0_1
# %bb.6:                                # %for.end26
	xorl	%eax, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB0_7
.LBB0_7:                                # %for.body29
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_9 Depth 3
	movl	-80(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB0_8:                                # %for.body32
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	movl	-88(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	-84(%rbp), %edx         # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%eax, %esi
	movl	%esi, %r8d
	imulq	$40, %rdi, %rdi
	movq	-16(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	shlq	$2, %r8
	addq	%r8, %r9
	movl	$0, (%r9)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB0_9:                                # %for.body39
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, %edi
	imulq	$40, %rsi, %rsi
	movq	-40(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	movl	(%r8), %edx
	movl	%eax, %r9d
	movl	%r9d, %esi
	movl	-92(%rbp), %r9d         # 4-byte Reload
	movl	%r9d, %r10d
	movl	%r10d, %edi
	imulq	$40, %rsi, %rsi
	movq	-32(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	imull	(%r8), %edx
	movl	%ecx, %r10d
	movl	%r10d, %esi
	movl	%r9d, %r10d
	movl	%r10d, %edi
	imulq	$40, %rsi, %rsi
	movq	-16(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	addl	(%r8), %edx
	movl	%edx, (%r8)
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	jb	.LBB0_9
# %bb.10:                               # %for.inc57
                                        #   in Loop: Header=BB0_8 Depth=2
	movl	-92(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jb	.LBB0_8
# %bb.11:                               # %for.inc60
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jb	.LBB0_7
# %bb.12:                               # %for.end62
	xorl	%eax, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_13
.LBB0_13:                               # %for.body65
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_15 Depth 3
	movl	-100(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	%ecx, -108(%rbp)        # 4-byte Spill
.LBB0_14:                               # %for.body68
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
	movl	-108(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movl	-104(%rbp), %edx        # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%eax, %esi
	movl	%esi, %r8d
	imulq	$40, %rdi, %rdi
	movq	-8(%rbp), %r9           # 8-byte Reload
	addq	%rdi, %r9
	shlq	$2, %r8
	addq	%r8, %r9
	movl	$0, (%r9)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movl	%ecx, -116(%rbp)        # 4-byte Spill
.LBB0_15:                               # %for.body75
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-116(%rbp), %eax        # 4-byte Reload
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, %edx
	movl	%edx, %edi
	imulq	$40, %rsi, %rsi
	movq	-24(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	movl	(%r8), %edx
	movl	%eax, %r9d
	movl	%r9d, %esi
	movl	-112(%rbp), %r9d        # 4-byte Reload
	movl	%r9d, %r10d
	movl	%r10d, %edi
	imulq	$40, %rsi, %rsi
	movq	-16(%rbp), %r8          # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	imull	(%r8), %edx
	movl	%ecx, %r10d
	movl	%r10d, %esi
	movl	%r9d, %r10d
	movl	%r10d, %edi
	imulq	$40, %rsi, %rsi
	movq	-8(%rbp), %r8           # 8-byte Reload
	addq	%rsi, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	addl	(%r8), %edx
	movl	%edx, (%r8)
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jb	.LBB0_15
# %bb.16:                               # %for.inc93
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-112(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jb	.LBB0_14
# %bb.17:                               # %for.inc96
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jb	.LBB0_13
# %bb.18:                               # %for.end98
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_, .Lfunc_end0-_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$2864, %rsp             # imm = 0xB30
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	xorl	%eax, %eax
	movl	%eax, -2804(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	movl	-2804(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -2808(%rbp)       # 4-byte Spill
	movl	%ecx, -2812(%rbp)       # 4-byte Spill
.LBB1_3:                                # %for.body6
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-2812(%rbp), %eax       # 4-byte Reload
	movl	%eax, -2816(%rbp)       # 4-byte Spill
	callq	rand
	leaq	-400(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2820(%rbp)       # 4-byte Spill
	cltd
	movl	-2820(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	callq	rand
	leaq	-800(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2824(%rbp)       # 4-byte Spill
	cltd
	movl	-2824(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	callq	rand
	leaq	-1200(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2828(%rbp)       # 4-byte Spill
	cltd
	movl	-2828(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	callq	rand
	leaq	-1600(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2832(%rbp)       # 4-byte Spill
	cltd
	movl	-2832(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	callq	rand
	leaq	-2000(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2836(%rbp)       # 4-byte Spill
	cltd
	movl	-2836(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	callq	rand
	leaq	-2400(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2840(%rbp)       # 4-byte Spill
	cltd
	movl	-2840(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	callq	rand
	leaq	-2800(%rbp), %rcx
	movl	$10, %edx
	movl	%edx, -2844(%rbp)       # 4-byte Spill
	cltd
	movl	-2844(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-2808(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-2816(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$40, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	addl	$1, %r8d
	cmpl	$10, %r8d
	movl	%r8d, -2812(%rbp)       # 4-byte Spill
	jb	.LBB1_3
# %bb.4:                                # %for.inc59
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-2808(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	cmpl	$10, %eax
	movl	%eax, -2804(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.5:                                # %for.inc62
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_6
.LBB1_6:                                # %for.end64
	leaq	-2800(%rbp), %rax
	leaq	-2400(%rbp), %r9
	leaq	-2000(%rbp), %r8
	leaq	-1600(%rbp), %rcx
	leaq	-1200(%rbp), %rdx
	leaq	-800(%rbp), %rsi
	leaq	-400(%rbp), %rdi
	movq	%rax, (%rsp)
	callq	_Z10kernel_3mmPA10_iS0_S0_S0_S0_S0_S0_
	xorl	%eax, %eax
	addq	$2864, %rsp             # imm = 0xB30
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
