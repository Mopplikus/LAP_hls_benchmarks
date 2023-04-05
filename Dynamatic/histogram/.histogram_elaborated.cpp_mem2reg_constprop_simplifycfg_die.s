	.text
	.file	"histogram_elaborated.cpp"
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
	subq	$1552, %rsp             # imm = 0x610
	xorl	%eax, %eax
	movl	%eax, -1540(%rbp)       # 4-byte Spill
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-1540(%rbp), %eax       # 4-byte Reload
	xorps	%xmm0, %xmm0
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%eax, %edx
	movl	%edx, %esi
	movl	%ecx, -512(%rbp,%rsi,4)
	movl	%eax, %ecx
	shll	$1, %ecx
	cvtsi2ssl	%ecx, %xmm1
	movl	%eax, %ecx
	movl	%ecx, %esi
	movss	%xmm1, -1024(%rbp,%rsi,4)
	movl	%eax, %ecx
	movl	%ecx, %esi
	movss	%xmm0, -1536(%rbp,%rsi,4)
	addl	$1, %eax
	cmpl	$128, %eax
	movl	%eax, -1540(%rbp)       # 4-byte Spill
	jb	.LBB1_1
# %bb.2:                                # %for.end
	movl	$128, %ecx
	leaq	-1536(%rbp), %rdx
	leaq	-1024(%rbp), %rsi
	leaq	-512(%rbp), %rdi
	callq	_Z9histogramPiPfS0_i
	xorl	%eax, %eax
	addq	$1552, %rsp             # imm = 0x610
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
