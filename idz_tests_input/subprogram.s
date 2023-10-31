.include "macrolib.s"
.global enter_array
.global write_array
.global form_B

.data
.align  2                          	 # Alignment by foreign words
n:  .word  0    		    	 # Number of array elements entered


.text
enter_array:
		mv t1 a0
		
	in:	      
	    mv t0 a1           	           # Array element pointer
	    li t2 1                        # The number we will write to the array    
	    li t5 0        	           # Counter for moving through the array
	fill:
	
	      print_str("Enter element ")  # hint for entering the number of elements
	    
	      read_int_a0		    # Write array length to a0
	    
	      sw   a0, (t0)                 # Write a number to the address in t0
	      addi t0, t0, 4       	    # Increase the address by the word size in bytes
	      addi t5, t5, 1      	    # Increase the number of remaining elements by 1
	      bne t1,t5,fill     	    # If there are more than 0 left, continue filling	    
	      newline			    # transfer to a new line
	    	
	 ret

 form_B:
 lw   	t4, (a1)        	 # Load 1 element from the array
 li 	t2 4			 # Аssign a value to the register
 mul	t2 a0 t2		 # multiply to find the last one
 addi t2 t2 -4			 # subtract 4 to get rid of the initial value
 mv t1 a1
 add	t1 t1 t2
 lw	t2 (t1)    	     	 # Save last element
 mv   t0, a1                     # Pointer to the beginning of the array     
 mv  t3 a2       		 # Store the result in t3 
 li	s9 0 			 # Array counter B

 processing:
      lw   t5 , (t0)             # Write a number to the address in t5
      beq t5 t2 next             # Checking whether the element is equal to the Last
      beq t5 t4 next		 # Checking whether the element is equal to the first	
add_b:
      sw t5 (t3)
      addi t3 t3 4		 # Increase the address by the word size in bytes
      addi s9 s9 1		 # Increase the array counter by 1
next:
      addi t0 t0 4		 # Increase the address by the word size in bytes
      ble t0,t1,processing     	 # If there are more than 0 left, continue filling
      mv a0 s9			 # updating previous
      ret
 
 
write_array:
 	mv t3 a1	     	          # Store the result in t3 
 	addi t5 s9 0			
 	li t2 0				   # Аssign a value to the register counter array
 	newline			           # Transfer to a new line
 	print_str("Formed array B\n")      # Print line
 	beqz t5 done
loop:
 	lw   t4, (t3)                # Load the element from the link
 	print_int(t4)		     # Print value to console
 	print_char(' ')		     # printing a character to separate values
 	addi t3 t3 4	             # Increase the address by the word size in bytes
 	addi t2 t2 1		     # Increase the array counter by 1
 	bne t5 t2 loop	             # Checking that the array counter is not yet 0
 done:
 	ret		             # return into main
