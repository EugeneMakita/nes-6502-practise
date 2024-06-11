.export Main
.segment "CODE"
.proc Main
	;load data into memory
	lda #$06
	sta $41

	lda #$68
	sta $42

	lda #$F2
	sta $43

	lda #$87
	sta $44

	lda #$30
	sta $45

	lda #$59
	sta $46

	lda #$2A
	sta $47

	;find negative numbers
	lda #0
	tay
	tax

	Loop:
		clc
		lda $41,X
		asl
		bcc  Posetive
	iny
	Posetive:
		inx
		cpx #$07
		bne Loop

	sty $40

	rts
.endproc


