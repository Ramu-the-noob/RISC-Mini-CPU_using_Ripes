.data
# Unique labels for each operation
msg_add: .string "ADD: "
msg_sub: .string "SUB: "
msg_mul: .string "MUL: "
msg_div: .string "DIV: "


.text
main:
   # variable upon which operations will be conducted
    li s0 , 5 # variable 1 , 5 by default 
    li s1 ,2  # variable 2 , 2 by default
    
    la a0, msg_add # label loading
    li a7, 4 print #print string specifier
    ecall   # print statement
    
    add a0, s0, s1 # a0 = s0 + s1
    li a7, 1 # load print statement wiht a7, 1
    ecall 
    
    li a7, 11    # print char specifier
    li a0, 10    # new line charachter
    ecall
    
    la a0, msg_sub
    li a7, 4
    ecall
    
    sub a0, s0, s1 # a0 = s0 - s1
    li a7, 1
    ecall
    
    li a7, 11    
    li a0, 10    
    ecall
    
    la a0, msg_mul
    li a7, 4
    ecall
    
    mul a0, s0, s1 # a0 = s0 * s1 , not in default RISC , available through M extension
    li a7, 1
    ecall
    
    li a7, 11       
    li a0, 10    
    ecall
    
    la a0, msg_div
    li a7, 4
    ecall
    
    div a0, s0, s1 # a0 = s0 / s1 , not in default RISC , available through M extension
    li a7, 1
    ecall
    j exit_program
           
exit_program:
    li a7 ,10
    ecall
    
    j exit_program
