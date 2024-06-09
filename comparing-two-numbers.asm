.export Main
.segment "CODE"
.proc Main
	lda #$75
	sta $40

	lda #$2B
	sta $41

	clc
	cmp $40
	bcs greater
	lda $40
	sta $42
	rts

	greater:
		lda $41
		sta $42
	rts
.endproc
