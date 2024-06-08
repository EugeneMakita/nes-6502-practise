.export Main
.segment "CODE"
.proc Main
	lda #$3D
	sta $40
	and #$0F
	sta $41
	rts
.endproc
