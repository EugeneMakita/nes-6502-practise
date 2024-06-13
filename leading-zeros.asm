.export Main
.segment "CODE"
.proc Main
	lda #$08
	sta $40

	lda #$30;leading zeros
	sta $41

	lda #$30;leading zeros
	sta $42

	lda #$38
	sta $43

	lda #$30;leading zeros
	sta $44

	lda #$78
	sta $45

	lda #$30
	ldx $0
	Loop:
		cmp $40,X
		bne Continue
	ldy #$20 ;blank
	sty $40,X
	Continue:
		inx
		cpx #06
		bne Loop
	rts
.endproc
