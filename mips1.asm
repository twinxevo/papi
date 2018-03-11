.data
grade_f: .asciiz "you got an F"
grade_e: .asciiz "you got an E"
grade_d: .asciiz "you got an D"
grade_c: .asciiz "you got a C"
grade_b: .asciiz "you got a B"
grade_a: .asciiz "you got an A"

err_msg: .asciiz "Invalid score. Enter a valid score between 0 - 100"

.text
main:
    li $v0, 5
    syscall
    move $t0, $v0
    
    # check whether input is less than 0
    li $t7, 0
    blt $t0, $t7, error_label
    
    # check whether input is greather than 100
    li $t7, 100
    bgt $t0, $t7, error_label
    
    # check if score is less than 30 (score between 0 - 29)
    li $t7, 30
    blt $t0, $t7, label_f
    
    # check if score is less than 40 (i.e. score between 30 - 39)
    li $t7, 40
    blt $t0, $t7, label_e
    
    # check if score is less than 50 (i.e. score between 40 - 49)
    li $t7, 50
    blt $t0, $t7, label_d
    
    # check if score is less than 60 (i.e. score between 50 - 59)
    li $t7, 60
    blt $t0, $t7, label_c
    
    # check if score is less than 70 (i.e. score between 60 - 69)
    li $t7, 70
    blt $t0, $t7, label_b
    
    b label_a
    
label_f:
    la $a0, grade_f
    li $v0, 4
    syscall
    b exit

label_e:
    la $a0, grade_e
    li $v0, 4
    syscall
    b exit
        
label_d:
    la $a0, grade_d
    li $v0, 4
    syscall
    b exit
        
label_c:
    la $a0, grade_c
    li $v0, 4
    syscall
    b exit
    
label_b:
    la $a0, grade_b
    li $v0, 4
    syscall
    b exit
    
label_a:
    la $a0, grade_a
    li $v0, 4
    syscall
    b exit

error_label:
    la $a0, err_msg
    li $v0, 4
    syscall
    b exit
        
 exit:
    li $v0, 10
    syscall