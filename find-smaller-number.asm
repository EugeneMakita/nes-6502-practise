.export Main
.segment "CODE"
.proc Main
	lda #$A8
	sta $40

	lda #$75
	sta $41

	lda $40
	clc 
	cmp $41

	bcs smaller
	sta $42
	rts
	smaller: 
		lda $41
		sta $42
	rts
.endproc
