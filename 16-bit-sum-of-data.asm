.export Main
.segment "CODE"
.proc Main
    ;loading data
    lda #03
    sta $42

    lda #$C8
    sta $43

    lda #$FA
    sta $44

    lda #$96
    sta $45

    lda #0
    tax 
    tay

    clc
    Add: 
        adc $43,X
        bcc AddUpperBits
        iny
    AddUpperBits:
        inx
        cpx $42
        bne Add

    sta $40
    sty $41

    rts
.endproc