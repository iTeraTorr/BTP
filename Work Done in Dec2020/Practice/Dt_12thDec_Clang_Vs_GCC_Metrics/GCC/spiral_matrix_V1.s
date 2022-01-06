	.file	"spiral_matrix_V1.c"
	.text
	.section	.rodata
.LC0:
	.string	"Enter row count: "
.LC1:
	.string	"%d"
.LC2:
	.string	"Enter column count: "
	.text
	.globl	takeInput
	.type	takeInput, @function
takeInput:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	takeInput, .-takeInput
	.globl	fill
	.type	fill, @function
fill:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movl	16(%rbp), %eax
	cmpl	$2, %eax
	je	.L12
	cmpl	$2, %eax
	jg	.L5
	cmpl	$1, %eax
	je	.L9
	jmp	.L21
.L5:
	cmpl	$3, %eax
	je	.L15
	cmpl	$4, %eax
	je	.L18
	jmp	.L21
.L11:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L9:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jle	.L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L11
.L10:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L3
.L14:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L12:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L13
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L14
.L13:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L3
.L17:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
.L15:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L16
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L17
.L16:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L3
.L20:
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %ecx
	movq	-40(%rbp), %rdx
	movl	%ecx, (%rdx)
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	-24(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	-32(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rcx, %rdx
	movl	%eax, (%rdx)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
.L18:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	js	.L19
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	.L20
.L19:
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-32(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L21
.L3:
.L21:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	fill, .-fill
	.section	.rodata
.LC3:
	.string	"%d  "
	.text
	.globl	printMatrix
	.type	printMatrix, @function
printMatrix:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L23
.L26:
	movl	$0, -4(%rbp)
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L24:
	movl	-4(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L25
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L23:
	movl	-8(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L26
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	printMatrix, .-printMatrix
	.section	.rodata
	.align 8
.LC5:
	.string	"Program took %f seconds to execute \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	call	clock@PLT
	movq	%rax, -40(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	takeInput
	movl	-84(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L28
.L31:
	movl	-80(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	-48(%rbp), %rdx
	movl	-64(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$3, %rcx
	leaq	(%rdx,%rcx), %rbx
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	$0, -60(%rbp)
	jmp	.L29
.L30:
	movq	-48(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$-1, (%rax)
	addl	$1, -60(%rbp)
.L29:
	movl	-80(%rbp), %eax
	cmpl	%eax, -60(%rbp)
	jl	.L30
	addl	$1, -64(%rbp)
.L28:
	movl	-84(%rbp), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L31
	movl	$1, -76(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -68(%rbp)
	jmp	.L32
.L35:
	movl	$1, -56(%rbp)
	jmp	.L33
.L34:
	movl	-80(%rbp), %esi
	movl	-84(%rbp), %eax
	leaq	-76(%rbp), %r9
	leaq	-68(%rbp), %r8
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	subq	$8, %rsp
	movl	-56(%rbp), %edi
	pushq	%rdi
	movl	%eax, %edi
	call	fill
	addq	$16, %rsp
	addl	$1, -56(%rbp)
.L33:
	cmpl	$4, -56(%rbp)
	jle	.L34
.L32:
	movl	-84(%rbp), %edx
	movl	-80(%rbp), %eax
	imull	%eax, %edx
	movl	-76(%rbp), %eax
	cmpl	%eax, %edx
	jge	.L35
	movl	-80(%rbp), %edx
	movl	-84(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	printMatrix
	movl	$0, -52(%rbp)
	jmp	.L36
.L37:
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -52(%rbp)
.L36:
	movl	-84(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L37
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	call	clock@PLT
	subq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	cvtsi2sdq	-40(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-24(%rbp), %rbx
	xorq	%fs:40, %rbx
	je	.L39
	call	__stack_chk_fail@PLT
.L39:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
