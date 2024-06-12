.export Main
.segment "CODE"
.proc Main
	;load data into memory
	lda #$06
	sta $42

	lda #$F1
	sta $43
	lda #$28
	sta $44

	lda #$1A
	sta $45
	lda #$30
	sta $46

	lda #$89
	sta $47
	lda #$4B
	sta $48

	lda #$0
	tax
	tay
	clc
	Loop: 
		adc $43,X
		inx
		inx
		cpx $42
		bne Loop

	sta $40
	lda #$0
	tax
	UpperBits: 
		adc $44,X
		inx
		inx
		cpx $42
		bne UpperBits
	sta $41
	rts
.endproc
