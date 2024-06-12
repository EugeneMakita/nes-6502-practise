.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$05
	sta $41

	lda #$67
	sta $42

	lda #$79
	sta $43

	lda #$15
	sta $44

	lda #$E3
	sta $45

	lda #$72
	sta $46

	;find the largest number
	ldx #0
	lda #0

	Loop:
		cmp $41,X
        bcs Smaller
	lda $41,X 
	Smaller:
		inx
		cpx #06
		bne Loop
	sta $40 
	rts
.endproc
