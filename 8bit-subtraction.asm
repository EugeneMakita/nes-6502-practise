.export Main
.segment "CODE"
.proc Main
	lda #$39
	sta $41

	lda #$77
	sta $40; store $77 into $40

	sec ;set carry flag
	sbc $41
	sta $42; store the answer into $41

	rts
.endproc
