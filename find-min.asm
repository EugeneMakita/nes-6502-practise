.export Main
.segment "CODE"
.proc Main
	;load data into memory
	lda #$15
	sta $41

	lda #$67
	sta $42

	lda #$79
	sta $43

	lda #$05
	sta $44

	lda #$E3
	sta $45

	lda #$02
	sta $46

	ldx #$0
	ldy #$0
	lda $41

	Loop:
		cmp $42,X
		bcc Normal
		lda $42,X
	Normal:
		inx
		cpx #05
		bne Loop
	sta $40
	rts
.endproc
