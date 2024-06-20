.export Main
.segment "CODE"
.proc Main
	;load data
	lda #$04
	sta $40

	lda #$37
	sta $41

	lda #$2E
	sta $42

	lda #$38
	sta $43

	lda #$31
	sta $44

	lda #$2E
	ldx #$0

	FindDecimalPoint:
		cmp $41,X
		beq StartPreparing
		inx
		cpx $40
		bne FindDecimalPoint
		jmp done

	StartPreparing:
       inx

    ReplaceDigists:
		lda #$20
		sta $41,X
		inx
		cpx $40
		bne ReplaceDigists

	done:
		rts
.endproc
