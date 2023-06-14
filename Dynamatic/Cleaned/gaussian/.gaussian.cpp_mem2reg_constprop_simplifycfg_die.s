	.text
	.file	"gaussian.cpp"
	.globl	_Z8gaussianPiPA20_i     # -- Begin function _Z8gaussianPiPA20_i
	.p2align	4, 0x90
	.type	_Z8gaussianPiPA20_i,@function
_Z8gaussianPiPA20_i:                    # @_Z8gaussianPiPA20_i
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	movl	$1, %eax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
	movl	-28(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	addl	$1, %ecx
	cmpl	$19, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	jae	.LBB0_6
# %bb.2:                                # %for.body3.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax         # 4-byte Reload
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_3:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
	movl	-40(%rbp), %eax         # 4-byte Reload
	movl	$1, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB0_4:                                # %for.body6
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movslq	%ecx, %rdx
	movl	%eax, %esi
	movl	%esi, %edi
	imulq	$80, %rdx, %rdx
	movq	-24(%rbp), %r8          # 8-byte Reload
	addq	%rdx, %r8
	shlq	$2, %rdi
	addq	%rdi, %r8
	movl	(%r8), %esi
	movl	-32(%rbp), %r9d         # 4-byte Reload
	movl	%r9d, %r10d
	movl	%r10d, %edx
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rdx,4), %r10d
	movl	%r9d, %r11d
	movl	%r11d, %edx
	movl	%eax, %r11d
	movl	%r11d, %r8d
	imulq	$80, %rdx, %rdx
	movq	-24(%rbp), %rbx         # 8-byte Reload
	addq	%rdx, %rbx
	shlq	$2, %r8
	addq	%r8, %rbx
	imull	(%rbx), %r10d
	subl	%r10d, %esi
	movslq	%ecx, %rdx
	movl	%eax, %r10d
	movl	%r10d, %r8d
	imulq	$80, %rdx, %rdx
	movq	-24(%rbp), %rbx         # 8-byte Reload
	addq	%rdx, %rbx
	shlq	$2, %r8
	addq	%r8, %rbx
	movl	%esi, (%rbx)
	addl	$1, %eax
	cmpl	$20, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jb	.LBB0_4
# %bb.5:                                # %for.inc19
                                        #   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	$18, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jl	.LBB0_3
.LBB0_6:                                # %for.inc22
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$19, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB0_1
# %bb.7:                                # %for.end24
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z8gaussianPiPA20_i, .Lfunc_end0-_Z8gaussianPiPA20_i
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
	subq	$1696, %rsp             # imm = 0x6A0
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	xorl	%eax, %eax
	movl	%eax, -1684(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	movl	-1684(%rbp), %eax       # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, %esi
	movl	$1, -80(%rbp,%rsi,4)
	movl	%eax, -1688(%rbp)       # 4-byte Spill
	movl	%ecx, -1692(%rbp)       # 4-byte Spill
.LBB1_3:                                # %for.body8
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1692(%rbp), %eax       # 4-byte Reload
	leaq	-1680(%rbp), %rcx
	movl	-1688(%rbp), %edx       # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%eax, %esi
	movl	%esi, %r8d
	imulq	$80, %rdi, %rdi
	addq	%rdi, %rcx
	shlq	$2, %r8
	addq	%r8, %rcx
	movl	$1, (%rcx)
	addl	$1, %eax
	cmpl	$20, %eax
	movl	%eax, -1692(%rbp)       # 4-byte Spill
	jb	.LBB1_3
# %bb.4:                                # %for.inc15
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-1688(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	cmpl	$20, %eax
	movl	%eax, -1684(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.5:                                # %for.inc18
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_6
.LBB1_6:                                # %for.end20
	leaq	-1680(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	callq	_Z8gaussianPiPA20_i
	xorl	%eax, %eax
	addq	$1696, %rsp             # imm = 0x6A0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
