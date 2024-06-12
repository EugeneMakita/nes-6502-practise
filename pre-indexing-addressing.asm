.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$2F
	sta $60
	lda #$00
	sta $61

	lda #$80
	sta $62
	lda #$00
	sta $63

	lda #$A5
	sta $64
	lda #$00
	sta $65

	rts
.endproc
