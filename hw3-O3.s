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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_putchar                ## TAILCALL
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
	pushq	%rbx
	.cfi_offset %rbx, -24
	cmpl	$2, %esi
	jl	LBB1_7
## %bb.1:
	movl	%esi, %r9d
	movl	$1, %edx
	xorl	%r10d, %r10d
	movabsq	$-4294967296, %r11      ## imm = 0xFFFFFFFF00000000
	movabsq	$4294967296, %r8        ## imm = 0x100000000
	jmp	LBB1_2
	.p2align	4, 0x90
LBB1_6:                                 ##   in Loop: Header=BB1_2 Depth=1
	movslq	%ecx, %rcx
	movl	%eax, (%rdi,%rcx,4)
	incq	%rdx
	addq	%r8, %r10
	cmpq	%r9, %rdx
	je	LBB1_7
LBB1_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_3 Depth 2
	movl	(%rdi,%rdx,4), %eax
	movq	%r10, %rsi
	movq	%rdx, %rcx
	.p2align	4, 0x90
LBB1_3:                                 ##   Parent Loop BB1_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rbx
	sarq	$30, %rbx
	movl	(%rdi,%rbx), %ebx
	cmpl	%eax, %ebx
	jle	LBB1_6
## %bb.4:                               ##   in Loop: Header=BB1_3 Depth=2
	movl	%ebx, (%rdi,%rcx,4)
	addq	%r11, %rsi
	cmpq	$1, %rcx
	leaq	-1(%rcx), %rcx
	jg	LBB1_3
## %bb.5:                               ##   in Loop: Header=BB1_2 Depth=1
	xorl	%ecx, %ecx
	jmp	LBB1_6
