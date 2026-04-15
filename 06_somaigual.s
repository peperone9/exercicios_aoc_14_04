.data
   msg1: .asciiz "\nvalor de A: "
   msg2: .asciiz "\nvalor de B: "
   msg3: .asciiz "\n C = "
   
.text


.globl main

main:
   #leitura do 1 valor mostrando mensagem
   li $v0, 4
   la $a0, msg1
   syscall
   
   li $v0, 5 
   syscall
   add $t1, $v0, $zero
   #leitura do 2 valor mostrando mensagem 
   li $v0, 4
   la $a0, msg2
   syscall 
   
   li $v0, 5
   syscall
   add $t2, $v0, $zero
   #soma se os números forem iguais
   beq $t1, $t2, somar
   #multiplica caso sejam diferentes 
   mul $t3, $t1, $t2
   j saida
   
somar:
   add $t3, $t1, $t2

saida:
   li $v0, 4
   la $a0, msg3
   syscall
   
   li $v0, 1 
   add $a0, $t3, $zero
   syscall
