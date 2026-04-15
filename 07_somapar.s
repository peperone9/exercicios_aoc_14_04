.data
   msg1: .asciiz "\ndigitar numero: "
   msg2: .asciiz "\n\nresultado: "
   
.text


.globl main

main:
   li $v0, 4
   la $a0, msg1
   syscall
   
   li $v0, 5
   syscall
   add $t1, $v0, 0 
   
   rem $t2, $t1, 2 
   
   beq $t2, $zero, par
   j impar
   
par:
   add $t1, $t1, 5
   j fim
impar:
   add $t1, $t1, 8

fim:
   li $v0, 4
   la $a0, msg2
   syscall
   
   li $v0, 1 
   add $a0, $t1, 0
   syscall