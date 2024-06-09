.export Main
.segment "CODE"
.proc Main
	lda #$2A
	sta $40

	lda #$67
	sta $41

	lda #$35
	sta $42

	lda #$F8
	sta $43

	lda #$A4
	sta $44

	lda #$51
	sta $45


	clc 
	lda $40
	adc $43
	sta $46

	lda $41
	adc $44
	sta $47

	lda $42
	adc $45
	sta $48

	rts
.endproc
