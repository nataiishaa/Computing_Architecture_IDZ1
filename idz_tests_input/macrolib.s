#
# Example library of macros.
#

# printing the value in specified register as integer
.macro print_int (%x)
	li a7, 1
	mv a0, %x
	ecall
.end_macro

.macro print_imm_int (%x)
    li a7, 1
    li a0, %x
    ecall
.end_macro

# inputing integer in a0 register from console
.macro read_int_a0
   li a7, 5
   ecall
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


# Сhecking for correct array length

.macro correct_length(%x)

  mv      t3 %x                         # Store the result in t3 (this is n)
        li      t5 0  
        ble     t3 t5 fail              # On error if less than 0
        li      t4 10                   # Max size array
        bgt     t3 t4 fail              #  is size > 10
        b end          
        
        fail:      
        print_str("Error size")
        exit
        end:
        
.end_macro
