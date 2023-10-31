#
# Example library of macros.
#

# printing the value in specified register as integer
.macro print_double (%x)
	li a7, 3
	fmv.d fa0, %x
	ecall
	newline
.end_macro

# inputing integer in specified register from console except a0 register
.macro read_int(%x)
   push	(a0)
   li a7, 5
   ecall
   mv %x, a0
   pop	(a0)
.end_macro

   .macro print_str (%x)
   .data
str:
   .asciz %x
   .text
   push (a0)
   li a7, 4
   la a0, str
   ecall
   pop	(a0)
   .end_macro

   .macro print_char(%x)
   li a7, 11
   li a0, %x
   ecall
   .end_macro

   .macro newline
   print_char('\n')
   .end_macro

# exit program
.macro exit
    li a7, 10
    ecall
.end_macro

# saving specified register on stack
.macro push(%x)
	addi	sp, sp, -4
	sw	%x, (sp)
.end_macro

# pushing a value from top of stack into a register
.macro pop(%x)
	lw	%x, (sp)
	addi	sp, sp, 4
.end_macro