; Arquivo: LCDQuadrado.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Desenhe um quadro no LCD

; Lado de cima do quadrado
leaw $16427, %A
movw $-1, (%A)
leaw $16428, %A
movw $-1, (%A)
leaw $16429, %A
movw $-1, (%A)


; Lado de baixo do quadrado
leaw $17087, %A
movw $-1, (%A)
leaw $17088, %A
movw $-1, (%A)
leaw $17089, %A
movw $-1, (%A)

; Lado esquerdo do quadrado
leaw $16426, %A
movw $1, (%A)
leaw $16446, %A
movw $1, (%A)
leaw $16466, %A
movw $1, (%A)
leaw $16486, %A
movw $1, (%A)
leaw $16506, %A
movw $1, (%A)
leaw $16526, %A
movw $1, (%A)
leaw $16546, %A
movw $1, (%A)
leaw $16566, %A
movw $1, (%A)
leaw $16586, %A
movw $1, (%A)
leaw $16606, %A
movw $1, (%A)
leaw $16626, %A
movw $1, (%A)
leaw $16646, %A
movw $1, (%A)
leaw $16666, %A
movw $1, (%A)
leaw $16686, %A
movw $1, (%A)
leaw $16706, %A
movw $1, (%A)
leaw $16726, %A
movw $1, (%A)
leaw $16746, %A
movw $1, (%A)
leaw $16766, %A
movw $1, (%A)
leaw $16786, %A
movw $1, (%A)
leaw $16806, %A
movw $1, (%A)
leaw $16826, %A
movw $1, (%A)
leaw $16846, %A
movw $1, (%A)
leaw $16866, %A
movw $1, (%A)
leaw $16886, %A
movw $1, (%A)
leaw $16906, %A
movw $1, (%A)
leaw $16926, %A
movw $1, (%A)
leaw $16946, %A
movw $1, (%A)
leaw $16966, %A
movw $1, (%A)
leaw $16986, %A
movw $1, (%A)
leaw $17006, %A
movw $1, (%A)
leaw $17026, %A
movw $1, (%A)
leaw $17046, %A
movw $1, (%A)
leaw $17066, %A
movw $1, (%A)
leaw $17086, %A
movw $1, (%A)

; Lado direito do quadrado
leaw $16449, %A
movw $1, (%A)
leaw $16469, %A
movw $1, (%A)
leaw $16489, %A
movw $1, (%A)
leaw $16509, %A
movw $1, (%A)
leaw $16529, %A
movw $1, (%A)
leaw $16549, %A
movw $1, (%A)
leaw $16569, %A
movw $1, (%A)
leaw $16589, %A
movw $1, (%A)
leaw $16609, %A
movw $1, (%A)
leaw $16629, %A
movw $1, (%A)
leaw $16649, %A
movw $1, (%A)
leaw $16669, %A
movw $1, (%A)
leaw $16689, %A
movw $1, (%A)
leaw $16709, %A
movw $1, (%A)
leaw $16729, %A
movw $1, (%A)
leaw $16749, %A
movw $1, (%A)
leaw $16769, %A
movw $1, (%A)
leaw $16789, %A
movw $1, (%A)
leaw $16809, %A
movw $1, (%A)
leaw $16829, %A
movw $1, (%A)
leaw $16849, %A
movw $1, (%A)
leaw $16869, %A
movw $1, (%A)
leaw $16889, %A
movw $1, (%A)
leaw $16909, %A
movw $1, (%A)
leaw $16929, %A
movw $1, (%A)
leaw $16949, %A
movw $1, (%A)
leaw $16869, %A
movw $1, (%A)
leaw $16889, %A
movw $1, (%A)
leaw $16909, %A
movw $1, (%A)
leaw $16929, %A
movw $1, (%A)
leaw $16949, %A
movw $1, (%A)
leaw $16969, %A
movw $1, (%A)
leaw $16989, %A
movw $1, (%A)
leaw $17009, %A
movw $1, (%A)
leaw $17029, %A
movw $1, (%A)
leaw $17049, %A
movw $1, (%A)
leaw $17069, %A
movw $1, (%A)

