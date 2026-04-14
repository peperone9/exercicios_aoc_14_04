.data
	msg1: .asciiz "camisetas pequenas: "
	msg2: .asciiz "camisetas medias: "
	msg3: .asciiz "camisetas grandes: "
	msg4: .asciiz "Valor arrecadado: "


.text

.globl main


main:
	#le qnt camisetas pequenas
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	mul $t1, $v0, 10
	
	#le qnt camisetas medias
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	mul $t2, $v0, 12
	#Guarda venda total no acumulador
	add $t1, $t1, $t2
		
	#le qnt camisetas grandes
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	mul $t2, $v0, 15
	add $t1, $t1, $t2
	
	#imprimiundo total arrecadado
	
	li $v0, 4
	la $a0, msg4
	syscall 
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
		
	
	