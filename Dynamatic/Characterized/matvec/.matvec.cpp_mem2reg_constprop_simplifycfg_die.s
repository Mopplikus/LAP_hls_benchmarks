	.text
	.file	"matvec.cpp"
	.globl	_Z6matvecPA30_iPiS1_    # -- Begin function _Z6matvecPA30_iPiS1_
	.p2align	4, 0x90
	.type	_Z6matvecPA30_iPiS1_,@function
_Z6matvecPA30_iPiS1_:                   # @_Z6matvecPA30_iPiS1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movl	-28(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movl	-32(%rbp), %r8d         # 4-byte Reload
	movl	%r8d, %r9d
	movl	%r9d, %esi
	movl	%eax, %r9d
	movl	%r9d, %r10d
	imulq	$120, %rsi, %rsi
	movq	-16(%rbp), %r11         # 8-byte Reload
	addq	%rsi, %r11
	shlq	$2, %r10
	addq	%r10, %r11
	imull	(%r11), %edx
	addl	%edx, %ecx
	addl	$1, %eax
	cmpl	$30, %eax
	movl	%ecx, %edx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jb	.LBB0_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	addl	$1, %eax
	cmpl	$30, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB0_1
# %bb.4:                                # %for.end12
	movl	-44(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z6matvecPA30_iPiS1_, .Lfunc_end0-_Z6matvecPA30_iPiS1_
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
	subq	$3888, %rsp             # imm = 0xF30
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	xorl	%eax, %eax
	movl	%eax, -3860(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	movl	-3860(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3864(%rbp)       # 4-byte Spill
	callq	rand
	xorl	%ecx, %ecx
	movl	$100, %edx
	movl	%edx, -3868(%rbp)       # 4-byte Spill
	cltd
	movl	-3868(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-3864(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	%edx, -3728(%rbp,%r9,4)
	movl	%ecx, -3872(%rbp)       # 4-byte Spill
.LBB1_3:                                # %for.body8
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-3872(%rbp), %eax       # 4-byte Reload
	movl	%eax, -3876(%rbp)       # 4-byte Spill
	callq	rand
	leaq	-3600(%rbp), %rcx
	movl	$100, %edx
	movl	%edx, -3880(%rbp)       # 4-byte Spill
	cltd
	movl	-3880(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-3864(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-3876(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$120, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	addl	$1, %r8d
	cmpl	$30, %r8d
	movl	%r8d, -3872(%rbp)       # 4-byte Spill
	jb	.LBB1_3
# %bb.4:                                # %for.inc17
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-3864(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	cmpl	$30, %eax
	movl	%eax, -3860(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.5:                                # %for.inc20
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_6
.LBB1_6:                                # %for.end22
	leaq	-3856(%rbp), %rdx
	leaq	-3728(%rbp), %rsi
	leaq	-3600(%rbp), %rdi
	callq	_Z6matvecPA30_iPiS1_
	xorl	%ecx, %ecx
	movl	%eax, -3884(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	addq	$3888, %rsp             # imm = 0xF30
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
