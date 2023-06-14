	.text
	.file	"if_loop_2.cpp"
	.globl	_Z9if_loop_2Pii         # -- Begin function _Z9if_loop_2Pii
	.p2align	4, 0x90
	.type	_Z9if_loop_2Pii,@function
_Z9if_loop_2Pii:                        # @_Z9if_loop_2Pii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	cmpl	$0, %esi
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movl	%esi, -12(%rbp)         # 4-byte Spill
	movl	%eax, -16(%rbp)         # 4-byte Spill
	jle	.LBB0_3
# %bb.1:                                # %for.body.lr.ph
	xorl	%eax, %eax
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	xorl	%edx, %edx
	movl	%eax, %esi
	movl	%esi, %edi
	movq	-8(%rbp), %r8           # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	cmpl	$10, %esi
	cmovgl	%esi, %edx
	addl	%edx, %ecx
	addl	$1, %eax
	movl	-12(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, %eax
	movl	%ecx, %esi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%esi, -20(%rbp)         # 4-byte Spill
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	jl	.LBB0_2
.LBB0_3:                                # %for.end
	movl	-16(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z9if_loop_2Pii, .Lfunc_end0-_Z9if_loop_2Pii
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
	subq	$416, %rsp              # imm = 0x1A0
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	xorl	%eax, %eax
	movl	$100, -404(%rbp)
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-408(%rbp), %eax        # 4-byte Reload
	movl	%eax, -412(%rbp)        # 4-byte Spill
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	addl	$11, %edx
	movl	-412(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -400(%rbp,%rdi,4)
	addl	$1, %ecx
	cmpl	$100, %ecx
	movl	%ecx, -408(%rbp)        # 4-byte Spill
	jb	.LBB1_2
# %bb.3:                                # %for.inc8
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %for.end10
	leaq	-400(%rbp), %rdi
	movl	-404(%rbp), %esi
	callq	_Z9if_loop_2Pii
	xorl	%esi, %esi
	movl	%eax, -416(%rbp)        # 4-byte Spill
	movl	%esi, %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
