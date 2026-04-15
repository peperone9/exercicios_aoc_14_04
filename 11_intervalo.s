.data
   msg1: .asciiz "\ninformar numero: "
   msg2: .asciiz "\n[0-25]: "
   msg3: .asciiz "\n[26-50]: "
   msg4: .asciiz "\n[51-75]: "
   msg5: .asciiz "\n[76-100]: "
   
.text

.globl main

main:
   add $t1, $zero, $zero
   add $t2, $zero, $zero
   add $t3, $zero, $zero
   add $t4, $zero, $zero
ler:
   li $v0,4 
   la $a0, msg1
   syscall
   
   li $v0, 5 
   syscall
   blt $v0, $zero, fim
   blt $v0, 26, primeiro
   blt $v0, 51, segundo 
   blt $v0, 76, terceiro
   blt $v0, 101, quarto
   j ler
   
primeiro:
   add $t1, $t1, 1
   j ler

segundo:
   add $t2, $t2, 1 
   j ler
   
terceiro:
   add $t3, $t3, 1
   j ler
   
quarto:
   add $t4, $t4, 1
   j ler
   
fim:
  li $v0, 4 
  la $a0, msg2
  syscall 
  
  li $v0, 1 
  add $a0, $t1, $zero 
  syscall 
  
  li $v0, 4 
  la $a0, msg3 
  syscall 
  
  li $v0, 1
  add $a0, $t2, $zero
  syscall 
  
  li $v0, 4 
  la $a0, msg4
  syscall
  
  li $v0, 1  
  add $a0,  $t3, $zero
  syscall 
  
  li $v0, 4 
  la $a0, msg5 
  syscall 
  
  li $v0, 1 
  add $a0, $t4, $zero 
  syscall