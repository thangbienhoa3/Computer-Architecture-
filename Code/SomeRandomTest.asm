.data 0x10010040

A: 	.word 0x4c6D6548
	.word 0xBE9A206F
	.word 0x21646C72
	.word 0x49560A0D
	.word 0x414E5445
	.word 0x0000004D
.text
	#lui: load upper immediate 
	# Dua hang so upimm vao 20bit cao cua register
	# 12 bit thap cua thanh ghi dich = 0
	lui s6,0x10010 # s6 = 0x10010000
	addi s6,s6,0x040 # s6 = 0x1001020
	#lui s4,0x456789 # s4 = 0x456789
	#addi s4,s4,0x1ab # s4 = 0x4567891ab
	
	# lb: load byte: 
		# Nap mot byte tu bo nho vao thanh ghi
		# 3 byte ben trai duoc mo rong theo so co dau
	# lbu: load byte usigned
		# nap 1 byte tu bo nho vao thanh ghi
		# 3 byte ben trai duoc mo rong theo so khong dau
	# sb: store byte: # Cat 1 byte ben phai cua thanh ghi ra bo nho
	lb s1,1(s6)
	lb s2,7(s6)
	lbu s3,7(s6)
	# lh: load half
		# nap 2 byte tu bo nho vao thanh ghi
		# phan con lai thi duoc mo rong co dau
	# lh: load half unsiged
		# nap 2 byte tu bo nho vao thanh ghi
		# phan con lai thi duoc mo rong khong dau
	# sh: store half 
		# luu 2 byte ben phai thanh ghi rt ra bo nho
	lh s4,2(s6)
	lh s5,6(s6)
	lhu s5,6(s6)
	#sw s4,20(s6)
	#sb s4,7(s6)
	