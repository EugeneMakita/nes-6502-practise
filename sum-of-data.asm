.export Main
.segment "CODE"
.proc Main
	lda #03
	sta $41

	lda #$28
	sta $42

	lda #$55
	sta $43

	lda #$26
	sta $44

	lda #00
	ldx $41

	clc
	Loop:
		adc $41,X
		dex
		bne Loop
	sta $40

	rts
.endproc
