.export Main
.segment "CODE"
.proc Main
	lda #$3B
	sta $40
	ldy #$0
	ldx #$0
	Loop:
		asl
		bcc Shift
	iny
	Shift:
		inx
		cpx #08
		bne Loop
	sty $41
	rts
.endproc
