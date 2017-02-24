;Line 1
;this is the REM statement...
Line1:          DEFB $00,$00                    ; Line 1
                DEFW Line1End-Line1Text         ; Line 1 length
Line1Text:      DEFB $ea                        ; REM             

