.data 
	prompt1: .asciz "Enter the first number: "
	prompt2: .asciz "Enter the second number: "
	result: .asciz "The result is: "
	result1: .asciz "\nThe result in binary: "
.text
	# Print string: Enter the first number
	la a0,prompt1
	addi a7,zero,4
	ecall
	# Enter the first number
	li a7,5
	ecall
	addi t0,a0,0
	# Print string: Enter the second number
	la a0,prompt2
	addi a7,zero,4
	ecall
	# Enter the second number
	li a7,5
	ecall
	addi t1,a0,0
	# adding two numbers
	add t2,t0,t1
	# Print the string: the result
	la a0,result
	addi a7,zero,4
	ecall
	addi a0,t2,0
	addi a7,zero,1
	ecall
	# Print the string: the result
	la a0,result1
	addi a7,zero,4
	ecall
	addi a0,t2,0
	addi a7,zero,35
	ecall
	#Exit the program
	addi a7,zero,93
	ecall
	