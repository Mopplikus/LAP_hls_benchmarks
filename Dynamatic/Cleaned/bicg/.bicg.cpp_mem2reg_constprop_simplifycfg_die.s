	.text
	.file	"bicg.cpp"
	.globl	_Z4bicgPA30_iPiS1_S1_S1_ # -- Begin function _Z4bicgPA30_iPiS1_S1_S1_
	.p2align	4, 0x90
	.type	_Z4bicgPA30_iPiS1_S1_S1_,@function
_Z4bicgPA30_iPiS1_S1_S1_:               # @_Z4bicgPA30_iPiS1_S1_S1_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	.cfi_offset %rbx, -24
	xorl	%eax, %eax
	movq	%rcx, -16(%rbp)         # 8-byte Spill
	movq	%rdx, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movl	-52(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%eax, %edx
	movl	%edx, %esi
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movl	(%rdi,%rsi,4), %edx
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB0_2:                                # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	-56(%rbp), %edx         # 4-byte Reload
	movl	%edx, %esi
	movl	%esi, %edi
	movl	%eax, %esi
	movl	%esi, %r8d
	imulq	$120, %rdi, %rdi
	movq	-40(%rbp), %r9          # 8-byte Reload
	addq	%rdi, %r9
	shlq	$2, %r8
	addq	%r8, %r9
	movl	(%r9), %esi
	movl	%eax, %r10d
	movl	%r10d, %edi
	movq	-32(%rbp), %r8          # 8-byte Reload
	movl	(%r8,%rdi,4), %r10d
	movl	%edx, %r11d
	movl	%r11d, %edi
	movl	%esi, %r11d
	movq	-48(%rbp), %r9          # 8-byte Reload
	imull	(%r9,%rdi,4), %r11d
	addl	%r11d, %r10d
	movl	%eax, %r11d
	movl	%r11d, %edi
	movl	%r10d, (%r8,%rdi,4)
	movl	%eax, %r10d
	movl	%r10d, %edi
	movq	-16(%rbp), %rbx         # 8-byte Reload
	imull	(%rbx,%rdi,4), %esi
	addl	%esi, %ecx
	addl	$1, %eax
	cmpl	$30, %eax
	movl	%ecx, %esi
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jb	.LBB0_2
# %bb.3:                                # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsi,%rdx,4)
	addl	$1, %eax
	cmpl	$30, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jb	.LBB0_1
# %bb.4:                                # %for.end22
	movl	-68(%rbp), %eax         # 4-byte Reload
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z4bicgPA30_iPiS1_S1_S1_, .Lfunc_end0-_Z4bicgPA30_iPiS1_S1_S1_
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
	subq	$4144, %rsp             # imm = 0x1030
	movl	$13, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #       Child Loop BB1_3 Depth 3
	xorl	%eax, %eax
	movl	%eax, -4116(%rbp)       # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_3 Depth 3
	movl	-4116(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4120(%rbp)       # 4-byte Spill
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-4120(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -3728(%rbp,%rdi,4)
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-4120(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -3856(%rbp,%rdi,4)
	callq	rand
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	-4120(%rbp), %ecx       # 4-byte Reload
	movl	%ecx, %esi
	movl	%esi, %edi
	movl	%edx, -3984(%rbp,%rdi,4)
	callq	rand
	xorl	%ecx, %ecx
	movl	$100, %edx
	movl	%edx, -4124(%rbp)       # 4-byte Spill
	cltd
	movl	-4124(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-4120(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r9d
	movl	%r9d, %edi
	movl	%edx, -4112(%rbp,%rdi,4)
	movl	%ecx, -4128(%rbp)       # 4-byte Spill
.LBB1_3:                                # %for.body26
                                        #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-4128(%rbp), %eax       # 4-byte Reload
	movl	%eax, -4132(%rbp)       # 4-byte Spill
	callq	rand
	leaq	-3600(%rbp), %rcx
	movl	$100, %edx
	movl	%edx, -4136(%rbp)       # 4-byte Spill
	cltd
	movl	-4136(%rbp), %esi       # 4-byte Reload
	idivl	%esi
	movl	-4120(%rbp), %edi       # 4-byte Reload
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	-4132(%rbp), %r8d       # 4-byte Reload
	movl	%r8d, %r10d
	movl	%r10d, %r11d
	imulq	$120, %r9, %r9
	addq	%r9, %rcx
	shlq	$2, %r11
	addq	%r11, %rcx
	movl	%edx, (%rcx)
	addl	$1, %r8d
	cmpl	$30, %r8d
	movl	%r8d, -4128(%rbp)       # 4-byte Spill
	jb	.LBB1_3
# %bb.4:                                # %for.inc35
                                        #   in Loop: Header=BB1_2 Depth=2
	movl	-4120(%rbp), %eax       # 4-byte Reload
	addl	$1, %eax
	cmpl	$30, %eax
	movl	%eax, -4116(%rbp)       # 4-byte Spill
	jb	.LBB1_2
# %bb.5:                                # %for.inc38
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_6
.LBB1_6:                                # %for.end40
	leaq	-4112(%rbp), %r8
	leaq	-3984(%rbp), %rcx
	leaq	-3856(%rbp), %rdx
	leaq	-3728(%rbp), %rsi
	leaq	-3600(%rbp), %rdi
	callq	_Z4bicgPA30_iPiS1_S1_S1_
	xorl	%r9d, %r9d
	movl	%eax, -4140(%rbp)       # 4-byte Spill
	movl	%r9d, %eax
	addq	$4144, %rsp             # imm = 0x1030
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
