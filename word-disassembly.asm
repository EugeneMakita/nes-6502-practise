.export Main
.segment "CODE"
.proc Main
	lda #$3F
	sta $40

	and #$F0
	lsr ; shift the bits to the left
	lsr
	lsr
	lsr
	sta $41

	lda $40
	and #$0F
	sta $42

	rts
.endproc 
