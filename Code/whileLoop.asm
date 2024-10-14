
.data 
	spaceChar: .asciz "\n"
.text
	# s0 = p, s1 = x
	addi s0,zero,1 # p = 1
	add s1,zero,zero # s1 = 0
	addi t0,zero,256 # t0 = 256
loop: 
	beq s0,t0,done # if(p = 256)  get out of loop
	slli s0,s0,1 # p = p*2
	addi s1,s1,1 # x = x + 1
	#bne s0,t0,loop # if(p != 256)  get out of loop
	beq zero,zero,loop # repeat
done:
	# Print the value of p(s0)
	addi a0,s0,0
	li a7,1
	ecall
	# Print "\n"
	la a0,spaceChar
	li a7,4
	ecall
	# Print the value of x(s1)
	addi a0,s1,0
	li a7,1
	ecall
