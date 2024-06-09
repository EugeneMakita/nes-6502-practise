.export Main
.segment "CODE"
.proc Main
	lda #$5D ; %0101 1101
	sta $40
	clc
	asl; %1011 1010 
	asl; %0111 0100
	sta $41
	rts
.endproc 
