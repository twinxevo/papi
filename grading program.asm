.data
grade_f: .asciiz "you got an F:\n" 
grade_e: .asciiz "you got an E:\n"
grade_d: .asciiz "you got an D:\n"
grade_c: .asciiz "you got an C:\n"
grade_b: .asciiz "you got an B:\n"
grade_a: .asciiz "you got an A:\n"
error_msg: .asciiz "INVALID ENTRY. PLEASE INPUT A VALID DIGIT BETWEEN 0-100"

.text
main:

loop:
li $v0, 5
syscall
move $t0, $v0


#check weather input is less than 0
li $t4, 0
blt $t0, $t4,exit
#check if input is greater than 100
li $t4, 100
bgt $t0, $t4,error_lable
#check if input is less than 30
li $t4, 30
blt $t0, $t4, lable_f
#check if input is less than 40
li $t4, 40
blt $t0, $t4, lable_e
#check if input is less than 50
li $t4, 50
blt $t0, $t4, lable_d
#check if input is less than 60
li $t4, 60
blt $t0, $t4, lable_c
#check if input is less than 70
li $t4, 70
blt $t0, $t4, lable_b

b lable_a

lable_f:
la $a0, grade_f
li $v0, 4
syscall
b loop

lable_e:
la $a0, grade_e
li $v0, 4
syscall
b loop

lable_d:
la $a0, grade_d
li $v0, 4
syscall
b loop

lable_c:
la $a0, grade_c
li $v0, 4
syscall
b loop

lable_b:
la $a0, grade_b
li $v0, 4
syscall
b loop

lable_a:
la $a0, grade_a
li $v0, 4
syscall
b loop

error_lable:
la $a0, error_msg
li $v0, 4
syscall
b loop

exit:
li $v0, 10
syscall
