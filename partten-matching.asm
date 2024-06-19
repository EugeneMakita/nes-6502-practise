.export Main
.segment "CODE"
.proc Main
	;load Data
	lda #$03
	sta $41

	lda #$53
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
	ldy #$ff
	LoadData:
		lda $42,X
		cmp $52,X
		bne Done
		inx
		cpx $41
		bne LoadData
	ldy #$00
	Done:
		sta $40
	rts
.endproc
