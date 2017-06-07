;ZX81 screens
; Display file (ZX81 screen) - low res screen

Display      DEFB $76
             DEFB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$83,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$83,$80,$80,$82,$04,$00,$00,$00,$00,$00,$87,$80,$80,$80,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$83,$80,$00,$00,$00,$76
             DEFB $00,$00,$85,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$80,$03,$80,$03,$80,$00,$00,$00,$00,$00,$00,$00,$87,$03,$85,$00,$00,$00,$00,$76
             DEFB $00,$00,$80,$80,$80,$07,$03,$00,$00,$00,$00,$00,$87,$80,$04,$80,$04,$80,$04,$00,$00,$00,$00,$81,$07,$82,$87,$01,$00,$00,$00,$00,$76
             DEFB $00,$00,$80,$80,$83,$04,$00,$00,$00,$00,$00,$00,$85,$80,$80,$80,$80,$80,$05,$00,$00,$00,$00,$80,$80,$86,$05,$80,$04,$00,$00,$00,$76
             DEFB $00,$00,$84,$80,$80,$80,$80,$83,$00,$00,$00,$00,$85,$80,$80,$80,$80,$80,$05,$00,$00,$00,$00,$84,$80,$85,$80,$80,$05,$00,$00,$00,$76
             DEFB $00,$00,$02,$80,$80,$80,$80,$07,$00,$00,$00,$00,$85,$07,$80,$07,$80,$84,$05,$00,$00,$00,$00,$00,$00,$02,$80,$80,$01,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$03,$03,$01,$00,$00,$00,$00,$00,$02,$00,$02,$00,$02,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$00,$00,$2d,$2e,$16,$38,$28,$34,$37,$2a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$00,$31,$26,$38,$39,$00,$38,$28,$34,$37,$2a,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$00,$00,$28,$3a,$37,$38,$34,$37,$00,$30,$2a,$3e,$38,$00,$39,$34,$00,$32,$34,$3b,$2a,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
			 DEFB $00,$00,$00,$00,$00,$00,$00,$00,$35,$37,$2a,$38,$38,$00,$1d,$00,$39,$34,$00,$38,$39,$26,$37,$39,$00,$00,$00,$00,$00,$00,$00,$00,$76			 
             DEFB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $84,$80,$05,$80,$04,$00,$02,$80,$05,$00,$00,$81,$01,$84,$81,$02,$80,$80,$00,$80,$80,$01,$00,$84,$80,$00,$00,$84,$80,$05,$02,$07,$76
             DEFB $85,$80,$05,$80,$80,$00,$05,$80,$80,$00,$81,$80,$00,$00,$84,$00,$84,$80,$87,$80,$80,$00,$85,$85,$80,$05,$00,$00,$80,$80,$04,$05,$76
             DEFB $85,$80,$05,$80,$07,$00,$05,$84,$80,$00,$80,$80,$00,$00,$00,$00,$06,$80,$07,$80,$80,$00,$85,$02,$80,$05,$00,$85,$85,$80,$05,$01,$76
             DEFB $85,$80,$05,$03,$00,$00,$05,$81,$80,$04,$80,$80,$00,$00,$00,$00,$05,$80,$05,$80,$80,$00,$85,$87,$80,$82,$00,$85,$00,$84,$80,$05,$76
             DEFB $85,$80,$05,$00,$00,$85,$00,$85,$80,$05,$02,$80,$00,$00,$06,$00,$05,$84,$01,$80,$80,$00,$05,$00,$80,$80,$00,$85,$00,$02,$80,$05,$76
             DEFB $03,$03,$03,$00,$00,$03,$01,$02,$03,$03,$00,$02,$01,$03,$00,$02,$03,$02,$00,$03,$03,$03,$03,$00,$03,$03,$01,$03,$01,$00,$03,$01,$76
             DEFB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$76
             DEFB $00,$00,$00,$00,$00,$27,$37,$2e,$26,$33,$00,$31,$2a,$3c,$2e,$38,$00,$1e,$1c,$1d,$20,$1a,$00,$1e,$1c,$1d,$23,$00,$00,$00,$00,$00,$76
              
