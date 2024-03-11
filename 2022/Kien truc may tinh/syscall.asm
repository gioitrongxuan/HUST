#Gán $v0 = 8
li $v0 8
#Gán $a0 = địa chỉ chuỗi ô nhớ chứa chuỗi
.data
str : .space 10 #Xin 10 ô nhớ từ hệ điều hành
strr: .asciiz "Anh yeu em"
.text
la $a0, str
la $5, strr

#Gán $a1 = số lượng ký tự tối đa chuỗi
li $a1, 10
syscall
