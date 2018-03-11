.data
    first_name_input_msg: .asciiz "Abeg enter your first name: "
    last_name_input_msg: .asciiz "Abeg enter your last name: "
    gender_input_msg: .asciiz "Abeg enter your gender: "
    age_input_msg: .asciiz "Abeg enter your age: "
    gsm_input_msg: .asciiz "Abeg enter your phone number: "
    dept_input_msg: .asciiz "Abeg enter your department: "
    matno_input_msg: .asciiz "Abeg enter your Reg/Matric No.: "
    
    
    first_name: .space 50
    last_name: .space 50
    gender: .space 10
    age: .space 4
    gsm: .space 15
    dept: .space 50
    matno: .space 50

.text
main:
    # ask user to enter first name
    la $a0, first_name_input_msg
    li $v0, 4
    syscall
    
    la $a0, first_name
    li $a1, 50
    li $v0, 8
    syscall

    # ask user to enter last name
    la $a0, last_name_input_msg
    li $v0, 4
    syscall
    
    la $a0, last_name
    li $a1, 50
    li $v0, 8
    syscall

    # ask user to enter gender
    la $a0, gender_input_msg
    li $v0, 4
    syscall
    
    la $a0, gender
    li $a1, 10
    li $v0, 8
    syscall

    # ask user to enter age
    la $a0, age_input_msg
    li $v0, 4
    syscall
    
    li $v0, 5
    syscall
    move $t0, $v0

    # ask user to enter gsm(phone number)
    la $a0, gsm_input_msg
    li $v0, 4
    syscall
    
    la $a0, gsm
    li $a1, 15
    li $v0, 8
    syscall
    
    # ask user to enter department
    la $a0, dept_input_msg
    li $v0, 4
    syscall
    
    la $a0, dept
    li $a1, 50
    li $v0, 8
    syscall

    # ask user to enter matriculation number
    la $a0, matno_input_msg
    li $v0, 4
    syscall
    
    la $a0, matno
    li $a1, 50
    li $v0, 8
    syscall
    
    li $v0, 10
    syscall