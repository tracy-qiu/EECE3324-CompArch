	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_printArray             ## -- Begin function printArray
	.p2align	4, 0x90
_printArray:                            ## @printArray
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%esi, %esi
	jle	LBB0_3
## %bb.1:
	movq	%rdi, %r15
	movl	%esi, %r12d
	leaq	L_.str(%rip), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%r15,%rbx,4), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB0_2
LBB0_3:
	movl	$10, %edi
	callq	_putchar
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_insertionSort          ## -- Begin function insertionSort
	.p2align	4, 0x90
_insertionSort:                         ## @insertionSort
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	$2, %esi
	jl	LBB1_7
## %bb.1:
	movl	%esi, %r8d
	movl	$1, %ecx
	jmp	LBB1_2
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_2 Depth=1
	movslq	%esi, %rax
	movl	%edx, (%rdi,%rax,4)
	incq	%rcx
	cmpq	%r8, %rcx
	je	LBB1_7
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movl	(%rdi,%rcx,4), %edx
	movq	%rcx, %rsi
	.p2align	4, 0x90
LBB1_3:                                 ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%rdi,%rsi,4), %eax
	cmpl	%edx, %eax
	jle	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	movl	%eax, (%rdi,%rsi,4)
	decq	%rsi
	leaq	1(%rsi), %rax
	cmpq	$1, %rax
	jg	LBB1_3
## %bb.5:                               ##   in Loop: Header=BB1_2 Depth=1
	xorl	%esi, %esi
	jmp	LBB1_6
LBB1_7:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_medianOfList           ## -- Begin function medianOfList
	.p2align	4, 0x90
_medianOfList:                          ## @medianOfList
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%esi, %eax
	shrl	$31, %eax
	addl	%esi, %eax
	sarl	%eax
	movslq	%eax, %rcx
	movl	(%rdi,%rcx,4), %eax
	testb	$1, %sil
	jne	LBB2_2
## %bb.1:
	addl	-4(%rdi,%rcx,4), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, %eax
LBB2_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	l___const.main.arr+16(%rip), %eax
	movl	%eax, -32(%rbp)
	movaps	l___const.main.arr(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	_insertionSort
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	_printArray
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	_medianOfList
	leaq	L_.str.2(%rip), %r14
	movq	%r14, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_printf
	movq	l___const.main.arr2+16(%rip), %rax
	movq	%rax, -64(%rbp)
	movaps	l___const.main.arr2(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rdi
	movl	$6, %esi
	callq	_insertionSort
	movq	%rbx, %rdi
	movl	$6, %esi
	callq	_printArray
	movq	%rbx, %rdi
	movl	$6, %esi
	callq	_medianOfList
	movq	%r14, %rdi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	LBB3_2
## %bb.1:
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB3_2:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d "

	.section	__TEXT,__const
	.p2align	4               ## @__const.main.arr
l___const.main.arr:
	.long	3                       ## 0x3
	.long	5                       ## 0x5
	.long	4                       ## 0x4
	.long	1                       ## 0x1
	.long	2                       ## 0x2

	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"%d\n"

	.section	__TEXT,__const
	.p2align	4               ## @__const.main.arr2
l___const.main.arr2:
	.long	5                       ## 0x5
	.long	7                       ## 0x7
	.long	3                       ## 0x3
	.long	8                       ## 0x8
	.long	20                      ## 0x14
	.long	4                       ## 0x4

.subsections_via_symbols
