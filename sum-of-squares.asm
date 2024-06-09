.export Main
.segment "CODE"
.proc Main
	lda #$03
	sta $40

	lda #$06
	sta $41
	
	ldx  $40
	lda table, X
	ldx $41

	clc
	adc table,X
	sta $42

	rts
.endproc
table: .byte $00, $01, $04, $09, $10, $19, $24, $31, $40, $51
