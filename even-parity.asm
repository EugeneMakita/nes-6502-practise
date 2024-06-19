.export Main
.segment "CODE"
.proc Main
	;loading data into the memory
	lda #$06
	sta $40

	lda #$31
	sta $41

	lda #$32
	sta $42

	lda #$33
	sta $43

	lda #$34
	sta $44

	lda #$35
	sta $45

	lda #$36
	sta $46

	ldx $40
	LoadData:
		ldy #$0
		lda $40,X ;0011 0110

	CheckBits:
		bpl MoveNext
		iny

	MoveNext:
		asl ;0110 0010; 1100 0100
		bne CheckBits
		tya
		lsr
		bcc EvenBits
		lda $40,X
		ora #$80
		sta $40,X

	EvenBits:
		dex
		bne LoadData

	rts
.endproc
