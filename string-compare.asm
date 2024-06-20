.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$03
	sta $40

	lda #$43
	sta $42

	lda #$41
	sta $43

	lda #$54
	sta $44

	lda #$43
	sta $52

	lda #$41
	sta $53

	lda #$54
	sta $54

	ldx #$00

	Loop:
		lda $42,X
		cmp $52,X
		bcs Continue
	
	lda #$FF
	sta $41

	Continue:
		inx
		cpx $40
		bne Loop

	rts
.endproc
