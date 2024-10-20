.text 
	# read integer input 
	li a7,5
	ecall 
	addi t0,t0,1
	# jump to fibo function
	jal ra,fibo
	#print integer
	li a7, 1 		 # Syscall for printing integer
   	ecall                    # Print result in a0
   	li a7, 10                # Syscall for exiting
    	ecall                    # Exit program
fibo:
	bge t0,a0,baseCase # if a0 < 1, moving to baseCase
	# working with stack
	addi sp,sp,-8 # provide 2 slots to store n and return address
	sw ra,4(sp) # store return address
	sw a0,0(sp) # store n 
	# fibo calculation
	addi a0,a0,-1 # n := n - 1
	jal ra,fibo # call fibo(n-1)
	# working with stack
	lw a1,0(sp) # restore a0 and give it to a1
	sw a0,0(sp)	# push current a0 to stack
	# fibo calculation
	addi a0,a1,-2 # 
	jal ra,fibo
	# working with stack
	lw a1,0(sp)
	# f(n) = f(n-1) + f(n-2)
	add a0,a0,a1
	# 
	lw ra,4(sp)
	addi sp,sp,8
	
baseCase: 
	jalr x0,0(ra) # jump to instruction which contains address stored in ra
	