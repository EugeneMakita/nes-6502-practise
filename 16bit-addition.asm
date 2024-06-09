.export Main
.segment "CODE"
.proc Main
	lda #$2A
	sta $40

	lda #$67
	sta $41

	lda #$F8
	sta $42

	lda #$14
	sta $43

	clc
	lda $40 ; add the lower bits
	adc $42;  add with the other lower bits

	sta $44; store into lower bits
	lda $41; load the upper bits
	adc $43; add the upper bits
	sta $45; store the upper bits

	rts
.endproc
