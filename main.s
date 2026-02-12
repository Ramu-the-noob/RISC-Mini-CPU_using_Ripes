.data
# Unique labels for each operation
msg_add: .string "ADD: "
msg_sub: .string "SUB: "
msg_mul: .string "MUL: "
msg_div: .string "DIV: "
msg_fib: .string "FIB: "
msg_fact: .string "FACT: "


.text
main:
   
    #t registers are temporary
    # change s0 to 1, 2 or 3 for calculator, fibonacci and factorial respectively
    
    li s0, 1
  
    li t1, 1
    beq s0, t1, calc
   
    li t1, 2
    beq s0, t1, fib
    
    li t1, 3
    beq s0, t1, fact
    
    j exit_program
    
calc:
    # variable upon which operations will be conducted
    li s0 , 5 # variable 1 , 5 by default 
    li s1 ,2 # variable 2 , 2 by default
    
    la a0, msg_add # label printing
    li a7, 4
    ecall
    
    add a0, s0, s1
    li a7, 1 # load print statement wiht a7, 1
    ecall # print statement
    
    li a7, 11    
    li a0, 10    # new line charachter
    ecall
    
    la a0, msg_sub
    li a7, 4
    ecall
    
    sub a0, s0, s1
    li a7, 1
    ecall
    
    li a7, 11    
    li a0, 10    
    ecall
    
    la a0, msg_mul
    li a7, 4
    ecall
    
    mul a0, s0, s1
    li a7, 1
    ecall
    
    li a7, 11       
    li a0, 10    
    ecall
    
    la a0, msg_div
    li a7, 4
    ecall
    
    div a0, s0, s1
    li a7, 1
    ecall
    
    j exit_program
    
fib:
    li s0, 5 # for nth fibonacci number put n here
             # 5 by default
    
    li t0, 0
    li t1, 1
    
    li a0, 0
    
    loop_fib:
        beq s0, zero , out_fib
        
        add a0, t0, t1
        mv t0, t1
        mv t1, a0
        
        addi s0, s0, -1
        j loop_fib
        
        
    out_fib:
        
        add t2, zero, a0 # store a0 in t2
        
        la a0, msg_fib
        li a7, 4
        ecall
    
        mv a0, t2 # move t2 value back to a0
        li a7, 1
        ecall
        
        j exit_program
        

fact:
    li s0, 5 # for n! change n here
             # 5 by default
    li t0, 1
    
    loop_fact:
        
    beq s0, zero, out_fact
    mul t0, t0, s0
    addi s0, s0, -1
    
    j loop_fact
    
    out_fact:
        
        la a0, msg_fact
        li a7, 4
        ecall
    
        
        mv a0, t0 #move t2 back to a0
        li a7, 1
        ecall
        
exit_program:
    li a7 ,10
    ecall