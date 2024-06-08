.export Main
.segment "CODE"
.proc Main
    ldx #0
    lda #240
    CountUp:
        sta $00,X
        clc 
        sbc #1
        inx
        cpx #255
        bne CountUp
    
    rts
.endproc