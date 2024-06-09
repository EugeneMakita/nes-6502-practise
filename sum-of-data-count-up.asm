.export Main
.segment "CODE"
.proc Main
	lda #00
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
		inx
		adc $41,X
        cpx #03
		bne Loop
	sta $40
	rts
.endproc
