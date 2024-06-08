.export Main
.segment "CODE"
.proc Main
   ldx #4
   lda #37
   CountDown:
    sta $00,X
    clc ; clear the carry flag 
    sbc #1 ;decrease the value of the accumulator
    dex; decrease the countdown
    bne CountDown ; redo until equal to zero
    rts
.endproc