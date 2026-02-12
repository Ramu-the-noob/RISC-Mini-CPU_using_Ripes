.data
msg_fact: .string "FACT :"

.text
main:
  li s0, 5 # for nth fibonacci number put n here
             # 5 by default
    
  li t0, 0 # a
  li t1, 1 # b
  li a0, 0 #c
    
  loop_fib:
      beq s0, zero , out_fib # if s0 == zero then jump to out_fib else continue
        
      add a0, t0, t1
      mv t0, t1 # a = b
      mv t1, a0 # b = c
        
      addi s0, s0, -1 # s0--
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
        
exit_program:
  li a7 ,10
  ecall
