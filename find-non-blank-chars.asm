.export Main
.segment "CODE"
.proc Main
	lda #$20
	sta $42

	lda #$20
	sta $43

	lda #$20
	sta $44

	lda #$20
	sta $45

	lda #$33
	sta $46

	lda #$20
	ldx #$0

	Loop:
		inx
		cmp $42,X
		bne Exit
	Continue:
		beq  Loop
	Exit:
		stx $40

	rts
.endproc
