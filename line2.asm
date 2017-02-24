;this is the end of line 1 - the REM			
				DEFB $76                        ; Newline				
;followed by the the RAND USR line				
Line1End       
Line2			DEFB $00,$0a
                DEFW Line2End-Line2Text
Line2Text     	DEFB $F9,$D4                    ; RAND USR
				DEFB $1D,$22,$21,$1D,$20        ; 16514                
                DEFB $7E                        ; Number
                DEFB $8F,$01,$04,$00,$00        ; Numeric encoding
                DEFB $76                        ; Newline
Line2End 
