.text 
	li a7,5
	ecall 
	jal ra,fact
	
	li a7,1
	ecall 
	
	li a7,10
	ecall
fact: 	
	# We store the return address because,after the first call, 
	# the return address will change in the second call and overwrite 
	# the one stored in the RA register from the first call.
	
	addi sp,sp,-8# provide 2 available slots in stack
	sw ra,4(sp)# store return address in stack
	sw a0,0(sp)# store n in stack 
	addi t0,x0,1 # t0 = 1
	bgt a0,t0,L1 # if n > 1, move to L1 
	addi a0,x0,1 # else answer = 1
	addi sp,sp,8 # restore the return address
	jalr x0,0(ra)
L1: 	addi a0,a0,-1 # if n > 1, n = n - 1
	jal ra,fact # call fact 
	
	lw t1,0(sp) # restore n giving to t1
	lw ra,4(sp) #restore the return address
	addi sp,sp,8 # pop 2 items off the stack.
	mul a0,a0,t1 # a0 = n(n-1)!
	
	jalr x0,0(ra)
	