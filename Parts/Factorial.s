.data
msg_fib: .string "FIB: "

.text
main:
  li s0, 5 # for n! change n here
             # 5 by default here
  li t0, 1 # storing 1 in t0
    
    loop_fact:
        
      beq s0, zero, out_fact # if s0 == zero then jump to out_fact else continue
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

        j exit_program

exit_program:
    li a7 ,10
    ecall
