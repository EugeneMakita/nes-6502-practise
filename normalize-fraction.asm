.export Main
.segment "CODE"
.proc Main
	;load some data
	lda #$22
	sta $40

	ldy #00

	;find the largest value
	Loop:
		bmi Done
		iny
		asl 
		jmp Loop

    Done:
		sty $42
		sta $41

	rts
.endproc
