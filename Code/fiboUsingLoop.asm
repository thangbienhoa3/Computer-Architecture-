.text
	li a7,5
	ecall 
	# initialize variable
	addi t0,t0,0
	addi t1,t1,1
	addi t3,t3,2
fibo: 	
	add t4,t0,t1
	addi t0,t1,0
	addi t1,t4,0
	addi t3,t3,1
	bge a0,t3,fibo
print:
	li a7,1
	addi a0,t4,0
	ecall 
	