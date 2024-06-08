.export Main
.segment "CODE"
.proc Main
	lda #$23
	sta $40
	lda #78
	lda $40
	sta $41
	rts
.endproc
