.data
   msg1: .asciiz "horas trabalhadas: \n"
   msg2: .asciiz "horas extras: \n"
   msg3: .asciiz "\n salario bruto: \n"
   msg4: .asciiz "desconto: \n"
   msg5: .asciiz "\n salario liquido: \n"
   
.text


.globl main

main:
   #ler horas trabalhadas
   li $v0, 4
   la $a0, msg1
   syscall
  
   li $v0, 5
   syscall
   #calculo hrs trabalhadas
   mul $t1, $v0, 10
   
   #ler horas extras
   li $v0, 4
   la $a0, msg2
   syscall
   
   li $v0, 5
   syscall
   #calculo salario bruto
   mul $t2, $v0, 15
   add $t2, $t1, $t2
   
   #ler desconto
   li $v0, 4
   la $a0, msg4
   syscall
   
   li $v0, 5
   syscall
   #calcula salario liquido
   sub $t1, $t2, $v0
   
   #mostra bruto
   li $v0, 4 
   la $a0, msg3
   syscall
   
   li $v0, 1 
   add $a0, $t2, 0
   syscall
   
   #mostra liquido
   li $v0, 4 
   la $a0, msg5
   syscall
   
   li $v0, 1
   add $a0, $t1, $zero
   syscall