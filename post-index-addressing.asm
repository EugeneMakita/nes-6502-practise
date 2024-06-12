.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$05
	sta $41

	lda #$43
	sta $42

	lda #$00
	sta $43

	lda #$67
	sta $44

	lda #$79
	sta $45

	lda #$15
	sta $46

	lda #$E3
	sta $47

	lda #$72
	sta $48

	ldy $41
	lda 0

	Loop:
		cmp ($42),Y
		bcs Smaller
	lda ($42),Y
	Smaller:
		iny
		cpy $41
		bne Loop
	sta $40
	rts
.endproc
