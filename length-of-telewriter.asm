.export Main
.segment "CODE"
.proc Main
	lda #$40
	sta $41

	lda #$02
	sta $42

	lda #$47
	sta $43

	lda #$4F
	sta $44

	lda #$BC
	sta $45

	lda #$AC
	sta $46

	lda #$12
	sta $47

	lda #$03
	sta $48

	ldx #00
	ldy #$00

	Loop:
		lda $40,X
		inx
		cmp #$02
		bne Loop

	Count:
	    lda $40,X
		inx
		iny
		cmp #$03
		bne Count
	
	dey
	sty $40

	rts
.endproc
