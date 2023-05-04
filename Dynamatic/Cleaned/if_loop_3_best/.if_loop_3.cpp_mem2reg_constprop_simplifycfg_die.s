	.text
	.file	"if_loop_3.cpp"
	.globl	_Z9if_loop_3PiS_iS_     # -- Begin function _Z9if_loop_3PiS_iS_
	.p2align	4, 0x90
	.type	_Z9if_loop_3PiS_iS_,@function
_Z9if_loop_3PiS_iS_:                    # @_Z9if_loop_3PiS_iS_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1000, %eax             # imm = 0x3E8
	cmpl	$0, %edx
	movl	%edx, -4(%rbp)          # 4-byte Spill
	movq	%rsi, -16(%rbp)         # 8-byte Spill
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jle	.LBB0_5
# %bb.1:                                # %for.body.lr.ph
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%ecx, %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	-40(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movl	%eax, %r8d
	movl	%r8d, %esi
	movq	-16(%rbp), %r9          # 8-byte Reload
	subl	(%r9,%rsi,4), %edx
	cmpl	$-1, %edx
	movl	%ecx, %r8d
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%edx, -56(%rbp)         # 4-byte Spill
	movl	%r8d, -60(%rbp)         # 4-byte Spill
	jle	.LBB0_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-52(%rbp), %eax         # 4-byte Reload
	cltd
	movl	-56(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	-48(%rbp), %esi         # 4-byte Reload
	movl	%esi, %edi
	movl	%edi, %r8d
	movq	-32(%rbp), %r9          # 8-byte Reload
	movl	%eax, (%r9,%r8,4)
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
	addl	$1, %ecx
	movl	-4(%rbp), %edx          # 4-byte Reload
	cmpl	%edx, %ecx
	movl	%eax, %esi
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jl	.LBB0_2
.LBB0_5:                                # %for.end
	movl	-36(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z9if_loop_3PiS_iS_, .Lfunc_end0-_Z9if_loop_3PiS_iS_
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
	subq	$1232, %rsp             # imm = 0x4D0
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	xorl	%eax, %eax
	movl	$100, -804(%rbp)
	movl	%eax, -1220(%rbp)       # 4-byte Spill
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-1220(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1224(%rbp)       # 4-byte Spill
	callq	rand
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %ecx
	addl	$5, %ecx
	movl	-1224(%rbp), %esi       # 4-byte Reload
	movl	%esi, %edi
	movl	%edi, %r8d
	movl	%ecx, -400(%rbp,%r8,4)
	addl	$6, %edx
	movl	%esi, %ecx
	movl	%ecx, %r8d
	movl	%edx, -800(%rbp,%r8,4)
	addl	$1, %esi
	cmpl	$100, %esi
	movl	%esi, -1220(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.3:                                # %for.inc13
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %for.end15
	leaq	-1216(%rbp), %rcx
	leaq	-800(%rbp), %rsi
	leaq	-400(%rbp), %rdi
	movl	-804(%rbp), %edx
	callq	_Z9if_loop_3PiS_iS_
	xorl	%edx, %edx
	movl	%eax, -1228(%rbp)       # 4-byte Spill
	movl	%edx, %eax
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
