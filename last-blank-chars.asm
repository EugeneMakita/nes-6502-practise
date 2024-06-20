.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$41
	sta $42

	lda #$20
	sta $43

	lda #$48
	sta $44

	lda #$41
	sta $45

	lda #$54
	sta $46

	lda #$20
	sta $47

	lda #$20
	sta $48

	lda #$54
	sta $49

	lda #$0D
	sta $4A

	ldx #$00
	ldy #$00

	FindLastChar:
		lda $42,X
		inx
		cmp #$20
		beq Count
		cmp #$0D
		beq end
		iny
		Count:
			jmp FindLastChar
		end:
			sty $40
	rts
.endproc
