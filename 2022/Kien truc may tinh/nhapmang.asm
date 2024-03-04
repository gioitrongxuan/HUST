#Laboratory Exercise 5, Home Assignment 4
.data
string: .space 500
noppp:	.space 4
array: 	.space 100
Message1: .asciiz "Nhap xau:”
Message2: .asciiz " "
.text
main:
	la 	$a2,array			# a2=Address Array[0]
	li 	$t0,-1			
loop: #reset array
	addi 	$t0,$t0,1
	sw 	$zero,0($a2)
	addi	$a2,$a2,4
	bne 	$t0,26,loop
	
get_string: 
	li $v0, 54
	la $a0, Message1
	la $a1, string
	la $a2, 50
	syscall
get_array: 
	la $a0, string 			# a0 = Address(string[0])
	la $a2,array			# a2=Address Array[0]
	move $t6,$a2			#ki tu nhieu nhat
	xor $t0, $zero, $zero 		# t0 = i = 0
check_char: 
	add $t1, $a0, $t0 		# t1 = a0 + t0
					#= Address(string[0]+i)
	lb $t2, 0($t1) 			# t2 = string[i]
	beq $t2,$zero,end_of_str 	# Is null char?
	slti $t3,$t2,91
	li $t9,59
	slt $t4,$t9,$t2
	and $t5,$t4,$t3
	beq $t5,1,hoa
	continue:
	addi $t0, $t0, 1 		#t0=t0+1->i = i + 1
	j check_char
	
hoa:	
	add $t2,$t2,-65
	sll $t2,$t2,2
	add $a2,$a2,$t2
	lw $s0,0($a2)
	add $s0,$s0,1
	sw $s0,0($a2)
	lw $t7,0($t6)
	blt $s0,$t7,kupdate
	move $t6,$a2
	kupdate:
	sub $a2,$a2,$t2
	j continue	
end_of_str:
end_of_get_array:
vitrikitunhieunhat:
	li $v0, 11
	la $a2,array
	sub $t6,$t6,$a2
	srl $t6,$t6,2
	add $a0,$t6,65
	syscall
	
	add $t6,$t6,65
	li $t0,0
	la $a1,string
in_vitri: 
	add $t1, $a1, $t0 		# t1 = a0 + t0
					#= Address(string[0]+i)
	lb $t2, 0($t1) 			# t2 = string[i]
	beq $t2,$zero,end_in_vitri	# Is null char?
	bne $t2,$t6,continue_2
	li $v0, 1
	move $a0,$t0
	syscall
	continue_2:
	addi $t0, $t0, 1 		#t0=t0+1->i = i + 1
	j in_vitri
end_in_vitri: 	

