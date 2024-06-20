.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$03
	sta $41

	lda #$B1
	sta $42

	lda #$B6
	sta $43

	lda #$33
	sta $44

	ldx #$00
        
	LoopThroughBytes:
		ldy #$00
		lda $42,X

	CheckBits:
		bpl shiftBits
		iny

	shiftBits:
		asl
		bne CheckBits

	IsEven:
		tya
		lsr
		bcc Continue

	lda #$FF
	sta $40

	Continue:
		inx
		cpx $41
		bne  LoopThroughBytes

	rts
.endproc
