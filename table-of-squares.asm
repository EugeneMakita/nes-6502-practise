.export Main
.segment "CODE"
.proc Main
	ldx #$04
	stx $40
	lda table,X 
	sta $41
	rts
.endproc
table: .byte $00, $01, $04, $09, $10, $19, $24, $31