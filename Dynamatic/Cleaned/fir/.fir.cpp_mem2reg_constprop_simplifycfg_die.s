	.text
	.file	"fir.cpp"
	.globl	_Z3firPiS_              # -- Begin function _Z3firPiS_
	.p2align	4, 0x90
	.type	_Z3firPiS_,@function
_Z3firPiS_:                             # @_Z3firPiS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)          # 8-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	-20(%rbp), %ecx         # 4-byte Reload
	movl	$999, %edx              # imm = 0x3E7
	movl	%eax, %esi
	movl	%esi, %edi
	movq	-16(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	subl	%eax, %edx
	movslq	%edx, %rdi
	movq	-8(%rbp), %r9           # 8-byte Reload
	imull	(%r9,%rdi,4), %esi
	addl	%esi, %ecx
	addl	$1, %eax
	cmpl	$1000, %eax             # imm = 0x3E8
	movl	%ecx, %edx
	movl	%ecx, -28(%rbp)         # 4-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jb	.LBB0_1
# %bb.2:                                # %for.end
	movl	-28(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z3firPiS_, .Lfunc_end0-_Z3firPiS_
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
	subq	$8016, %rsp             # imm = 0x1F50
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	xorl	%eax, %eax
	movl	%eax, -8004(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8004(%rbp), %eax       # 4-byte Reload
	movl	%eax, -8008(%rbp)       # 4-byte Spill
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-8008(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -4000(%rbp,%rdi,4)
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-8008(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -8000(%rbp,%rdi,4)
	addl	$1, %ecx
	cmpl	$1000, %ecx             # imm = 0x3E8
	movl	%ecx, -8004(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.3:                                # %for.inc10
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %for.end12
	jmp	.LBB1_5
.LBB1_5:                                # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	leaq	-8000(%rbp), %rsi
	leaq	-4000(%rbp), %rdi
	callq	_Z3firPiS_
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %dl
	movl	%eax, -8012(%rbp)       # 4-byte Spill
	jne	.LBB1_5
# %bb.6:                                # %for.end23
	xorl	%eax, %eax
	addq	$8016, %rsp             # imm = 0x1F50
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
