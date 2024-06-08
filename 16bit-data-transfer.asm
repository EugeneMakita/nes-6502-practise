.export Main
.segment "CODE"
.proc Main
	lda #$3E; %0101 1110
	sta $40; store 3E into $40

	lda #$B7; %1100 0111 
	sta $41; store B7 into $41

	eor $40; get the xor value 
	sta $40; store it into $40
	
	eor $41; get the first value 
	sta $41; store it into the second value 

	lda $40; get the xor value 
	eor $41; and xor it to get the second value
	sta $40; store the second value into $40 

	rts
.endproc
