.export Main
.segment "CODE"
.proc Main
	lda #$38
	sta $40
	lda #$2b
	sta $41
	clc
	adc $40
	sta $42
	rts
.endproc 
