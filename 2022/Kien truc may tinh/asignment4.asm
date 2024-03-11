#Laboratory Exercise 2, Assignment 4
.data
message: .asciiz "ky thuat may tinh"
x : .double 
.text
# Assign X, Y
addi $t1, $zero, 5 # X = $t1 = ?
addi $t2, $zero, -1 # Y = $t2 = ?
# Expression Z = 2X + Y
add $s0, $t1, $t1 # $s0 = $t1 + $t1 = X + X = 2X
add $s0, $s0, $t2 # $s0 = $s0 + $t2 = 2X + Y
la $s4,x
la $s2,message
lui $s2,4
l.d  $f12, 0       # Load the double-precision value 0 into $f12
li $v0, 3          # System call code for printing a double-precision floating-point number
syscall            # Execute the system call
la $a0, message # Load địa chỉ của message vào thanh ghi a0
li $v0, 4      # Chọn hàm in chuỗi với mã 4
syscall        # Thực thi hàm in chuỗi



