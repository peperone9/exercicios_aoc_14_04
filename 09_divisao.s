.data
  msg1: .asciiz "\nprimeiro numero: "
  msg2: .asciiz "\nsegundo numero: "
  msg3: .asciiz "\n\ndivisao: "
.text


.globl main

main:
   li $v0, 4
   la $a0, msg1
   syscall
   
   li $v0, 5
   syscall
   add $t1, $v0, 0 
entrada:
   li $v0, 4
   la $a0, msg2 
   syscall
   
   li $v0, 5
   syscall
   
   #valida numero negativo
   beq $v0, $zero, entrada
   
   div $t1, $t1, $v0
   
   li $v0, 4
   la $a0, msg3
   syscall 
   
   li $v0, 1 
   add $a0, $t1, 0 
   syscall