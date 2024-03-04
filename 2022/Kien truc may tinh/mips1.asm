.eqv MONITOR_SCREEN 0x10010000 		#Dia chi bat dau cua bo nho man hinh
.eqv RED 0x00E6261F 				#Cac gia tri mau thuong su dung
.eqv ORANGE 0x00EB7532
.text
 	li 		$k0, MONITOR_SCREEN 	#Nap dia chi bat dau cua man hinh
 	addi		$k1, $k0, 256  	#Nap dia chi ket thuc cua man hinh
	li		$s0, 0
	li 		$t9,0
	ori		$t8,$zero,0x4
paint:
 	andi		$t1,$t9,0x4
 	addi		$t9,$t9,1
 	bne		$t1,$zero,hihi
 	nop
 	li 		$t0, RED
 	sw 		$t0, 0($k0)
 	nop
 
 	li 		$t0, ORANGE
 	sw 		$t0, 4($k0) 
 	nop
 	j haha
 	hihi:
 	li 		$t0, ORANGE
 	sw 		$t0, 0($k0) 
 	nop
 	
 	li 		$t0, RED
 	sw 		$t0, 4($k0)
 	nop
 
 	haha:
 	addi 		$k0,$k0,8
 	blt 		$k0,$k1,paint

