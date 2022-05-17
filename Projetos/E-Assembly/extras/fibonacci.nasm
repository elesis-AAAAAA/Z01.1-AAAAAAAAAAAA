;-------------------------------------
; fibonacci.nasm
; Leia o README.md para detalhes
;-------------------------------------

;-------------------------------------
; Crie um programa em Assembly que escreva os 11 primeiros números da sequência de Fibonacci 
; na memória RAM entre as posições RAM[10] e RAM[20], começando com RAM[10] = "0" e RAM[11] = "1".
;-------------------------------------

; Colocando os valores iniciais nas memórias
leaw $10, %A
movw $0, (%A)
leaw $11, %A
movw $1, (%A)

; Iniciando o contador
leaw $0, %A
movw $0, (%A)

LOOP:
    ; Incrementando o contador
    leaw $0, %A
    movw (%A), %D
    incw %D
    movw %D, (%A)

    ; Verificando se o loop terminou
    leaw $0, %A
    movw (%A), %D
    leaw $10, %A
    subw %D, %A, %D
    leaw $END, %A 
    je %D ; Pula para o fim se for igual a 0
    nop

    ; Escrevendo os valores na memória
    ; Fibonacci(n) = Fibonacci(n-1) + Fibonacci(n-2)
    leaw $0, %A
    movw (%A), %D ; %D = contador
    leaw $11, %A
    addw %D, %A, %D ; %D = n
    leaw $1, %A
    movw %D, (%A); RAM[1] = n

    ; Executa a soma
    leaw $1, %A
    movw (%A), %D
    decw %D
    leaw $2, %A
    movw %D, (%A); RAM[2] = n-1
    movw %D, %A
    movw (%A), %D ; %D = RAM[n-1]
    leaw $3, %A
    movw %D, (%A); RAM[3] = RAM[n-2]

    leaw $1, %A
    movw (%A), %D
    leaw $2, %A
    subw %D, %A, %D; %D = n-2
    leaw $4, %A
    movw %D, (%A); RAM[4] = n-2
    movw %D, %A
    movw (%A), %D ; %D = RAM[n-2]
    leaw $5, %A
    movw %D, (%A); RAM[5] = RAM[n-2]

    leaw $3, %A
    movw (%A), %D
    leaw $5, %A
    addw %D, (%A), %D; %D = RAM[n-2] + RAM[n-1]
    leaw $1, %A
    movw (%A), %A
    movw %D, (%A); RAM[n] = RAM[n-2] + RAM[n-1] 
    leaw $LOOP, %A 
    jmp 
    nop

END:
