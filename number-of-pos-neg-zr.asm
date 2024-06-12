.export Main
.segment "CODE"
.proc Main
	;load data into the memory
	lda #$06
	sta $43

	lda #$68
	sta $44

	lda #$F2
	sta $45

	lda #$87
	sta $46

	lda #$00
	sta $47

	lda #$59
	sta $48

	lda #$2A
	sta $49

	ldx #$06
	Loop:
		lda $43,X
		bmi Negative
		cmp #0
		bne Posetive
		ldy $41
		iny
		sty $41
		jmp Normal
	Negative:
		ldy $40
		iny
		sty $40
		jmp Normal
	Posetive:
		ldy $42
		iny
		sty $42
	Normal:
		dex
		cpx #$0
		bne Loop
	rts
.endproc

