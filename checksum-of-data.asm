.export Main
.segment "CODE"
.proc Main
	;load data into page One
	lda #$03
	sta $41

	lda #$28
	sta $42

	lda #$55
	sta $43

	lda #$26
	sta $44

	ldx #$1
	lda $42
	Loop:
		eor $42,X
		inx 
		cpx $41
		bne Loop
	sta $40
	rts
.endproc

