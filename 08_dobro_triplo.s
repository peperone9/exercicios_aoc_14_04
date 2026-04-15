.data
   msg1: .asciiz "\ndigite um.numero: "
   msg2: .asciiz "\n\ndobro: "
   msg3: .asciiz "\n\ntriplo: "
   
.text

.globl main

main:
   li $v0, 4
   la $a0, msg1
   syscall
   
   li $v0, 5
   syscall
   add $t1, $v0, $zero 
   
   #verifica se o numero e positivo ou nulo
   bgt $t1, -1, dobro
   
   #triplica numero negativo
   mul $t1, $t1, 3 
   
   #mostra triplo 
   li $v0, 4
   la $a0, msg3
   syscall 
   
   j fim
   
dobro:
   mul $t1, $t1, 2
   
   li $v0, 4
   la $a0, msg2
   syscall
   
fim:
   li, $v0, 1 
   add $a0, $t1, 0
   syscall