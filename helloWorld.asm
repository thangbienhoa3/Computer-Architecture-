.data 
	msg: .asciz "Hello world"
.text 
	la a0,msg
	addi a7,zero,4
	ecall
	addi a7,zero,10 #exit program
	ecall