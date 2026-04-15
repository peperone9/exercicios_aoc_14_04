.data
   msg1: .asciiz "\nprimeiro numero: "
   msg2: .asciiz "\nsegundo numero: "
   msg3: .asciiz "\n\nresto de divisao do maior pelo menor: "
.text

.globl main

main:
entrada1:
  li $v0, 4
  la $a0, msg1 
  syscall
  
  li $v0, 5
  syscall
  add $t1, $v0, $zero
  
  li $v0, 4
  la $a0, msg2 
  syscall 
  
entrada2:
  li $v0, 5
  syscall
  
  bgt $t1, $v0, pmaior
  j smaior
  

pmaior:
   beq $v0, $zero, entrada2
   div $t2, $t1, $v0
   mul $t2, $t2, $v0
   sub $t1, $t1, $t2
   j fim 

smaior:
   beq $t1, $zero, entrada1
   div $t2, $v0, $t1
   mul $t2, $t2, $t1 
   sub $t1, $t1, $t2  

fim:
   li $v0, 4
   la $a0, msg3
   syscall
   
   li $v0, 1 
   add $a0, $t1, $zero
   syscall