
#
# Library of macros.
#

.include "macrolib.s"

.macro enter(%size, %address)

	    	lw a0, %size     # save value in a0 to stack in order not to lose in a0 contained size
	    	la a1, %address	 # save value in a0 to stack in order not to lose in a1 contained address
    		jal enter_array

.end_macro


.macro print(%size,%address)
    lw a0, %size 		 # save value in a0 to stack in order not to lose in a0 contained size
    la a1, %address		 # save value in a0 to stack in order not to lose in a1 contained adress
    jal  write_array
.end_macro