LBB1_7:
	popq	%rbx
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movaps	l___const.main.arr(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movl	l___const.main.arr+16(%rip), %eax
	movl	%eax, -48(%rbp)
	movl	-64(%rbp), %ecx
	movl	$1, %eax
	cmpl	$6, %ecx
	jl	LBB3_2
## %bb.1:
	movl	%ecx, -60(%rbp)
	xorl	%eax, %eax
LBB3_2:
	movl	$5, -64(%rbp,%rax,4)
	movl	-60(%rbp), %edx
	movl	-56(%rbp), %eax
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_4
## %bb.3:
	movl	%edx, -56(%rbp)
	movl	-64(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_4
## %bb.35:
	movl	%edx, -60(%rbp)
	xorl	%ecx, %ecx
LBB3_4:
	movl	%eax, -64(%rbp,%rcx,4)
	movl	-56(%rbp), %edx
	movl	-52(%rbp), %eax
	movl	$3, %ecx
	cmpl	%eax, %edx
	jle	LBB3_6
## %bb.5:
	movl	%edx, -52(%rbp)
	movl	-60(%rbp), %edx
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_6
## %bb.33:
	movl	%edx, -56(%rbp)
	movl	-64(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_6
## %bb.34:
	movl	%edx, -60(%rbp)
	xorl	%ecx, %ecx
LBB3_6:
	movl	%eax, -64(%rbp,%rcx,4)
	movl	-52(%rbp), %edx
	movl	-48(%rbp), %eax
	movl	$4, %ecx
	cmpl	%eax, %edx
	jle	LBB3_7
## %bb.29:
	movl	%edx, -48(%rbp)
	movl	-56(%rbp), %edx
	movl	$3, %ecx
	cmpl	%eax, %edx
	jle	LBB3_7
## %bb.30:
	movl	%edx, -52(%rbp)
	movl	-60(%rbp), %edx
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_7
## %bb.31:
	movl	%edx, -56(%rbp)
	movl	-64(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_7
## %bb.32:
	movl	%edx, -60(%rbp)
	xorl	%ecx, %ecx
LBB3_7:
	movl	%eax, -64(%rbp,%rcx,4)
	movl	-64(%rbp), %esi
	leaq	L_.str(%rip), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	-60(%rbp), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	-56(%rbp), %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	-52(%rbp), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	-48(%rbp), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	leaq	L_.str.2(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_printf
	movaps	l___const.main.arr2(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	l___const.main.arr2+16(%rip), %rax
	movq	%rax, -80(%rbp)
	movl	-96(%rbp), %ecx
	movl	$1, %eax
	cmpl	$8, %ecx
	jl	LBB3_9
## %bb.8:
	movl	%ecx, -92(%rbp)
	xorl	%eax, %eax
LBB3_9:
	movl	$7, -96(%rbp,%rax,4)
	movl	-92(%rbp), %edx
	movl	-88(%rbp), %eax
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_11
## %bb.10:
	movl	%edx, -88(%rbp)
	movl	-96(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_11
## %bb.28:
	movl	%edx, -92(%rbp)
	xorl	%ecx, %ecx
LBB3_11:
	movl	%eax, -96(%rbp,%rcx,4)
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %eax
	movl	$3, %ecx
	cmpl	%eax, %edx
	jle	LBB3_13
## %bb.12:
	movl	%edx, -84(%rbp)
	movl	-92(%rbp), %edx
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_13
## %bb.26:
	movl	%edx, -88(%rbp)
	movl	-96(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_13
## %bb.27:
	movl	%edx, -92(%rbp)
	xorl	%ecx, %ecx
LBB3_13:
	movl	%eax, -96(%rbp,%rcx,4)
	movl	-84(%rbp), %edx
	movl	-80(%rbp), %eax
	movl	$4, %ecx
	cmpl	%eax, %edx
	jle	LBB3_15
## %bb.14:
	movl	%edx, -80(%rbp)
	movl	-88(%rbp), %edx
	movl	$3, %ecx
	cmpl	%eax, %edx
	jle	LBB3_15
## %bb.23:
	movl	%edx, -84(%rbp)
	movl	-92(%rbp), %edx
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_15
## %bb.24:
	movl	%edx, -88(%rbp)
	movl	-96(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_15
## %bb.25:
	movl	%edx, -92(%rbp)
	xorl	%ecx, %ecx
LBB3_15:
	movl	%eax, -96(%rbp,%rcx,4)
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %eax
	movl	$5, %ecx
	cmpl	%eax, %edx
	jle	LBB3_17
## %bb.16:
	movl	%edx, -76(%rbp)
	movl	-84(%rbp), %edx
	movl	$4, %ecx
	cmpl	%eax, %edx
	jle	LBB3_17
## %bb.19:
	movl	%edx, -80(%rbp)
	movl	-88(%rbp), %edx
	movl	$3, %ecx
	cmpl	%eax, %edx
	jle	LBB3_17
## %bb.20:
	movl	%edx, -84(%rbp)
	movl	-92(%rbp), %edx
	movl	$2, %ecx
	cmpl	%eax, %edx
	jle	LBB3_17
## %bb.21:
	movl	%edx, -88(%rbp)
	movl	-96(%rbp), %edx
	movl	$1, %ecx
	cmpl	%eax, %edx
	jle	LBB3_17
## %bb.22:
	movl	%edx, -92(%rbp)
	xorl	%ecx, %ecx
LBB3_17:
	movl	%eax, -96(%rbp,%rcx,4)
	movl	-96(%rbp), %esi
	leaq	L_.str(%rip), %r14
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	-92(%rbp), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	-88(%rbp), %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	-84(%rbp), %r15d
	movq	%r14, %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	_printf
	movl	-80(%rbp), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	-76(%rbp), %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	_printf
	movl	$10, %edi
	callq	_putchar
	addl	%r15d, %ebx
	movl	%ebx, %esi
	shrl	$31, %esi
	addl	%ebx, %esi
	sarl	%esi
	leaq	L_.str.2(%rip), %rdi
	xorl	%eax, %eax
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB3_36
## %bb.18:
	xorl	%eax, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB3_36:
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
