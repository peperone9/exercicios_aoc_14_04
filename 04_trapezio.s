.data
   msg1: .asciiz "\n base maior: "
   msg2: .asciiz "\n base menor: "
   msg3: .asciiz "altura: "
   msg4: .asciiz "\n\n area trapezio: "
.text

.globl main

main:
   # mensagem e leitura da base maior
   li $v0, 4
   la $a0, msg1
   syscall
  
   li $v0, 5
   syscall 
   add $t1, $v0, $zero
   
   #mensagem e leitura base menor
   li $v0, 4
   la $a0, msg2
   syscall
   
   li $v0, 5
   syscall
   #soma base maior c menor 
   add $t1, $t1, $v0
   
   #mensagem e leitura altura
   li $v0, 4 
   la $a0, msg3 
   syscall 
   
   li $v0, 5 
   syscall
   #multiplicacao soma bases por altura
   mul $t1, $t1, $v0 
   
   #calculo area
   div $t1, $t1, 2 
   
   #mostra area
   li $v0, 4 
   la $a0, msg4 
   syscall
   
   li $v0, 1 
   add $a0, $t1, 0
   syscall
   
   
   
   
   
   