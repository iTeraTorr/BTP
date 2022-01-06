	.text
	.file	"spiral_matrix.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	movl	%eax, -4(%rbp)          # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z9takeInputPiS_        # -- Begin function _Z9takeInputPiS_
	.p2align	4, 0x90
	.type	_Z9takeInputPiS_,@function
_Z9takeInputPiS_:                       # @_Z9takeInputPiS_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movabsq	$_ZSt4cout, %rax
	movabsq	$.L.str, %rcx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabsq	$_ZSt3cin, %rdi
	movq	-8(%rbp), %rsi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	_ZNSirsERi
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str.1, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movabsq	$_ZSt3cin, %rdi
	movq	-16(%rbp), %rsi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	_ZNSirsERi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_Z9takeInputPiS_, .Lfunc_end1-_Z9takeInputPiS_
	.cfi_endproc
                                        # -- End function
	.globl	_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_ # -- Begin function _Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.p2align	4, 0x90
	.type	_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_,@function
_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_: # @_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-8(%rbp), %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	cmpl	$-1, (%rax)
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
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
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB2_1
.LBB2_6:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_, .Lfunc_end2-_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm,comdat
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm # -- Begin function _ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm,@function
_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm:    # @_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	imulq	$24, -16(%rbp), %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm, .Lfunc_end3-_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.weak	_ZNSt6vectorIiSaIiEEixEm # -- Begin function _ZNSt6vectorIiSaIiEEixEm
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEixEm,@function
_ZNSt6vectorIiSaIiEEixEm:               # @_ZNSt6vectorIiSaIiEEixEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZNSt6vectorIiSaIiEEixEm, .Lfunc_end4-_ZNSt6vectorIiSaIiEEixEm
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_ # -- Begin function _Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.p2align	4, 0x90
	.type	_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_,@function
_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_: # @_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	-4(%rbp), %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jge	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	cmpl	$-1, (%rax)
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_4
	jmp	.LBB5_6
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
# %bb.5:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB5_1
.LBB5_6:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_, .Lfunc_end5-_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_endproc
                                        # -- End function
	.globl	_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_ # -- Begin function _Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.p2align	4, 0x90
	.type	_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_,@function
_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_: # @_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB6_3
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	cmpl	$-1, (%rax)
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_6
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
# %bb.5:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB6_1
.LBB6_6:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_, .Lfunc_end6-_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_endproc
                                        # -- End function
	.globl	_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_ # -- Begin function _Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.p2align	4, 0x90
	.type	_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_,@function
