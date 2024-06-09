.export Main
.segment "CODE"
.proc Main
	lda #$6A
	sta $40

	lda #$B3
	sta $41

	lda $40
	and #$0F
	clc
	asl
	asl
	asl
	asl
	sta $43

	lda $41 
	and #$0F
	clc
	adc $43
	sta $42

	rts
.endproc
