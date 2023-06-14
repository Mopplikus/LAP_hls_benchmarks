	.text
	.file	"if_loop_3.cpp"
	.globl	_Z9if_loop_3PiS_i       # -- Begin function _Z9if_loop_3PiS_i
	.p2align	4, 0x90
	.type	_Z9if_loop_3PiS_i,@function
_Z9if_loop_3PiS_i:                      # @_Z9if_loop_3PiS_i
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1000, %eax             # imm = 0x3E8
	cmpl	$0, %edx
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%edx, -20(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jle	.LBB0_5
# %bb.1:                                # %for.body.lr.ph
	movl	$1000, %eax             # imm = 0x3E8
	xorl	%ecx, %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	jmp	.LBB0_2
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	movl	-28(%rbp), %ecx         # 4-byte Reload
	movl	%eax, %edx
	movl	%edx, %esi
	movq	-16(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movl	%eax, %r8d
	movl	%r8d, %esi
	movq	-8(%rbp), %r9           # 8-byte Reload
	subl	(%r9,%rsi,4), %edx
	cmpl	$-1, %edx
	movl	%ecx, %r8d
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	jle	.LBB0_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-40(%rbp), %eax         # 4-byte Reload
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-36(%rbp), %ecx         # 4-byte Reload
	addl	$1, %ecx
	movl	-20(%rbp), %edx         # 4-byte Reload
	cmpl	%edx, %ecx
	movl	%eax, %esi
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jl	.LBB0_2
.LBB0_5:                                # %for.end
	movl	-24(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z9if_loop_3PiS_i, .Lfunc_end0-_Z9if_loop_3PiS_i
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
	subq	$832, %rsp              # imm = 0x340
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	xorl	%eax, %eax
	movl	$100, -804(%rbp)
	movl	%eax, -808(%rbp)        # 4-byte Spill
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%eax, -812(%rbp)        # 4-byte Spill
	movl	%ecx, -816(%rbp)        # 4-byte Spill
	callq	rand
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-816(%rbp), %ecx        # 4-byte Reload
	cmpl	$0, %ecx
	movl	%edx, -820(%rbp)        # 4-byte Spill
	jne	.LBB1_4
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-820(%rbp), %eax        # 4-byte Reload
	addl	$2, %eax
	movl	-812(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, -400(%rbp,%rsi,4)
	movl	%ecx, %eax
	movl	%eax, %esi
	movl	-400(%rbp,%rsi,4), %eax
	addl	$-2, %eax
	movl	%ecx, %edx
	movl	%edx, %esi
	movl	%eax, -800(%rbp,%rsi,4)
	jmp	.LBB1_5
.LBB1_4:                                # %if.else
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-812(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movl	-820(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -400(%rbp,%rdx,4)
	movl	%eax, %esi
	movl	%esi, %edx
	movl	-400(%rbp,%rdx,4), %esi
	addl	$1, %esi
	movl	%eax, %edi
	movl	%edi, %edx
	movl	%esi, -800(%rbp,%rdx,4)
.LBB1_5:                                # %for.inc
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-812(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	cmpl	$100, %eax
	movl	%eax, -808(%rbp)        # 4-byte Spill
	jb	.LBB1_2
# %bb.6:                                # %for.inc33
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_7
.LBB1_7:                                # %for.end35
	leaq	-800(%rbp), %rsi
	leaq	-400(%rbp), %rdi
	movl	-804(%rbp), %edx
	callq	_Z9if_loop_3PiS_i
	xorl	%edx, %edx
	movl	%eax, -824(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
