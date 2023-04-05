	.text
	.file	"histogram.cpp"
	.globl	_Z9histogramPiPfS0_i    # -- Begin function _Z9histogramPiPfS0_i
	.p2align	4, 0x90
	.type	_Z9histogramPiPfS0_i,@function
_Z9histogramPiPfS0_i:                   # @_Z9histogramPiPfS0_i
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$0, %ecx
	movq	%rdx, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	jle	.LBB0_3
# %bb.1:                                # %for.body.lr.ph
	xorl	%eax, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	(%rsi,%rdx,4), %ecx
	movl	%eax, %edi
	movl	%edi, %edx
	movq	-16(%rbp), %r8          # 8-byte Reload
	movss	(%r8,%rdx,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	movslq	%ecx, %rdx
	movq	-8(%rbp), %r9           # 8-byte Reload
	addss	(%r9,%rdx,4), %xmm0
	movslq	%ecx, %rdx
	movss	%xmm0, (%r9,%rdx,4)
	addl	$1, %eax
	movl	-28(%rbp), %ecx         # 4-byte Reload
	cmpl	%ecx, %eax
	movl	%eax, -32(%rbp)         # 4-byte Spill
	jl	.LBB0_2
.LBB0_3:                                # %for.end
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z9histogramPiPfS0_i, .Lfunc_end0-_Z9histogramPiPfS0_i
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1296878797              # float 214748368
	.text
	.globl	main
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
	subq	$1216, %rsp             # imm = 0x4C0
	movl	$15, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	xorl	%eax, %eax
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1204(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1208(%rbp)       # 4-byte Spill
	callq	rand
	movl	$101, %ecx
	cltd
	idivl	%ecx
	movl	-1208(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -400(%rbp,%rdi,4)
	callq	rand
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	movl	-1208(%rbp), %eax       # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edi
	movss	%xmm1, -800(%rbp,%rdi,4)
	callq	rand
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	cvtsi2ssl	%eax, %xmm1
	divss	%xmm0, %xmm1
	movl	-1208(%rbp), %eax       # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edi
	movss	%xmm1, -1200(%rbp,%rdi,4)
	addl	$1, %eax
	cmpl	$100, %eax
	movl	%eax, -1204(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.3:                                # %for.inc20
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %for.end22
	xorl	%eax, %eax
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	movl	-1212(%rbp), %eax       # 4-byte Reload
	movl	$100, %ecx
	leaq	-1200(%rbp), %rdx
	leaq	-800(%rbp), %rsi
	leaq	-400(%rbp), %rdi
	movl	%eax, %r8d
	movl	%r8d, %r9d
	imulq	$400, %r9, %r9          # imm = 0x190
	addq	%r9, %rdi
	movl	%eax, %r8d
	movl	%r8d, %r9d
	imulq	$400, %r9, %r9          # imm = 0x190
	addq	%r9, %rsi
	movl	%eax, %r8d
	movl	%r8d, %r9d
	imulq	$400, %r9, %r9          # imm = 0x190
	addq	%r9, %rdx
	movl	%eax, -1216(%rbp)       # 4-byte Spill
	callq	_Z9histogramPiPfS0_i
	xorl	%eax, %eax
	movb	%al, %r10b
	movl	-1216(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	testb	$1, %r10b
	movl	%eax, -1212(%rbp)       # 4-byte Spill
	jne	.LBB1_5
# %bb.6:                                # %for.end37
	xorl	%eax, %eax
	addq	$1216, %rsp             # imm = 0x4C0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
