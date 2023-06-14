	.text
	.file	"stencil_2d.cpp"
	.globl	_Z10stencil_2dPiS_S_    # -- Begin function _Z10stencil_2dPiS_S_
	.p2align	4, 0x90
	.type	_Z10stencil_2dPiS_S_,@function
_Z10stencil_2dPiS_S_:                   # @_Z10stencil_2dPiS_S_
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
                                        #       Child Loop BB0_3 Depth 3
                                        #         Child Loop BB0_4 Depth 4
	movl	-28(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
                                        #         Child Loop BB0_4 Depth 4
	movl	-36(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
.LBB0_3:                                # %for.body6
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_4 Depth 4
	movl	-48(%rbp), %eax         # 4-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	xorl	%edx, %edx
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
.LBB0_4:                                # %for.body9
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        #       Parent Loop BB0_3 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	imull	$3, %edx, %esi
	addl	%ecx, %esi
	movl	%esi, %esi
	movl	%esi, %edi
	movq	-24(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %esi
	movl	-32(%rbp), %r9d         # 4-byte Reload
	addl	%edx, %r9d
	imull	$30, %r9d, %r9d
	movl	-40(%rbp), %r10d        # 4-byte Reload
	addl	%r10d, %r9d
	addl	%ecx, %r9d
	movl	%r9d, %r9d
	movl	%r9d, %edi
	movq	-16(%rbp), %r11         # 8-byte Reload
	imull	(%r11,%rdi,4), %esi
	addl	%esi, %eax
	addl	$1, %ecx
	cmpl	$3, %ecx
	movl	%eax, %esi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	jb	.LBB0_4
# %bb.5:                                # %for.inc19
                                        #   in Loop: Header=BB0_3 Depth=3
	movl	-56(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$3, %eax
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jb	.LBB0_3
# %bb.6:                                # %for.end21
                                        #   in Loop: Header=BB0_2 Depth=2
	movl	-32(%rbp), %eax         # 4-byte Reload
	imull	$30, %eax, %ecx
	movl	-40(%rbp), %edx         # 4-byte Reload
	addl	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movl	-64(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rdi,%rsi,4)
	addl	$1, %edx
	cmpl	$28, %edx
	movl	%edx, -36(%rbp)         # 4-byte Spill
	jb	.LBB0_2
# %bb.7:                                # %for.inc29
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax         # 4-byte Reload
	addl	$1, %eax
	cmpl	$28, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jb	.LBB0_1
# %bb.8:                                # %for.end31
	movl	-64(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z10stencil_2dPiS_S_, .Lfunc_end0-_Z10stencil_2dPiS_S_
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
	subq	$7280, %rsp             # imm = 0x1C70
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_4 Depth 2
	xorl	%eax, %eax
	movl	%eax, -7252(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-7252(%rbp), %eax       # 4-byte Reload
	movl	%eax, -7256(%rbp)       # 4-byte Spill
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-7256(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -3600(%rbp,%rdi,4)
	movl	%ecx, %edx
	movl	%edx, %edi
	movl	$0, -7200(%rbp,%rdi,4)
	addl	$1, %ecx
	cmpl	$900, %ecx              # imm = 0x384
	movl	%ecx, -7252(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, -7260(%rbp)       # 4-byte Spill
	jmp	.LBB1_4
.LBB1_4:                                # %for.body13
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-7260(%rbp), %eax       # 4-byte Reload
	movl	%eax, -7264(%rbp)       # 4-byte Spill
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-7264(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -7248(%rbp,%rdi,4)
	addl	$1, %ecx
	cmpl	$10, %ecx
	movl	%ecx, -7260(%rbp)       # 4-byte Spill
	jb	.LBB1_4
# %bb.5:                                # %for.inc23
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_6
.LBB1_6:                                # %for.end25
	leaq	-7248(%rbp), %rdx
	leaq	-7200(%rbp), %rsi
	leaq	-3600(%rbp), %rdi
	callq	_Z10stencil_2dPiS_S_
	xorl	%ecx, %ecx
	movl	%eax, -7268(%rbp)       # 4-byte Spill
	movl	%ecx, %eax
	addq	$7280, %rsp             # imm = 0x1C70
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
