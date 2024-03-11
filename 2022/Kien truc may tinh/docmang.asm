.data 
	array: 		.space 400
	Message:	.asciiz "Khong co so thoa man"
	Message_2:	.asciiz "so can tim:"
	message1: 	.asciiz "Nhap do dai cua mang: "
	message2: 	.asciiz "Nhap mang: "
.text	

	la 	$s0,array 	#luu dia chia cua $s0
	addi 	$s1,$s0,-4
	li 	$t0,-1		#index
	li 	$v0, 4
	la 	$a0,message1
	syscall
	li 	$v0,5		#nhap so luong phan tu
	syscall
	addi 	$a1,$v0,-1	#last index
	li 	$v0, 4
	la 	$a0,message2
	syscall
nhapmang:	
	addi 	$t0,$t0,1
	addi 	$s1,$s1,4
	li 	$v0,5
	syscall
	sw 	$v0,0($s1)
	bne 	$t0,$a1,nhapmang
	j nhapmang_end
	nop
nhapmang_end:
	addi 	$s1,$s0,-4 	#tra lai gia tri dau
	li 	$t0,-1		#index
checklemin:
	li 	$t1, 0x7FFFFFFF #khoi tao gia tri lemin ban dau
	li 	$s2,1 		#tao mat na kiem tra chan le 0x00000001
loop:
	addi 	$t0,$t0,1
	addi 	$s1,$s1,4
	lw 	$t2,0($s1)
	and	$t3,$t2,$s2	#kiem tra chan le $t2 and 0x00000001 tuc la kiem tra bit cuoi la 0 hay 1
	bne	$t3,$zero,le	#bit cuoi khac 0 tuc la so le->kiem tra
	continue:
	bne 	$t0,$a1,loop
	j 	checklemin_end
le:
	slt   	$t4,$t2,$t1 		#a[i] le<min?
	beq 	$t4,1,capnhatlemin	#a[i] le<min-> cap nhat gia tri
	j 	continue
	
	capnhatlemin: 
		addi $t1,$t2,0
		j 	continue
checklemin_end:
	addi 	$s1,$s0,-4 	#tra lai gia tri dau
	li 	$t0,-1		#index
checkdk:
	li 	$t4,0x80000000 #khoi tao gia tri chan ban dau
	li 	$s2,1 		#tao mat na kiem tra chan le 0x00000001
	li 	$s7,0		#tao mot gia tri kiem tra mang thoa man hay k
loop_2:
	addi 	$t0,$t0,1
	addi 	$s1,$s1,4
	lw 	$t2,0($s1)
	and	$t3,$t2,$s2	#kiem tra chan le $t2 and 0x00000001 tuc la kiem tra bit cuoi la 0 hay 1
	beq	$t3,$zero,chan	#bit cuoi khac 0 tuc la chan->kiem tra
	continue_2:
	bne 	$t0,$a1,loop_2
	j 	checkdk_end
chan:   
	slt	$t5,$t4,$t2	#kiem tra xem so co lon hon so tru
	slt 	$t6,$t2,$t1
	and	$t7,$t5,$t6
	beq 	$t7,1,capnhat
	j 	continue_2
	
	capnhat:
		li $s7,1
		addi $t4,$t2,0
		j 	continue_2
checkdk_end:
nop

print: 	beq $s7,1,print_2
	li $v0, 55
	la $a0, Message
	syscall
	j end
print_2:
	li $v0, 56
	la $a0, Message_2
	add $a1,$t4,$zero
	syscall
end:
	


