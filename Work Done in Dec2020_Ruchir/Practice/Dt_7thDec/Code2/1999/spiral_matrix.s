	.text
	.file	"spiral_matrix.c"
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
	.globl	fillRight               # -- Begin function fillRight
	.p2align	4, 0x90
	.type	fillRight,@function
fillRight:                              # @fillRight
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-8(%rbp), %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_6
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
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
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB1_1
.LBB1_6:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fillRight, .Lfunc_end1-fillRight
	.cfi_endproc
                                        # -- End function
	.globl	fillDown                # -- Begin function fillDown
	.p2align	4, 0x90
	.type	fillDown,@function
fillDown:                               # @fillDown
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-4(%rbp), %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
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
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB2_1
.LBB2_6:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	fillDown, .Lfunc_end2-fillDown
	.cfi_endproc
                                        # -- End function
	.globl	fillLeft                # -- Begin function fillLeft
	.p2align	4, 0x90
	.type	fillLeft,@function
fillLeft:                               # @fillLeft
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_6
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
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
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB3_1
.LBB3_6:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	fillLeft, .Lfunc_end3-fillLeft
	.cfi_endproc
                                        # -- End function
	.globl	fillUp                  # -- Begin function fillUp
	.p2align	4, 0x90
	.type	fillUp,@function
fillUp:                                 # @fillUp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	cmpl	$-1, (%rax,%rcx,4)
	sete	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_6
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
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
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB4_1
.LBB4_6:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fillUp, .Lfunc_end4-fillUp
	.cfi_endproc
                                        # -- End function
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
.LBB5_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB5_8
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$0, -24(%rbp)
.LBB5_3:                                #   Parent Loop BB5_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB5_6
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=2
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
# %bb.5:                                #   in Loop: Header=BB5_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB5_3
.LBB5_6:                                #   in Loop: Header=BB5_1 Depth=1
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -32(%rbp)         # 4-byte Spill
# %bb.7:                                #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB5_1
.LBB5_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	printMatrix, .Lfunc_end5-printMatrix
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
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
	subq	$48, %rsp
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	movl	$0, -4(%rbp)
	callq	takeInput
	movslq	-8(%rbp), %rsi
	shlq	$3, %rsi
	movq	%rsi, %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB6_8
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movslq	-12(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rcx
	movq	%rax, (%rdi,%rcx,8)
	movl	$0, -32(%rbp)
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB6_6
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movl	$-1, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_3
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_7
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_1
.LBB6_8:
	movl	$1, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB6_9:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB6_11
# %bb.10:                               #   in Loop: Header=BB6_9 Depth=1
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	fillRight
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	fillDown
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	fillLeft
	leaq	-24(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-44(%rbp), %r8
	leaq	-36(%rbp), %r9
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	fillUp
	jmp	.LBB6_9
.LBB6_11:
	leaq	-24(%rbp), %rdi
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	printMatrix
	movl	$0, -48(%rbp)
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB6_15
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=1
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	free
# %bb.14:                               #   in Loop: Header=BB6_12 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB6_12
.LBB6_15:
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
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


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
