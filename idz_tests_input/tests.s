#
#  Additional test program that runs a subroutine for processing arrays with various test data
#

.include "macros.s"

.global main

.data
length_A: .word 0	# set the size of array A.
length_B: .word 1	# set the size of array B.
length_C: .word 8	# set the size of array C.
length_D: .word 3	# set the size of array D.
length_E: .word 3	# set the size of array E.
length_G:  .word 7	# set the size of array G.
output_array:  .space 40
output_size: .word 

array_A:

array_B:
	.word 1
array_C:
	.word 1
	.word 2
	.word 3
	.word 4
	.word 5
	.word 6
	.word 7
	.word 8


array_D:
	.word 1
	.word 1
	.word 1

array_E:
	.word 1
	.word 2
	.word 1
array_G:
	.word 12
	.word 1
	.word 32
	.word 7
	.word 35
	.word 16
	.word 7

 .text
main:
    testing_A:    
	    lw a0, length_A
	    la a1, array_A
	    la a2, output_array
	    jal form_B
	    sw a0, output_size, t2
	    print_str("Test A")
	    newline
	    print_str("Array:[]")
	    print(output_size,output_array)
     testing_B:
    
	    lw a0, length_B
	    la a1, array_B
	    la a2, output_array
	    jal form_B
	    sw a0, output_size, t2
	    print_str("Test B ")
	    newline
	    print_str("Array:[1]")
	    print(output_size,output_array)
     testing_C:
    
	    lw a0, length_C
	    la a1, array_C
	    la a2, output_array
	    jal form_B
	    sw a0, output_size, t2
	    print_str("Test C ")
	    newline
	    print_str("Array:[1 2 3 4 5 6 7 8]")
	    print(output_size,output_array)    
     testing_D:
    
	    lw a0, length_D
	    la a1, array_D
	    la a2, output_array
	    jal form_B
	    sw a0, output_size, t2
	    newline
	    print_str("Test D")
	    newline
	    print_str("Array:[1 1 1]")
	    print(output_size,output_array)  
	    
     testing_E:
    
	    lw a0, length_E
	    la a1, array_E
	    la a2, output_array
	    jal form_B
	    sw a0, output_size, t2
	    print_str("Test E")
	    newline
	    print_str("Array:[1 2 1]")
	    print(output_size,output_array)
	    
      testing_G:
            lw a0, length_G
	    la a1, array_G
	    la a2, output_array
	    jal form_B
	    newline
	    sw a0, output_size, t2
	    print_str("Test E")
	    newline
	    print_str("Array:[12 1 32 7 35 16 7]")
	    print(output_size,output_array)
 
exit:
	li a7 10
	ecall

