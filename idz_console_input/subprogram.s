 .include "macrolib.s"
.global macloran



.data
.align  2                          	 # Alignment by foreign words
n:  .word  0    		    	 # Number of array elements entered


.text
macloran:
	mv t1 a0
	li t2 0 
	fcvt.d.w ft0 t2 #result
	li t2 1
	fcvt.d.w ft4 t2 #factorial
	fcvt.d.w ft5 t2 #numerator
	
	li t2 50 #precision
	li t3 0 #counter
	
	
	loop:
		fdiv.d ft6, ft5, ft4
		
		li t0, 2
		rem  t0, t3, t0
		
		beq t0, zero, continue
		
		fneg.d ft6, ft6
		
		continue:
		
		fadd.d ft0, ft0, ft6
		addi t3 t3 1
		fcvt.d.w ft3 t3
		fmul.d ft4 ft4 ft3
		fcvt.d.w ft1 t1
		fmul.d ft5 ft5 ft1
		
		blt  t3 t2 loop
	fmv.d fa0 ft0
	ret
		
	
	


