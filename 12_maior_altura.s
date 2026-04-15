.data
  msg1: .asciiz "\ninformar altura: "
  msg2: .asciiz "\nmaior: "
  msg3: .asciiz "\nmenor: "
  
  
.text

.globl main

main:
   #contador
   add $t1, $zero, $zero 
   #guarda menor
   add $t2, $zero, 2000000
   #guarda maior
   add $t3, $zero, $zero

iterar:
   #incremfnto do loop
   add $t1, $t1, 1 
   #sai do loop apos 15 leituras
   bgt $t1, 15, fim
   
   #mensagem e leitura do numero
   li $v0, 4
   la $a0, msg1 
   syscall
   
   ler:
   li $v0, 5
   syscall 
   
   #valida se a altura existe
   blt $v0, 1, ler
   #validacao do menor e maior valor
   semenor: blt $v0, $t2, menor
   semaior: bgt $v0, $t3, maior
   fimse: 
   j iterar
  
menor:
   add $t2, $v0, $zero
   #vai pra segunda condicional simples
   j semaior

maior: 
   add $t3, $v0, $zero
   #volta pro fluxo principal
   j fimse 
fim:
   #mostra menor altura
   li $v0, 4
   la $a0, msg3
   syscall 
   
   li $v0, 1
   add $a0, $t2, $zero 
   syscall 
   
   #mostra maior altura
   li $v0, 4 
   la $a0, msg2
   syscall
   
   li $v0, 1 
   add $a0, $t3, $zero 
   syscall 