_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_: # @_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	cmpl	$0, (%rdx)
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	cmpl	$-1, (%rax)
	sete	%cl
	movb	%cl, -41(%rbp)          # 1-byte Spill
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_4
	jmp	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movslq	(%rax), %rsi
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movq	-32(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
# %bb.5:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB7_1
.LBB7_6:
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_, .Lfunc_end7-_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
	.cfi_endproc
                                        # -- End function
	.globl	_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_ # -- Begin function _Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_
	.p2align	4, 0x90
	.type	_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_,@function
_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_: # @_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB8_8
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movl	$0, -32(%rbp)
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB8_6
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEixEm
	movslq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt6vectorIiSaIiEEixEm
	movabsq	$_ZSt4cout, %rdi
	movl	(%rax), %esi
	callq	_ZNSolsEi
	movabsq	$.L.str.2, %rsi
	movq	%rax, %rdi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, -40(%rbp)         # 8-byte Spill
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_6:                                #   in Loop: Header=BB8_1 Depth=1
	movabsq	$_ZSt4cout, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	movq	%rax, -48(%rbp)         # 8-byte Spill
# %bb.7:                                #   in Loop: Header=BB8_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB8_1
.LBB8_8:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_, .Lfunc_end8-_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$0, -4(%rbp)
	leaq	-8(%rbp), %rdi
	leaq	-12(%rbp), %rsi
	callq	_Z9takeInputPiS_
	movslq	-8(%rbp), %rsi
	movslq	-12(%rbp), %rdi
	movl	$-1, -68(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -120(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	_ZNSaIiEC2Ev
.Ltmp0:
	leaq	-64(%rbp), %rdi
	leaq	-68(%rbp), %rdx
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_
.Ltmp1:
	jmp	.LBB9_1
.LBB9_1:
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	_ZNSaISt6vectorIiSaIiEEEC2Ev
.Ltmp3:
	leaq	-40(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
.Ltmp4:
	jmp	.LBB9_2
.LBB9_2:
	leaq	-88(%rbp), %rdi
	callq	_ZNSaISt6vectorIiSaIiEEED2Ev
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movl	$1, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	movl	-92(%rbp), %eax
	movl	-8(%rbp), %ecx
	imull	-12(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	.LBB9_13
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
.Ltmp8:
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-92(%rbp), %r9
	callq	_Z9fillRightiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
.Ltmp9:
	jmp	.LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
.Ltmp10:
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-92(%rbp), %r9
	callq	_Z8fillDowniiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
.Ltmp11:
	jmp	.LBB9_6
.LBB9_6:                                #   in Loop: Header=BB9_3 Depth=1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
.Ltmp12:
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-92(%rbp), %r9
	callq	_Z8fillLeftiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
.Ltmp13:
	jmp	.LBB9_7
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
.Ltmp14:
	leaq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	leaq	-100(%rbp), %r8
	leaq	-92(%rbp), %r9
	callq	_Z6fillUpiiRSt6vectorIS_IiSaIiEESaIS1_EERiS5_S5_
.Ltmp15:
	jmp	.LBB9_8
.LBB9_8:                                #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_3
.LBB9_9:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	jmp	.LBB9_11
.LBB9_10:
.Ltmp5:
	leaq	-88(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	callq	_ZNSaISt6vectorIiSaIiEEED2Ev
	leaq	-64(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
.LBB9_11:
	leaq	-72(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	jmp	.LBB9_15
.LBB9_12:
.Ltmp16:
	leaq	-40(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -80(%rbp)
	movl	%ecx, -84(%rbp)
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	jmp	.LBB9_15
.LBB9_13:
.Ltmp6:
	leaq	-40(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdx
	callq	_Z11printMatrixRSt6vectorIS_IiSaIiEESaIS1_EERiS5_
.Ltmp7:
	jmp	.LBB9_14
.LBB9_14:
	leaq	-40(%rbp), %rdi
	movl	$0, -4(%rbp)
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.LBB9_15:
	movq	-80(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table9:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\303\200"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.long	.Ltmp8-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp7-.Ltmp8           #   Call between .Ltmp8 and .Ltmp7
	.long	.Ltmp16-.Lfunc_begin0   #     jumps to .Ltmp16
	.byte	0                       #   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Lfunc_end9-.Ltmp7      #   Call between .Ltmp7 and .Lfunc_end9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaIiEC2Ev,"axG",@progbits,_ZNSaIiEC2Ev,comdat
	.weak	_ZNSaIiEC2Ev            # -- Begin function _ZNSaIiEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiEC2Ev,@function
_ZNSaIiEC2Ev:                           # @_ZNSaIiEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZNSaIiEC2Ev, .Lfunc_end10-_ZNSaIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2EmRKiRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_ # -- Begin function _ZNSt6vectorIiSaIiEEC2EmRKiRKS0_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_,@function
_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_:       # @_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
.Ltmp17:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi
.Ltmp18:
	jmp	.LBB11_1
.LBB11_1:
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB11_2:
.Ltmp19:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end11:
	.size	_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_, .Lfunc_end11-_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table11:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp17-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp17
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp17-.Lfunc_begin1   # >> Call Site 2 <<
	.long	.Ltmp18-.Ltmp17         #   Call between .Ltmp17 and .Ltmp18
	.long	.Ltmp19-.Lfunc_begin1   #     jumps to .Ltmp19
	.byte	0                       #   On action: cleanup
	.long	.Ltmp18-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Lfunc_end11-.Ltmp18    #   Call between .Ltmp18 and .Lfunc_end11
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaISt6vectorIiSaIiEEEC2Ev,"axG",@progbits,_ZNSaISt6vectorIiSaIiEEEC2Ev,comdat
	.weak	_ZNSaISt6vectorIiSaIiEEEC2Ev # -- Begin function _ZNSaISt6vectorIiSaIiEEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt6vectorIiSaIiEEEC2Ev,@function
_ZNSaISt6vectorIiSaIiEEEC2Ev:           # @_ZNSaISt6vectorIiSaIiEEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_ZNSaISt6vectorIiSaIiEEEC2Ev, .Lfunc_end12-_ZNSaISt6vectorIiSaIiEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_,comdat
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_ # -- Begin function _ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_,@function
_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_: # @_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
.Ltmp20:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_
.Ltmp21:
	jmp	.LBB13_1
.LBB13_1:
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB13_2:
.Ltmp22:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end13:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_, .Lfunc_end13-_ZNSt6vectorIS_IiSaIiEESaIS1_EEC2EmRKS1_RKS2_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table13:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin2-.Lfunc_begin2 # >> Call Site 1 <<
	.long	.Ltmp20-.Lfunc_begin2   #   Call between .Lfunc_begin2 and .Ltmp20
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp20-.Lfunc_begin2   # >> Call Site 2 <<
	.long	.Ltmp21-.Ltmp20         #   Call between .Ltmp20 and .Ltmp21
	.long	.Ltmp22-.Lfunc_begin2   #     jumps to .Ltmp22
	.byte	0                       #   On action: cleanup
	.long	.Ltmp21-.Lfunc_begin2   # >> Call Site 3 <<
	.long	.Lfunc_end13-.Ltmp21    #   Call between .Ltmp21 and .Lfunc_end13
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaISt6vectorIiSaIiEEED2Ev,"axG",@progbits,_ZNSaISt6vectorIiSaIiEEED2Ev,comdat
	.weak	_ZNSaISt6vectorIiSaIiEEED2Ev # -- Begin function _ZNSaISt6vectorIiSaIiEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt6vectorIiSaIiEEED2Ev,@function
_ZNSaISt6vectorIiSaIiEEED2Ev:           # @_ZNSaISt6vectorIiSaIiEEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	_ZNSaISt6vectorIiSaIiEEED2Ev, .Lfunc_end14-_ZNSaISt6vectorIiSaIiEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED2Ev,comdat
	.weak	_ZNSt6vectorIiSaIiEED2Ev # -- Begin function _ZNSt6vectorIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEED2Ev,@function
_ZNSt6vectorIiSaIiEED2Ev:               # @_ZNSt6vectorIiSaIiEED2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
.Ltmp23:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
.Ltmp24:
	jmp	.LBB15_1
.LBB15_1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB15_2:
.Ltmp25:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end15:
	.size	_ZNSt6vectorIiSaIiEED2Ev, .Lfunc_end15-_ZNSt6vectorIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table15:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp23-.Lfunc_begin3   # >> Call Site 1 <<
	.long	.Ltmp24-.Ltmp23         #   Call between .Ltmp23 and .Ltmp24
	.long	.Ltmp25-.Lfunc_begin3   #     jumps to .Ltmp25
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaIiED2Ev,"axG",@progbits,_ZNSaIiED2Ev,comdat
	.weak	_ZNSaIiED2Ev            # -- Begin function _ZNSaIiED2Ev
	.p2align	4, 0x90
	.type	_ZNSaIiED2Ev,@function
_ZNSaIiED2Ev:                           # @_ZNSaIiED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZN9__gnu_cxx13new_allocatorIiED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	_ZNSaIiED2Ev, .Lfunc_end16-_ZNSaIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,comdat
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev # -- Begin function _ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev,@function
_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev:    # @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
.Ltmp26:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
.Ltmp27:
	jmp	.LBB17_1
.LBB17_1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB17_2:
.Ltmp28:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end17:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev, .Lfunc_end17-_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table17:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp26-.Lfunc_begin4   # >> Call Site 1 <<
	.long	.Ltmp27-.Ltmp26         #   Call between .Ltmp26 and .Ltmp27
	.long	.Ltmp28-.Lfunc_begin4   #     jumps to .Ltmp28
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiEC2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2Ev, .Lfunc_end18-_ZN9__gnu_cxx13new_allocatorIiEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorIiED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiED2Ev,@function
_ZN9__gnu_cxx13new_allocatorIiED2Ev:    # @_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end19:
	.size	_ZN9__gnu_cxx13new_allocatorIiED2Ev, .Lfunc_end19-_ZN9__gnu_cxx13new_allocatorIiED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ # -- Begin function _ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,@function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:   # @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	movq	-16(%rbp), %rsi
.Ltmp29:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
.Ltmp30:
	jmp	.LBB20_1
.LBB20_1:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB20_2:
.Ltmp31:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end20:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .Lfunc_end20-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table20:
.Lexception5:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp29-.Lfunc_begin5   # >> Call Site 1 <<
	.long	.Ltmp30-.Ltmp29         #   Call between .Ltmp29 and .Ltmp30
	.long	.Ltmp31-.Lfunc_begin5   #     jumps to .Ltmp31
	.byte	0                       #   On action: cleanup
	.long	.Ltmp30-.Lfunc_begin5   # >> Call Site 2 <<
	.long	.Lfunc_end20-.Ltmp30    #   Call between .Ltmp30 and .Lfunc_end20
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi,comdat
	.weak	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi # -- Begin function _ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi,@function
_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi: # @_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi, .Lfunc_end21-_ZNSt6vectorIiSaIiEE18_M_fill_initializeEmRKi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev,@function
_ZNSt12_Vector_baseIiSaIiEED2Ev:        # @_ZNSt12_Vector_baseIiSaIiEED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	subq	%rax, %rcx
	sarq	$2, %rcx
.Ltmp32:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
.Ltmp33:
	jmp	.LBB22_1
.LBB22_1:
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB22_2:
.Ltmp34:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end22:
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .Lfunc_end22-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table22:
.Lexception6:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp32-.Lfunc_begin6   # >> Call Site 1 <<
	.long	.Ltmp33-.Ltmp32         #   Call between .Ltmp32 and .Ltmp33
	.long	.Ltmp34-.Lfunc_begin6   #     jumps to .Ltmp34
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSaIiEC2ERKS_
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .Lfunc_end23-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm # -- Begin function _ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,@function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm: # @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsi)
	movq	(%rsi), %rax
	movq	-16(%rbp), %rdi
	shlq	$2, %rdi
	addq	%rdi, %rax
	movq	%rax, 16(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .Lfunc_end24-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .Lfunc_end25-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_ # -- Begin function _ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_,@function
_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_: # @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end26:
	.size	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_, .Lfunc_end26-_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,@function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm: # @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	je	.LBB27_2
# %bb.1:
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB27_3
.LBB27_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB27_3
.LBB27_3:
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .Lfunc_end27-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m # -- Begin function _ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m,@function
_ZNSt16allocator_traitsISaIiEE8allocateERS0_m: # @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, .Lfunc_end28-_ZNSt16allocator_traitsISaIiEE8allocateERS0_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jbe	.LBB29_2
# %bb.1:
	callq	_ZSt17__throw_bad_allocv
.LBB29_2:
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	_Znwm
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv, .Lfunc_end29-_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$4611686018427387903, %rax # imm = 0x3FFFFFFFFFFFFFFF
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end30:
	.size	_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv, .Lfunc_end30-_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E # -- Begin function _ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E
	.p2align	4, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E, .Lfunc_end31-_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end32:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end32-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_ # -- Begin function _ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_: # @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_, .Lfunc_end33-_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_ # -- Begin function _ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt6fill_nIPimiET_S1_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_, .Lfunc_end34-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt6fill_nIPimiET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPimiET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPimiET_S1_T0_RKT1_ # -- Begin function _ZSt6fill_nIPimiET_S1_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt6fill_nIPimiET_S1_T0_RKT1_,@function
_ZSt6fill_nIPimiET_S1_T0_RKT1_:         # @_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	_ZSt6fill_nIPimiET_S1_T0_RKT1_, .Lfunc_end35-_ZSt6fill_nIPimiET_S1_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,"axG",@progbits,_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,comdat
	.weak	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ # -- Begin function _ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.p2align	4, 0x90
	.type	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_,@function
_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_: # @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	(%rdx), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	jbe	.LBB36_4
# %bb.2:                                #   in Loop: Header=BB36_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
# %bb.3:                                #   in Loop: Header=BB36_1 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB36_1
.LBB36_4:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end36:
	.size	_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_, .Lfunc_end36-_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_ # -- Begin function _ZSt12__niter_baseIPiET_S1_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPiET_S1_,@function
_ZSt12__niter_baseIPiET_S1_:            # @_ZSt12__niter_baseIPiET_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end37:
	.size	_ZSt12__niter_baseIPiET_S1_, .Lfunc_end37-_ZSt12__niter_baseIPiET_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim # -- Begin function _ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,@function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim: # @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	je	.LBB38_2
# %bb.1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
.LBB38_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .Lfunc_end38-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end39:
	.size	__clang_call_terminate, .Lfunc_end39-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim # -- Begin function _ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim,@function
_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim: # @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, .Lfunc_end40-_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim # -- Begin function _ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim,@function
_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim: # @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim, .Lfunc_end41-_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E # -- Begin function _ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E,@function
_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E:       # @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPiEvT_S1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, .Lfunc_end42-_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPiEvT_S1_ # -- Begin function _ZSt8_DestroyIPiEvT_S1_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPiEvT_S1_,@function
_ZSt8_DestroyIPiEvT_S1_:                # @_ZSt8_DestroyIPiEvT_S1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_ZSt8_DestroyIPiEvT_S1_, .Lfunc_end43-_ZSt8_DestroyIPiEvT_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end44:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .Lfunc_end44-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end45:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev, .Lfunc_end45-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev: # @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end46:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev, .Lfunc_end46-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_ # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rsi
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_
	movq	-16(%rbp), %rsi
.Ltmp35:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm
.Ltmp36:
	jmp	.LBB47_1
.LBB47_1:
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB47_2:
.Ltmp37:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end47:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_, .Lfunc_end47-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EEC2EmRKS3_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table47:
.Lexception7:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\234"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	26                      # Call site table length
	.long	.Ltmp35-.Lfunc_begin7   # >> Call Site 1 <<
	.long	.Ltmp36-.Ltmp35         #   Call between .Ltmp35 and .Ltmp36
	.long	.Ltmp37-.Lfunc_begin7   #     jumps to .Ltmp37
	.byte	0                       #   On action: cleanup
	.long	.Ltmp36-.Lfunc_begin7   # >> Call Site 2 <<
	.long	.Lfunc_end47-.Ltmp36    #   Call between .Ltmp36 and .Lfunc_end47
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_,"axG",@progbits,_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_,comdat
	.weak	_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_ # -- Begin function _ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_,@function
_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_: # @_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	movq	-40(%rbp), %rcx         # 8-byte Reload
	movq	%rax, 8(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_, .Lfunc_end48-_ZNSt6vectorIS_IiSaIiEESaIS1_EE18_M_fill_initializeEmRKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	subq	%rax, %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rdx # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rdx, %rcx
.Ltmp38:
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
.Ltmp39:
	jmp	.LBB49_1
.LBB49_1:
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB49_2:
.Ltmp40:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
# %bb.3:
	movq	-16(%rbp), %rdi
	callq	__clang_call_terminate
.Lfunc_end49:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev, .Lfunc_end49-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table49:
.Lexception8:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp38-.Lfunc_begin8   # >> Call Site 1 <<
	.long	.Ltmp39-.Ltmp38         #   Call between .Ltmp38 and .Ltmp39
	.long	.Ltmp40-.Lfunc_begin8   #     jumps to .Ltmp40
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_ # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSaISt6vectorIiSaIiEEEC2ERKS2_
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_, .Lfunc_end50-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implC2ERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	(%rsi), %rax
	movq	%rax, 8(%rsi)
	movq	(%rsi), %rax
	imulq	$24, -16(%rbp), %rdi
	addq	%rdi, %rax
	movq	%rax, 16(%rsi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm, .Lfunc_end51-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_M_create_storageEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSaISt6vectorIiSaIiEEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev, .Lfunc_end52-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaISt6vectorIiSaIiEEEC2ERKS2_,"axG",@progbits,_ZNSaISt6vectorIiSaIiEEEC2ERKS2_,comdat
	.weak	_ZNSaISt6vectorIiSaIiEEEC2ERKS2_ # -- Begin function _ZNSaISt6vectorIiSaIiEEEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZNSaISt6vectorIiSaIiEEEC2ERKS2_,@function
_ZNSaISt6vectorIiSaIiEEEC2ERKS2_:       # @_ZNSaISt6vectorIiSaIiEEEC2ERKS2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	_ZNSaISt6vectorIiSaIiEEEC2ERKS2_, .Lfunc_end53-_ZNSaISt6vectorIiSaIiEEEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_: # @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	popq	%rbp
	retq
.Lfunc_end54:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_, .Lfunc_end54-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEEC2ERKS4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpq	$0, -16(%rbp)
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	je	.LBB55_2
# %bb.1:
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB55_3
.LBB55_2:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	jmp	.LBB55_3
.LBB55_3:
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm, .Lfunc_end55-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE11_M_allocateEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m # -- Begin function _ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m,@function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m: # @_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m, .Lfunc_end56-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE8allocateERS3_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	callq	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	movq	-32(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jbe	.LBB57_2
# %bb.1:
	callq	_ZSt17__throw_bad_allocv
.LBB57_2:
	imulq	$24, -16(%rbp), %rdi
	callq	_Znwm
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv, .Lfunc_end57-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$768614336404564650, %rax # imm = 0xAAAAAAAAAAAAAAA
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end58:
	.size	_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv, .Lfunc_end58-_ZNK9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E # -- Begin function _ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.p2align	4, 0x90
	.type	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E,@function
_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E: # @_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E, .Lfunc_end59-_ZSt24__uninitialized_fill_n_aIPSt6vectorIiSaIiEEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end60:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv, .Lfunc_end60-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_ # -- Begin function _ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_,@function
_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_: # @_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_, .Lfunc_end61-_ZSt20uninitialized_fill_nIPSt6vectorIiSaIiEEmS2_ET_S4_T0_RKT1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_ # -- Begin function _ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
	.p2align	4, 0x90
	.type	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_,@function
_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_: # @_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	jbe	.LBB62_8
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	movq	-24(%rbp), %rsi
.Ltmp41:
	movq	%rax, %rdi
	callq	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
.Ltmp42:
	jmp	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB62_1
.LBB62_5:
.Ltmp43:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
# %bb.6:
	movq	-40(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
.Ltmp44:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
.Ltmp45:
	jmp	.LBB62_7
.LBB62_7:
.Ltmp46:
	callq	__cxa_rethrow
.Ltmp47:
	jmp	.LBB62_13
.LBB62_8:
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.LBB62_9:
.Ltmp48:
	movl	%edx, %ecx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
.Ltmp49:
	callq	__cxa_end_catch
.Ltmp50:
	jmp	.LBB62_10
.LBB62_10:
	jmp	.LBB62_11
.LBB62_11:
	movq	-40(%rbp), %rdi
	callq	_Unwind_Resume
.LBB62_12:
.Ltmp51:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.LBB62_13:
.Lfunc_end62:
	.size	_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_, .Lfunc_end62-_ZNSt22__uninitialized_fill_nILb0EE15__uninit_fill_nIPSt6vectorIiSaIiEEmS4_EET_S6_T0_RKT1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table62:
.Lexception9:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	73                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	65                      # Call site table length
	.long	.Ltmp41-.Lfunc_begin9   # >> Call Site 1 <<
	.long	.Ltmp42-.Ltmp41         #   Call between .Ltmp41 and .Ltmp42
	.long	.Ltmp43-.Lfunc_begin9   #     jumps to .Ltmp43
	.byte	1                       #   On action: 1
	.long	.Ltmp42-.Lfunc_begin9   # >> Call Site 2 <<
	.long	.Ltmp44-.Ltmp42         #   Call between .Ltmp42 and .Ltmp44
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp44-.Lfunc_begin9   # >> Call Site 3 <<
	.long	.Ltmp47-.Ltmp44         #   Call between .Ltmp44 and .Ltmp47
	.long	.Ltmp48-.Lfunc_begin9   #     jumps to .Ltmp48
	.byte	0                       #   On action: cleanup
	.long	.Ltmp49-.Lfunc_begin9   # >> Call Site 4 <<
	.long	.Ltmp50-.Ltmp49         #   Call between .Ltmp49 and .Ltmp50
	.long	.Ltmp51-.Lfunc_begin9   #     jumps to .Ltmp51
	.byte	1                       #   On action: 1
	.long	.Ltmp50-.Lfunc_begin9   # >> Call Site 5 <<
	.long	.Lfunc_end62-.Ltmp50    #   Call between .Ltmp50 and .Lfunc_end62
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_ # -- Begin function _ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_,@function
_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_: # @_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	callq	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	_ZNSt6vectorIiSaIiEEC2ERKS1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_, .Lfunc_end63-_ZSt10_ConstructISt6vectorIiSaIiEEJRKS2_EEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_,"axG",@progbits,_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_,comdat
	.weak	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_ # -- Begin function _ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	.p2align	4, 0x90
	.type	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_,@function
_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_: # @_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end64:
	.size	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_, .Lfunc_end64-_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_ # -- Begin function _ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,@function
_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_: # @_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_, .Lfunc_end65-_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE # -- Begin function _ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE,@function
_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE: # @_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end66:
	.size	_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE, .Lfunc_end66-_ZSt7forwardIRKSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS5_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC2ERKS1_,comdat
	.weak	_ZNSt6vectorIiSaIiEEC2ERKS1_ # -- Begin function _ZNSt6vectorIiSaIiEEC2ERKS1_
	.p2align	4, 0x90
	.type	_ZNSt6vectorIiSaIiEEC2ERKS1_,@function
_ZNSt6vectorIiSaIiEEC2ERKS1_:           # @_ZNSt6vectorIiSaIiEEC2ERKS1_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception10
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	-16(%rbp), %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	leaq	-24(%rbp), %rsi
	movq	%rsi, %rdi
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_
.Ltmp52:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	callq	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.Ltmp53:
	jmp	.LBB67_1
.LBB67_1:
	leaq	-24(%rbp), %rdi
	callq	_ZNSaIiED2Ev
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorIiSaIiEE5beginEv
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	_ZNKSt6vectorIiSaIiEE3endEv
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	movq	%rax, %rdi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	callq	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
.Ltmp55:
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	%rax, %rcx
	callq	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
.Ltmp56:
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB67_2
.LBB67_2:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, 8(%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
.LBB67_3:
.Ltmp54:
	leaq	-24(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	callq	_ZNSaIiED2Ev
	jmp	.LBB67_5
.LBB67_4:
.Ltmp57:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rdi
	callq	_ZNSt12_Vector_baseIiSaIiEED2Ev
.LBB67_5:
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.Lfunc_end67:
	.size	_ZNSt6vectorIiSaIiEEC2ERKS1_, .Lfunc_end67-_ZNSt6vectorIiSaIiEEC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table67:
.Lexception10:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\266\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin10-.Lfunc_begin10 # >> Call Site 1 <<
	.long	.Ltmp52-.Lfunc_begin10  #   Call between .Lfunc_begin10 and .Ltmp52
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp52-.Lfunc_begin10  # >> Call Site 2 <<
	.long	.Ltmp53-.Ltmp52         #   Call between .Ltmp52 and .Ltmp53
	.long	.Ltmp54-.Lfunc_begin10  #     jumps to .Ltmp54
	.byte	0                       #   On action: cleanup
	.long	.Ltmp55-.Lfunc_begin10  # >> Call Site 3 <<
	.long	.Ltmp56-.Ltmp55         #   Call between .Ltmp55 and .Ltmp56
	.long	.Ltmp57-.Lfunc_begin10  #     jumps to .Ltmp57
	.byte	0                       #   On action: cleanup
	.long	.Ltmp56-.Lfunc_begin10  # >> Call Site 4 <<
	.long	.Lfunc_end67-.Ltmp56    #   Call between .Ltmp56 and .Lfunc_end67
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv # -- Begin function _ZNKSt6vectorIiSaIiEE4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv,@function
_ZNKSt6vectorIiSaIiEE4sizeEv:           # @_ZNKSt6vectorIiSaIiEE4sizeEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rax
	movq	(%rdi), %rdi
	subq	%rdi, %rax
	sarq	$2, %rax
	popq	%rbp
	retq
.Lfunc_end68:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .Lfunc_end68-_ZNKSt6vectorIiSaIiEE4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_ # -- Begin function _ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_,@function
_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_: # @_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end69:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_, .Lfunc_end69-_ZN9__gnu_cxx14__alloc_traitsISaIiEE17_S_select_on_copyERKS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv # -- Begin function _ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.p2align	4, 0x90
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,@function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv: # @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end70:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .Lfunc_end70-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E # -- Begin function _ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.p2align	4, 0x90
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,@function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E: # @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, .Lfunc_end71-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE5beginEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE5beginEv # -- Begin function _ZNKSt6vectorIiSaIiEE5beginEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE5beginEv,@function
_ZNKSt6vectorIiSaIiEE5beginEv:          # @_ZNKSt6vectorIiSaIiEE5beginEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-24(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	_ZNKSt6vectorIiSaIiEE5beginEv, .Lfunc_end72-_ZNKSt6vectorIiSaIiEE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE3endEv,comdat
	.weak	_ZNKSt6vectorIiSaIiEE3endEv # -- Begin function _ZNKSt6vectorIiSaIiEE3endEv
	.p2align	4, 0x90
	.type	_ZNKSt6vectorIiSaIiEE3endEv,@function
_ZNKSt6vectorIiSaIiEE3endEv:            # @_ZNKSt6vectorIiSaIiEE3endEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rax
	leaq	-24(%rbp), %rsi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	%rax, %rdi
	callq	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	_ZNKSt6vectorIiSaIiEE3endEv, .Lfunc_end73-_ZNKSt6vectorIiSaIiEE3endEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ # -- Begin function _ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_,@function
_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_: # @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rsi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	_ZNSaIiEC2ERKS_
	movq	-16(%rbp), %rax         # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, .Lfunc_end74-_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSaIiEC2ERKS_,"axG",@progbits,_ZNSaIiEC2ERKS_,comdat
	.weak	_ZNSaIiEC2ERKS_         # -- Begin function _ZNSaIiEC2ERKS_
	.p2align	4, 0x90
	.type	_ZNSaIiEC2ERKS_,@function
_ZNSaIiEC2ERKS_:                        # @_ZNSaIiEC2ERKS_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	_ZNSaIiEC2ERKS_, .Lfunc_end75-_ZNSaIiEC2ERKS_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ # -- Begin function _ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.p2align	4, 0x90
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,@function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_: # @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .Lfunc_end76-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_ # -- Begin function _ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.p2align	4, 0x90
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,@function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_: # @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, .Lfunc_end77-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_ # -- Begin function _ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.p2align	4, 0x90
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,@function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_: # @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdi
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .Lfunc_end78-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_ # -- Begin function _ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,@function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_: # @_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	-16(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	_ZSt12__niter_baseIPiET_S1_
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, .Lfunc_end79-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_ # -- Begin function _ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,@function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_: # @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end80:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, .Lfunc_end80-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_ # -- Begin function _ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.p2align	4, 0x90
	.type	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_,@function
_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_: # @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$1, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_, .Lfunc_end81-_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE # -- Begin function _ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,@function
_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE: # @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, %rdi
	callq	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .Lfunc_end82-_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ # -- Begin function _ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_,@function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_: # @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	%rsi, %rdx
	sarq	$2, %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB83_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	-32(%rbp), %rdx
	shlq	$2, %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memmove
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB83_2:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, .Lfunc_end83-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,comdat
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv # -- Begin function _ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,@function
_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv: # @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end84:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, .Lfunc_end84-_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_,comdat
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ # -- Begin function _ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_,@function
_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_: # @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, (%rsi)
	popq	%rbp
	retq
.Lfunc_end85:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, .Lfunc_end85-_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_ # -- Begin function _ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_,@function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_: # @_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB86_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB86_4
# %bb.2:                                #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	_ZSt11__addressofISt6vectorIiSaIiEEEPT_RS3_
	movq	%rax, %rdi
	callq	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
# %bb.3:                                #   in Loop: Header=BB86_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB86_1
.LBB86_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_, .Lfunc_end86-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorIiSaIiEEEEvT_S6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyISt6vectorIiSaIiEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_,comdat
	.weak	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_ # -- Begin function _ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_,@function
_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_:   # @_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_ZNSt6vectorIiSaIiEED2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_, .Lfunc_end87-_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m,"axG",@progbits,_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m,comdat
	.weak	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m # -- Begin function _ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	.p2align	4, 0x90
	.type	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m,@function
_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m: # @_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpq	$0, -16(%rbp)
	movq	%rdx, -32(%rbp)         # 8-byte Spill
	je	.LBB88_2
# %bb.1:
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
.LBB88_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m, .Lfunc_end88-_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m # -- Begin function _ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m,@function
_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m: # @_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	-32(%rbp), %rdx         # 8-byte Reload
	callq	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m, .Lfunc_end89-_ZNSt16allocator_traitsISaISt6vectorIiSaIiEEEE10deallocateERS3_PS2_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m # -- Begin function _ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m,@function
_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m: # @_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, %rdi
	callq	_ZdlPv
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end90:
	.size	_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m, .Lfunc_end90-_ZN9__gnu_cxx13new_allocatorISt6vectorIiSaIiEEE10deallocateEPS3_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E # -- Begin function _ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E,@function
_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E: # @_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E, .Lfunc_end91-_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_spiral_matrix.cpp
	.type	_GLOBAL__sub_I_spiral_matrix.cpp,@function
_GLOBAL__sub_I_spiral_matrix.cpp:       # @_GLOBAL__sub_I_spiral_matrix.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	retq
.Lfunc_end92:
	.size	_GLOBAL__sub_I_spiral_matrix.cpp, .Lfunc_end92-_GLOBAL__sub_I_spiral_matrix.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Enter row count: "
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Enter column count: "
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"  "
	.size	.L.str.2, 3

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_spiral_matrix.cpp

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
