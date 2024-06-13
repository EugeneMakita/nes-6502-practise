.export Main
.segment "CODE"
.proc Main
	lda #$52
	sta $41

	lda #$41
	sta $42

	lda #$54
	sta $43

	lda #$48
	sta $44

	lda #$45
	sta $45

	lda #$42
	sta $46

	lda #$0D
	sta $47

	ldy #$0
	ldx #$0

	Loop:
		lda $41,X
		inx
		cmp $47
		bne Loop
	dex
	stx $40

	rts
.endproc
