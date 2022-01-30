	.file	"evil_puts.c"
	.text
	.globl	_write
	.type	_write, @function
_write:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rsi
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %eax
	movslq	%eax, %rdx
	movl	$1, %eax
#APP
# 5 "evil_puts.c" 1
	pushl %ebx
	movl %esi,%ebx
	int $0x80
	popl %ebx
# 0 "" 2
#NO_APP
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	js	.L2
	movq	-8(%rbp), %rax
	jmp	.L3
.L2:
	movl	$-1, %eax
.L3:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_write, .-_write
	.section	.rodata
	.align 8
.LC0:
	.string	"HAHA puts() has been hijacked!\n"
	.text
	.globl	evil_puts
	.type	evil_puts, @function
evil_puts:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$31, %edx
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	call	_write
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	evil_puts, .-evil_puts
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
