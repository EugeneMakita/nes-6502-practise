.export Main
.segment "CODE"
.proc Main
	lda #$6F
	sta $40
	asl 
	sta $41
	rts
.endproc 

