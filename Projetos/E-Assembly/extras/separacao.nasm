;-------------------------------------
; separacao.nasm
; Leia o README.md para detalhes
;-------------------------------------

; Imagem armazenada a partir da RAM[10]

; Bits de 7 a 0 devem ser copiados para RAM[0]
; Bits de 15 a 8 devem ser copiados para RAM[1]
; Os demais bits da RAM[0] e RAM[1] devem permanecer em '0'

leaw $10, %A
movw (%A), %D
; 0000000011111111 últimos 7 bits -> 255 em decimal
leaw $255, %A
andw %A, %D, %D
leaw $0, %A
movw %D, (%A)
; 1111111100000000 bits de 15 a 8 -> 65280 em decimal
leaw $10, %A
movw (%A), %D
leaw $65280, %A
andw %A, %D, %D
leaw $1, %A
movw %D, (%A)

