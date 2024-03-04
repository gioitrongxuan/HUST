.data
students:  	.space 	2048   		# Array to store student mark (4byte) names (1n-20byte) 
prompt:     	.asciiz 		"Enter the number of students: "
namePrompt: 	.asciiz 		"Enter student name: "
markPrompt: 	.asciiz 		"Enter math mark: "
notPassed:  	.asciiz 		"Students who haven't passed the math exam: "
newline:    	.asciiz 		"\n"

.text
#hàm chính:
#------------------------------------------------------------------------ 
#chương trình chính thực hiện nhập vào danh sách học sinh và điểm số
#In ra danh sách học sinh trượt môn 
#------------------------------------------------------------------------   
main:
	jal 	load_address_and_initialization
	nop
	jal	read
	nop
	jal	print_list_notPassed
	nop
end_main:
	# Exit program
    	li 	$v0, 10
    	syscall

#Các hàm con:
#-------------------------------------
#nạp các giá trị địa chỉ vào thanh ghi
#-------------------------------------
	
load_address_and_initialization:
	la 	$s0,students 	#Load address students
	move	$s1,$s0		#s1= address of students[0]
		jr	$ra  	
#-------------------------------------   	
#đọc thông tin ve danh sách sinh viên
#-------------------------------------   
read:
    	read_number:
    		# Read the number of students
		li 	$v0,4
    		la 	$a0,prompt
    		syscall
		
    		li 	$v0,5       	# Read integer
    		syscall
    		move 	$t0,$v0   	# Store the number of students in $t0
    		ble 	$t0,$zero,read_number	
   # Loop to read student information
    		li 	$t1,0       	# Initialize index for student arrays
    loop_read:
    #{
	read_name:
    		# Read student name
   		li	$v0,4
   		la 	$a0,namePrompt
   		syscall

   		li 	$v0,8       	# Read string
   		la 	$a0,4($s1)
    		la 	$a1,20
    		syscall
    	
	read_mark:
    	# Read math mark
    		li 	$v0,4
    		la 	$a0,markPrompt
    		syscall

    		li 	$v0,5       	# Read integer
    		syscall
    		move 	$t3,$v0   	# Store the math mark in $t3
    		sw 	$t3,0($s1)
    	
    	#update #A[i++]
    		addi 	$s1,$s1,24	
    		addi	$t1,$t1,1
    		bne	$t1,$t0,loop_read
    	# }
    #Khôi phục lại $s1,$s3,$t1
    	move 	$s1,$s0
    	move 	$s3,$s2
    	li	$t1,0
end_read:
	jr 	$ra


#---------------------------------------------
#in ra danh sách những học sinh không qua môn
#--------------------------------------------- 
    	
print_list_notPassed:
	
	li 	$v0,4
    	la 	$a0,notPassed
    	syscall
    	# Print newline
    	li 	$v0, 4
    	la 	$a0, newline
    	syscall
	loop_printname:
		addi	$a1,$s1,4
		# Check notPassed
		lw	$t2,0($s1)
		li	$t8,4
		bgt	$t2,$t8,end_loop
   		# Loop to print characters until null terminator
    		loop:
        	lb 	$t5, 0($a1)	
        	beqz 	$t5, end_loop
        	li 	$v0, 11
        	move 	$a0, $t5
        	syscall
        	addiu 	$a1, $a1, 1
        	j 	loop
        	end_loop:
        		nop
		# students[i++]
    		addi 	$s1,$s1,24	
    		addi	$t1,$t1,1
    		bne	$t1,$t0,loop_printname
end_print_list_notPassed:
	jr	$ra
