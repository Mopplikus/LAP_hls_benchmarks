	.text
	.file	"example.cpp"
	.globl	_Z7examplePfS_f         # -- Begin function _Z7examplePfS_f
	.p2align	4, 0x90
	.type	_Z7examplePfS_f,@function
_Z7examplePfS_f:                        # @_Z7examplePfS_f
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	xorps	%xmm1, %xmm1
	movq	%rsi, -8(%rbp)          # 8-byte Spill
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movaps	%xmm1, -48(%rbp)        # 16-byte Spill
	jmp	.LBB0_1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	-48(%rbp), %xmm0        # 16-byte Reload
	movl	-24(%rbp), %eax         # 4-byte Reload
	xorps	%xmm1, %xmm1
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movss	(%rsi,%rdx,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	movl	%eax, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rdi          # 8-byte Reload
	subss	(%rdi,%rdx,4), %xmm2
	movaps	%xmm0, %xmm3
	addss	%xmm2, %xmm3
	cmpless	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	andps	%xmm3, %xmm2
	andnps	%xmm0, %xmm1
	orps	%xmm2, %xmm1
	addl	$1, %eax
	cmpl	$100, %eax
	movl	%eax, %ecx
	movl	%ecx, -24(%rbp)         # 4-byte Spill
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movaps	%xmm1, -48(%rbp)        # 16-byte Spill
	jb	.LBB0_1
# %bb.2:                                # %for.end
	movl	-52(%rbp), %eax         # 4-byte Reload
	cvtsi2ssl	%eax, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_Z7examplePfS_f, .Lfunc_end0-_Z7examplePfS_f
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
	movl	$15, %edi
	callq	srand
.LBB1_1:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
	xorl	%eax, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
	jmp	.LBB1_2
.LBB1_2:                                # %for.body3
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-804(%rbp), %eax        # 4-byte Reload
	movl	%eax, -808(%rbp)        # 4-byte Spill
	callq	rand
	movl	$429496729, %ecx        # imm = 0x19999999
	cltd
	idivl	%ecx
	cvtsi2ssl	%eax, %xmm0
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %esi
	movss	%xmm0, -400(%rbp,%rsi,4)
	callq	rand
	movl	$429496729, %ecx        # imm = 0x19999999
	cltd
	idivl	%ecx
	cvtsi2ssl	%eax, %xmm0
	movl	-808(%rbp), %eax        # 4-byte Reload
	movl	%eax, %ecx
	movl	%ecx, %esi
	movss	%xmm0, -800(%rbp,%rsi,4)
	addl	$1, %eax
	cmpl	$100, %eax
	movl	%eax, -804(%rbp)        # 4-byte Spill
	jb	.LBB1_2
# %bb.3:                                # %for.inc15
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB1_1
	jmp	.LBB1_4
.LBB1_4:                                # %for.end17
	xorl	%eax, %eax
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jmp	.LBB1_5
.LBB1_5:                                # %for.body21
                                        # =>This Inner Loop Header: Depth=1
	movl	-812(%rbp), %eax        # 4-byte Reload
                                        # implicit-def: %xmm0
	leaq	-800(%rbp), %rcx
	leaq	-400(%rbp), %rdx
	movl	%eax, %esi
	movl	%esi, %edi
	imulq	$400, %rdi, %rdi        # imm = 0x190
	addq	%rdi, %rdx
	movl	%eax, %esi
	movl	%esi, %edi
	imulq	$400, %rdi, %rdi        # imm = 0x190
	addq	%rdi, %rcx
	movq	%rdx, %rdi
	movq	%rcx, %rsi
	movl	%eax, -816(%rbp)        # 4-byte Spill
	callq	_Z7examplePfS_f
	xorl	%eax, %eax
	movb	%al, %r8b
	movl	-816(%rbp), %eax        # 4-byte Reload
	addl	$1, %eax
	testb	$1, %r8b
	movss	%xmm0, -820(%rbp)       # 4-byte Spill
	movl	%eax, -812(%rbp)        # 4-byte Spill
	jne	.LBB1_5
# %bb.6:                                # %for.end30
	xorl	%eax, %eax
	addq	$832, %rsp              # imm = 0x340
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function

	.ident	"clang version 6.0.1 (http://llvm.org/git/clang.git 2f27999df400d17b33cdd412fdd606a88208dfcc) (http://llvm.org/git/llvm.git 5136df4d089a086b70d452160ad5451861269498)"
	.section	".note.GNU-stack","",@progbits
