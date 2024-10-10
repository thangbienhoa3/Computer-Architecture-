
.data
	spaceChar: .byte 20
.text
# s0 = 1, s1 = sum
	addi s1,zero,0 # sum = 0
	addi s0,zero,0 # s0 = 0
	addi t0,zero,10 # t0 = 10
for: 	add s1,s1,s0 # sum = sum + i
	#display i on the mirror
	li a7,1
	add a0,s0,zero 
	ecall
	# display space character
	la a0,spaceChar
	li a7,11
	ecall
	#
	addi s0,s0,1 # increase i by 1
	bne s0,t0,for # i < 10 keep for loop
done: 
	li a7,1
	add a0,s1,zero 
	ecall