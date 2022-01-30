	.text
	.file	"spiral_matrix_V1.c"
	.globl	takeInput               # -- Begin function takeInput
	.p2align	4, 0x90
	.type	takeInput,@function
takeInput:                              # @takeInput
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	movq	-8(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	movabsq	$.L.str.2, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	__isoc99_scanf
	movl	%eax, -32(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	takeInput, .Lfunc_end0-takeInput
	.cfi_endproc
                                        # -- End function
	.globl	fill                    # -- Begin function fill
	.p2align	4, 0x90
	.type	fill,@function
fill:                                   # @fill
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	16(%rbp), %esi
	addl	$-1, %esi
	movl	%esi, %ecx
	subl	$3, %esi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%esi, -60(%rbp)         # 4-byte Spill
	ja	.LBB1_29
# %bb.30:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:
	jmp	.LBB1_2
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-8(%rbp), %eax
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -61(%rbp)          # 1-byte Spill
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movl	%ecx, (%rax,%rsi,4)
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_2
.LBB1_7:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_29
.LBB1_8:
	jmp	.LBB1_9
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-4(%rbp), %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jge	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -62(%rbp)          # 1-byte Spill
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=1
	movb	-62(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_12
	jmp	.LBB1_14
.LBB1_12:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movl	%ecx, (%rax,%rsi,4)
# %bb.13:                               #   in Loop: Header=BB1_9 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_9
.LBB1_14:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_29
.LBB1_15:
	jmp	.LBB1_16
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -63(%rbp)          # 1-byte Spill
	jl	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -63(%rbp)          # 1-byte Spill
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=1
	movb	-63(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_19
	jmp	.LBB1_21
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movl	%ecx, (%rax,%rsi,4)
# %bb.20:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_16
.LBB1_21:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_29
.LBB1_22:
	jmp	.LBB1_23
.LBB1_23:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -64(%rbp)          # 1-byte Spill
	jl	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_23 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -64(%rbp)          # 1-byte Spill
.LBB1_25:                               #   in Loop: Header=BB1_23 Depth=1
	movb	-64(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_26
	jmp	.LBB1_28
.LBB1_26:                               #   in Loop: Header=BB1_23 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	(%rax,%rsi,8), %rax
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movl	%ecx, (%rax,%rsi,4)
# %bb.27:                               #   in Loop: Header=BB1_23 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_23
.LBB1_28:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.LBB1_29:
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fill, .Lfunc_end1-fill
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_8
	.quad	.LBB1_15
	.quad	.LBB1_22
                                        # -- End function
	.text
	.globl	printMatrix             # -- Begin function printMatrix
	.p2align	4, 0x90
	.type	printMatrix,@function
printMatrix:                            # @printMatrix
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_8
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$0, -24(%rbp)
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movabsq	$.L.str.3, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %esi
	movb	$0, %al
	callq	printf
	movl	%eax, -28(%rbp)         # 4-byte Spill
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -32(%rbp)         # 4-byte Spill
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_1
.LBB2_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	printMatrix, .Lfunc_end2-printMatrix
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI3_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	callq	clock
	leaq	-20(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movq	%rax, -16(%rbp)
	callq	takeInput
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movslq	-24(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	-32(%rbp), %rdi
	movslq	-36(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
	movl	$0, -40(%rbp)
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=2
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movl	$-1, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB3_3
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB3_1
.LBB3_8:
	movl	$1, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_11 Depth 2
	movl	-44(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB3_15
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	movl	$1, -56(%rbp)
.LBB3_11:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$4, -56(%rbp)
	jg	.LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=2
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-52(%rbp), %r8
	leaq	-44(%rbp), %r9
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	-56(%rbp), %eax
	movl	%eax, (%rsp)
	callq	fill
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB3_11
.LBB3_14:                               #   in Loop: Header=BB3_9 Depth=1
	jmp	.LBB3_9
.LBB3_15:
	leaq	-32(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	printMatrix
	movl	$0, -60(%rbp)
.LBB3_16:                               # =>This Inner Loop Header: Depth=1
	movl	-60(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB3_19
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=1
	movq	-32(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	free
# %bb.18:                               #   in Loop: Header=BB3_16 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_16
.LBB3_19:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	callq	clock
	movabsq	$.L.str.5, %rdi
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	subq	-16(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Enter row count: "
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Enter column count: "
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d  "
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Program took %f seconds to execute \n"
	.size	.L.str.5, 37


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
