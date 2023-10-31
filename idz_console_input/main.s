.include "macros.s"

.global main
.text
main:

    print_str ("Input X ")
    read_int (t1)  			#  Size array
    calculate(t1)
    print_double(fa0)
exit:
	li a7 10			# Completion of the program
	ecall

