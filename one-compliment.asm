.export Main
.segment "CODE"
.proc Main
	lda #$6A; %0110 1010
	sta $40

	eor #$FF
	sta $41

    rts
.endproc
