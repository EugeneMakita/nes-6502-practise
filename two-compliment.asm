.export Main
.segment "CODE"
.proc Main
	lda #$3E; 0011 1110
	sta $40
	eor #$FF
	clc
	adc #$01
	sta $41
	rts
.endproc
