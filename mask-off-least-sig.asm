.export Main
.segment "CODE"
.proc Main
	lda #$C4; %1100 0100
	sta $40
    and #$F0; %1111 0000
	sta $41

	rts
.endproc 