;hires display - 192 lines of stuff
HDISPLAY    DEFB $0a,$0a,$0a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$0a,$0a,$c9
            DEFB $0a,$0a,$03,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$c9
            DEFB $0a,$0a,$24,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$05,$0a,$c9
            DEFB $0a,$0a,$24,$28,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$28,$0a,$28,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$28,$05,$0a,$c9
            DEFB $0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$82,$8a,$14,$0a,$0a,$82,$8a,$8a,$14,$0a,$0a,$16,$0a,$0a,$82,$8a,$8a,$14,$0a,$0a,$82,$8a,$14,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0c,$0a,$0a,$12,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0c,$0a,$0a,$12,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0c,$0a,$0a,$12,$0a,$0a,$0c,$0a,$0a,$0c,$0a,$0a,$12,$0a,$0a,$0c,$0a,$0a,$12,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$82,$8a,$14,$0a,$0a,$82,$8a,$8a,$14,$0a,$0a,$bf,$0a,$0a,$82,$8a,$8a,$14,$0a,$0a,$82,$8a,$14,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$24,$28,$8a,$8a,$8a,$11,$0a,$0a,$bf,$0a,$0a,$8a,$8a,$11,$0a,$26,$8a,$8a,$0a,$0a,$bf,$0a,$0a,$91,$8a,$8a,$8a,$28,$05,$0a,$c9
            DEFB $0a,$0a,$24,$0a,$0a,$0a,$0a,$84,$0a,$0a,$0c,$0a,$0a,$02,$0a,$37,$8a,$14,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$8b,$0a,$0a,$0a,$0a,$05,$0a,$c9
            DEFB $0a,$0a,$03,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$02,$0a,$37,$8a,$14,$0a,$0a,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$02,$0a,$c9
            DEFB $0a,$0a,$0a,$8a,$8a,$8a,$8a,$ad,$0a,$0a,$16,$0a,$0a,$a7,$8a,$11,$0a,$26,$8a,$9d,$0a,$0a,$16,$0a,$0a,$0f,$8a,$8a,$8a,$8a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$34,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$15,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$34,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$15,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$91,$8a,$8a,$8a,$8a,$ad,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0f,$8a,$8a,$8a,$8a,$11,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$84,$0a,$0a,$0c,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0c,$0a,$0a,$8b,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$91,$8a,$8a,$8a,$8a,$11,$0a,$0a,$bf,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$bf,$0a,$0a,$91,$8a,$8a,$8a,$8a,$11,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$a7,$8a,$8a,$8a,$8a,$8a,$9d,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$91,$8a,$8a,$8a,$8a,$11,$0a,$0a,$bf,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$bf,$0a,$0a,$91,$8a,$8a,$8a,$8a,$11,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$84,$0a,$0a,$0c,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$8b,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$91,$8a,$8a,$8a,$8a,$ad,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0f,$8a,$8a,$8a,$8a,$11,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$34,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$15,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$19,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$00,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$34,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$15,$0a,$0a,$0a,$0a,$0a,$0a,$c9
            DEFB $0a,$0a,$0a,$8a,$8a,$8a,$8a,$ad,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0f,$8a,$8a,$8a,$8a,$0a,$0a,$c9
            DEFB $0a,$0a,$03,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$02,$0a,$c9
            DEFB $0a,$0a,$24,$0a,$0a,$0a,$0a,$84,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$8b,$0a,$0a,$0a,$0a,$05,$0a,$c9
            DEFB $0a,$0a,$24,$28,$8a,$8a,$8a,$11,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$91,$8a,$8a,$8a,$28,$05,$0a,$c9
            DEFB $0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$82,$8a,$8a,$8a,$8a,$8a,$14,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$82,$8a,$14,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$82,$8a,$14,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0c,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$12,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$02,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$0c,$0a,$0a,$02,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$82,$8a,$16,$0a,$0a,$bf,$0a,$0a,$82,$8a,$8a,$8a,$8a,$8a,$14,$0a,$0a,$bf,$0a,$0a,$16,$8a,$14,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$0a,$02,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$28,$14,$0a,$0a,$16,$0a,$0a,$bf,$0a,$0a,$82,$8a,$8a,$8a,$8a,$8a,$14,$0a,$0a,$bf,$0a,$0a,$16,$0a,$0a,$82,$28,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$0c,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$12,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$16,$0a,$0a,$02,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$0a,$0c,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$0c,$0a,$0a,$12,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$28,$14,$0a,$0a,$bf,$0a,$0a,$16,$0a,$0a,$82,$8a,$28,$0a,$28,$8a,$14,$0a,$0a,$16,$0a,$0a,$bf,$0a,$0a,$82,$28,$88,$0a,$c9
            DEFB $0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$16,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$37,$8a,$8a,$8a,$28,$0a,$28,$8a,$14,$0a,$0a,$16,$0a,$0a,$82,$8a,$28,$0a,$28,$8a,$8a,$8a,$a6,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$05,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$16,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$24,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$16,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$05,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0c,$0a,$0a,$0c,$0a,$0a,$12,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$24,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$37,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$14,$0a,$0a,$bf,$0a,$0a,$82,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$a6,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$19,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$00,$0a,$c9
            DEFB $0a,$0a,$0a,$02,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$88,$0a,$c9
            DEFB $0a,$0a,$24,$28,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$28,$05,$0a,$c9
            DEFB $0a,$0a,$24,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$05,$0a,$c9
            DEFB $0a,$0a,$03,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$0a,$02,$0a,$c9
            DEFB $0a,$0a,$0a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$8a,$0a,$0a,$c9
