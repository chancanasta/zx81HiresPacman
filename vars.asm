;our variables
lives	DEFB	$00
score	DEFW	$0000
hiscore DEFW	$0000

pilleat	DEFB	$00

exitlp	DEFB	$00
	
pacdir	DEFB	$00

pacx	DEFB	$00
pacy	DEFB	$00
pacpos	DEFW	$0000
pacgfx	DEFB	$00
pactest	DEFB	$00
paclast	DEFW	$0000
pacmpos	DEFW	$0000

;cherry
chypos	DEFW	$0000
chyf	DEFB	$00
chycnt	DEFB	$00
chycnt2	DEFB	$00
;ghost variables.
;generic
ghgx	DEFB	$00
ghgy	DEFB	$00
ghgpos	DEFW	$0000
;what this ghost is doing
ghgmode	DEFB	$00
;direction
ghgdir	DEFB	$00
;target x and y co-ords ghost is going for
ghgtarx	DEFB	$00
ghgtary	DEFB	$00
ghgign	DEFB	$00
;gfx idx
ghggfx	DEFB	$00
;postion in offscreen maze
ghgmpos	DEFW	$0000
;cage counter (number of 'bounces' in cage before it leaves)
ghgccnt	DEFB	$00
ghgbcp	DEFW	$0000

;GHOST 1
gh1x	DEFB	$00
gh1y	DEFB	$00
gh1pos	DEFW	$0000
;what this ghost is doing
gh1mode	DEFB	$00
;direction
gh1dir	DEFB	$00
;target x and y co-ords ghost is going for
gh1tarx	DEFB	$00
gh1tary	DEFB	$00
gh1ign	DEFB	$00
;gfx idx
gh1gfx	DEFB	$00
;postion in offscreen maze
gh1mpos	DEFW	$0000
;cage counter (number of 'bounces' in cage before it leaves)
gh1ccnt	DEFB	$00
gh1bcp	DEFW	ghost1bc


;ghost 2
gh2x	DEFB	$00
gh2y	DEFB	$00
gh2pos	DEFW	$0000
;what this ghost is doing
gh2mode	DEFB	$00
;direction
gh2dir	DEFB	$00
;target x and y co-ords ghost is going for
gh2tarx	DEFB	$00
gh2tary	DEFB	$00
gh2ign	DEFB	$00
;gfx idx
gh2gfx	DEFB	$00
;postion in offscreen maze
gh2mpos	DEFW	$0000
;cage counter (number of 'bounces' in cage before it leaves)
gh2ccnt	DEFB	$00
gh2bcp	DEFW	ghost2bc


;GHOST 3
gh3x	DEFB	$00
gh3y	DEFB	$00
gh3pos	DEFW	$0000
;what this ghost is doing
gh3mode	DEFB	$00
;direction
gh3dir	DEFB	$00
;target x and y co-ords ghost is going for
gh3tarx	DEFB	$00
gh3tary	DEFB	$00
gh3ign	DEFB	$00
;gfx idx
gh3gfx	DEFB	$00
;postion in offscreen maze
gh3mpos	DEFW	$0000
;cage counter (number of 'bounces' in cage before it leaves)
gh3ccnt	DEFB	$00
gh3bcp	DEFW	ghost3bc

;GHOST 4
gh4x	DEFB	$00
gh4y	DEFB	$00
gh4pos	DEFW	$0000
;what this ghost is doing
gh4mode	DEFB	$00
;direction
gh4dir	DEFB	$00
;target x and y co-ords ghost is going for
gh4tarx	DEFB	$00
gh4tary	DEFB	$00
gh4ign	DEFB	$00
;gfx idx
gh4gfx	DEFB	$00
;postion in offscreen maze
gh4mpos	DEFW	$0000
;cage counter (number of 'bounces' in cage before it leaves)
gh4ccnt	DEFB	$00
gh4bcp	DEFW	ghost4bc


	
ghmode	DEFB	$00
ghjust	DEFB 	$00
ghmpos	DEFW	$0000
ghcnt	DEFB	$00
ghcnt2	DEFB	$00

savemd	DEFB	$00

scarec	DEFB	$00
scarec2	DEFB	$00
scarep	DEFW	$0000


modes	DEFB	5,SCATTER_MODE,20,CHASE_MODE
		DEFB	7,SCATTER_MODE,20,CHASE_MODE
		DEFB	5,SCATTER_MODE,20,CHASE_MODE
		DEFB	5,SCATTER_MODE,255,CHASE_MODE



debug1	DEFB	$00
;debug2  DEFB	$00
;		DEFB	$00
;		DEFB	$00
;		DEFB	$00
;		DEFB	$00
;		DEFB	$00
;		DEFB	$00
		
;debugcnt	DEFB	$00


;rle stuff
norlelines	DEFB	$00
rlesave		DEFW	$0000


slowcnt	DEFB	$00

	

		
		

		
;vsynclp	DEFB	$00		
;                                1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2
;our maze    0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7
;            x x x x x x x x - - - - - - - - x x x x x x x x - - - - 
pacmaze		
		DEFB 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
		DEFB 2,1,1,1,1,1,17,1,1,1,1,1,1,2,2,1,1,1,1,1,1,17,1,1,1,1,1,2
		DEFB 2,1,2,2,2,2,1,2,2,2,2,2,1,2,2,1,2,2,2,2,2,1,2,2,2,2,1,2
		DEFB 2,4,2,2,2,2,1,2,2,2,2,2,1,2,2,1,2,2,2,2,2,1,2,2,2,2,4,2
		DEFB 2,1,2,2,2,2,1,2,2,2,2,2,1,2,2,1,2,2,2,2,2,1,2,2,2,2,1,2
		DEFB 2,1,1,1,1,1,17,1,1,16,0 ,0 ,16, 0,64,16, 0, 0,16,1,1,17,1,1,1,1,1,2
		DEFB 2,2,2,2,2,2, 1,2,2, 0,34,34,34,34,34,34,34,34, 0,2,2, 1,2,2,2,2,2,2
		DEFB 2,2,2,2,2,2,1,2,2,0,2,0,0,0,0,0,0,2,0,2,2,1,2,2,2,2,2,2
		DEFB 2,2,2,2,2,2,1,2,2,0,2,0,0,0,0,0,0,2,0,2,2,1,2,2,2,2,2,2
		DEFB 8,0,0,0,0,0,17,0,0,16,2,0,0,0,0,0,0,2,16,0,0,17,0,0,0,0,0,8
		DEFB 2,2,2,2,2,2,1,2,2,0,2,2,2,2,2,2,2,2,0,2,2,1,2,2,2,2,2,2
		DEFB 2,2,2,2,2,2,1,2,2,16,0,0,0,0,0,0,0,0,16,2,2,1,2,2,2,2,2,2
		DEFB 2,2,2,2,2,2,1,2,2,0,2,2,2,2,2,2,2,2,0,2,2,1,2,2,2,2,2,2
		DEFB 2,1,1,1,1,1,17,2,2,0,2,2,2,2,2,2,2,2,0,2,2,17,1,1,1,1,1,2
		DEFB 2,1,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2,2,1,2,2,2,2,1,2
		DEFB 2,1,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2,2,1,2,2,2,2,1,2
		DEFB 2,4,1,1,2,2,17,1,1,17,1,1,1,1,1,1,1,1,17,1,1,17,2,2,1,1,4,2
		DEFB 2,2,2,1,2,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2,2,1,2,2,1,2,2,2
		DEFB 2,2,2,1,2,2,1,2,2,1,2,2,2,2,2,2,2,2,1,2,2,1,2,2,1,2,2,2
		DEFB 2,1,1,1,1,1,1,2,2,1,1,1,1,2,2,1,1,1,1,2,2,1,1,1,1,1,1,2
		DEFB 2,1,2,2,2,2,2,2,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2,2,2,1,2
		DEFB 2,1,2,2,2,2,2,2,2,2,2,2,1,2,2,1,2,2,2,2,2,2,2,2,2,2,1,2
		DEFB 2,1,1,1,1,1,1,1,1,1,1,1,17,1,1,17,1,1,1,1,1,1,1,1,1,1,1,2
		DEFB 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
		
		


;			  01234567  01234567  01234567  01234567	
pills	
		DEFB %01111111,%11111001,%11111111,%11100000
		DEFB %01000010,%00001001,%00000100,%00100000 
		DEFB %01000010,%00001001,%00000100,%00100000
		DEFB %01000010,%00001001,%00000100,%00100000
		DEFB %01111111,%10000000,%00011111,%11100000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %00000010,%00000000,%00000100,%00000000
		DEFB %01111110,%00000000,%00000111,%11100000
		DEFB %01000010,%01000000,%00100100,%00100000
		DEFB %01000010,%01000000,%00100100,%00100000
		DEFB %01110011,%11111111,%11111100,%11100000
		DEFB %00010010,%01000000,%00100100,%10000000
		DEFB %00010010,%01000000,%00100100,%10000000
		DEFB %01111110,%01111001,%11100111,%11100000
		DEFB %01000000,%00001001,%00000000,%00100000
		DEFB %01000000,%00001001,%00000000,%00100000
		DEFB %01111111,%11111111,%11111111,%11100000

		


;Pacman moving right
pacr1
			DEFB $91,$02
            DEFB $82,$02
            DEFB $28,$11
            DEFB $28,$11
            DEFB $8a,$02
            DEFB $28,$0a
            DEFB $11,$0a
            DEFB $28,$0a
            DEFB $8a,$02
            DEFB $28,$11
            DEFB $28,$11
            DEFB $82,$02
            DEFB $91,$02

pacr2
            DEFB $03,$02
            DEFB $91,$02
            DEFB $37,$02
            DEFB $37,$02
            DEFB $82,$0a
            DEFB $01,$0a
            DEFB $bf,$0a
            DEFB $01,$0a
            DEFB $82,$0a
            DEFB $37,$02
            DEFB $37,$02
            DEFB $91,$02
            DEFB $03,$02
			
pacr3
            DEFB $0a,$a6
            DEFB $03,$28
            DEFB $26,$8a
            DEFB $26,$8a
            DEFB $91,$14
            DEFB $91,$02
            DEFB $91,$0a
            DEFB $91,$02
            DEFB $91,$14
            DEFB $26,$8a
            DEFB $26,$8a
            DEFB $03,$28
            DEFB $0a,$a6
			
pacr4
            DEFB $0a,$01
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$01

;pacman moving left
pacl1
			DEFB $0a,$96
            DEFB $0a,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $0a,$8a
            DEFB $0a,$37
            DEFB $0a,$03
            DEFB $0a,$37
            DEFB $0a,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $0a,$8a
            DEFB $0a,$96

pacl2
            DEFB $0a,$11
            DEFB $0a,$14
            DEFB $0a,$28
            DEFB $0a,$96
            DEFB $0a,$82
            DEFB $0a,$37
            DEFB $0a,$91
            DEFB $0a,$37
            DEFB $0a,$82
            DEFB $0a,$96
            DEFB $0a,$28
            DEFB $0a,$14
            DEFB $0a,$11
pacl3
            DEFB $26,$02
            DEFB $37,$11
            DEFB $82,$a6
            DEFB $82,$a6
            DEFB $91,$14
            DEFB $0a,$14
            DEFB $0a,$bf
            DEFB $0a,$14
            DEFB $91,$14
            DEFB $82,$a6
            DEFB $82,$a6
            DEFB $37,$11
            DEFB $26,$02			
pacl4
            DEFB $91,$02
            DEFB $82,$02
            DEFB $28,$11
            DEFB $28,$11
            DEFB $8a,$a6
            DEFB $8a,$a6
            DEFB $8a,$a6
            DEFB $8a,$a6
            DEFB $8a,$a6
            DEFB $28,$11
            DEFB $28,$11
            DEFB $82,$02
            DEFB $91,$02
			
;pacman moving down			
pacd1
			DEFB $91,$02
            DEFB $82,$02
            DEFB $28,$11
            DEFB $28,$11
            DEFB $8c,$a6
            DEFB $8c,$a6
            DEFB $8c,$a6
            DEFB $a6,$a6
            DEFB $a6,$a6
            DEFB $a6,$11
            DEFB $11,$11
            DEFB $8b,$27
			DEFB $0a,$0a
pacd2
            DEFB $91,$02
            DEFB $82,$02
            DEFB $28,$11
            DEFB $28,$11
            DEFB $8c,$a6
            DEFB $a6,$a6
            DEFB $11,$a6
            DEFB $02,$23
            DEFB $02,$36
			DEFB $0a,$0a
			DEFB $0a,$0a
			DEFB $0a,$0a
			DEFB $0a,$0a
;pacman moving up
pacu1
			DEFB $8b,$27
            DEFB $11,$11
            DEFB $a6,$11
            DEFB $a6,$a6
            DEFB $a6,$a6
            DEFB $8c,$a6
            DEFB $8c,$a6
            DEFB $8c,$a6
            DEFB $28,$11
            DEFB $28,$11
            DEFB $82,$02
            DEFB $91,$02
			DEFB $0a,$0a
pacu2
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $02,$36
            DEFB $02,$23
            DEFB $11,$a6
            DEFB $a6,$a6
            DEFB $8c,$a6
            DEFB $28,$11
            DEFB $28,$11
            DEFB $82,$02
            DEFB $91,$02
            DEFB $0a,$0a

pacded1	
            DEFB $27,$84
            DEFB $11,$36
            DEFB $a6,$bf
            DEFB $96,$96
            DEFB $96,$14
            DEFB $82,$a6
            DEFB $82,$a6
            DEFB $37,$11
            DEFB $26,$02
            DEFB $0a,$0a
 
pacded2
            DEFB $0a,$0a
            DEFB $12,$24
            DEFB $11,$9b
            DEFB $a6,$01
            DEFB $28,$28
            DEFB $28,$14
            DEFB $28,$14
            DEFB $82,$a6
            DEFB $01,$02
            DEFB $0a,$0a
pacded3
            DEFB $0a,$0a
			DEFB $12,$24
            DEFB $11,$9b
            DEFB $a6,$01
            DEFB $28,$28
            DEFB $28,$14
            DEFB $28,$14
            DEFB $82,$a6
            DEFB $01,$02
            DEFB $0a,$0a
                      
pacded4
			DEFB $0a,$0a
			DEFB $0a,$0a
			DEFB $0a,$0a
            DEFB $02,$01
            DEFB $14,$96
            DEFB $8a,$28
            DEFB $28,$14
            DEFB $82,$a6
            DEFB $01,$02
            DEFB $0a,$0a
			
pacded5
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $11,$9b
            DEFB $8a,$28
            DEFB $8a,$28
            DEFB $28,$14
            DEFB $9b,$11
            DEFB $0a,$0a
pacded6
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $91,$02
            DEFB $8a,$28
            DEFB $8a,$28
            DEFB $28,$14
            DEFB $9b,$11
            DEFB $0a,$0a
pacded7
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $03,$02
            DEFB $91,$02
            DEFB $28,$14
            DEFB $8a,$28
            DEFB $96,$14
            DEFB $36,$11
            DEFB $0a,$0a
            
pacded8		
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $03,$02
            DEFB $91,$02
            DEFB $37,$11
            DEFB $28,$14
            DEFB $96,$14
            DEFB $bf,$a6
            DEFB $0a,$0a
pacded9
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $03,$02
            DEFB $26,$02
            DEFB $26,$02
            DEFB $91,$02
            DEFB $37,$11
            DEFB $01,$02
            DEFB $0a,$0a
pacded10
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $0a,$0a
            DEFB $03,$02
            DEFB $03,$02
            DEFB $03,$02
            DEFB $26,$02
            DEFB $0c,$02
            DEFB $0a,$0a
pacded11
            DEFB $24,$12
            DEFB $9a,$02
            DEFB $0a,$88
            DEFB $0a,$05
            DEFB $8b,$0a
            DEFB $0a,$36
            DEFB $0a,$0a
            DEFB $88,$05
            DEFB $0c,$00
            DEFB $24,$12

pacdedtab
			DEFW pacded1
			DEFW pacded2
			DEFW pacded3
			DEFW pacded4
			DEFW pacded5
			DEFW pacded6
			DEFW pacded7
			DEFW pacded8
			DEFW pacded9
			DEFW pacded10
			DEFW pacded11
			

         
pacrghtab	DEFW pacr1
			DEFW pacr2
			DEFW pacr3
			DEFW pacr4
			
paclfttab	DEFW pacl1
			DEFW pacl2
			DEFW pacl3
			DEFW pacl4

pacdwntab	DEFW pacd1
			DEFW pacd2
			DEFW pacd1
			DEFW pacl4

pacuptab	DEFW pacu1
			DEFW pacu2
			DEFW pacu1
			DEFW pacl4
;ghosts

ghost1
			DEFB $1d,$0a
            DEFB $37,$02
            DEFB $82,$02
            DEFB $28,$02
            DEFB $01,$27
            DEFB $01,$27
            DEFB $04,$11
            DEFB $8a,$11
            DEFB $8a,$11
            DEFB $8a,$11
            DEFB $8a,$11
            DEFB $8a,$11
            DEFB $14,$0e
            DEFB $15,$00
			
ghost2
			DEFB $0a,$02
            DEFB $26,$02
            DEFB $91,$11
            DEFB $37,$a6
            DEFB $19,$36
            DEFB $19,$36
            DEFB $06,$83
            DEFB $82,$14
            DEFB $82,$14
            DEFB $82,$14
            DEFB $82,$14
            DEFB $82,$14
            DEFB $21,$01
            DEFB $03,$a9
ghost3
			DEFB $0a,$27
            DEFB $0a,$a6
            DEFB $03,$14
            DEFB $26,$28
            DEFB $1d,$01
            DEFB $1d,$01
            DEFB $91,$1c
            DEFB $91,$8a
            DEFB $91,$8a
            DEFB $91,$8a
            DEFB $91,$8a
            DEFB $91,$8a
            DEFB $06,$29
            DEFB $0a,$0d
						 
ghost4
			DEFB $0a,$36
            DEFB $0a,$96
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$0d
            DEFB $0a,$0d
            DEFB $03,$14
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$21
            DEFB $0c,$03


ghost1bc
			DEFB $0a,$36
            DEFB $0a,$96
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$0d
            DEFB $0a,$0d
            DEFB $03,$14
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$21
            DEFB $0c,$03
			
ghost2bc
			DEFB $0a,$36
            DEFB $0a,$96
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$0d
            DEFB $0a,$0d
            DEFB $03,$14
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$21
            DEFB $0c,$03			

ghost3bc
			DEFB $0a,$36
            DEFB $0a,$96
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$0d
            DEFB $0a,$0d
            DEFB $03,$14
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$21
            DEFB $0c,$03			
ghost4bc
			DEFB $0a,$36
            DEFB $0a,$96
            DEFB $0a,$8a
            DEFB $0a,$8a
            DEFB $0a,$0d
            DEFB $0a,$0d
            DEFB $03,$14
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$8a
            DEFB $03,$21
            DEFB $0c,$03			
			
ghostf1		DEFB $1d,$0a
            DEFB $37,$02
            DEFB $8b,$02
            DEFB $27,$27
            DEFB $12,$05
            DEFB $32,$05
            DEFB $32,$0e
            DEFB $02,$88
            DEFB $0d,$00
            DEFB $1f,$00
            DEFB $02,$88
            DEFB $1f,$11
            DEFB $14,$0e
            DEFB $15,$00

ghostf2
            DEFB $0a,$02
            DEFB $26,$02
            DEFB $84,$8b
            DEFB $36,$36
            DEFB $88,$0a
            DEFB $34,$27
            DEFB $03,$01
            DEFB $05,$24
            DEFB $01,$27
            DEFB $06,$00
            DEFB $05,$24
            DEFB $06,$83
            DEFB $21,$01
            DEFB $03,$a9
			
ghostf3
            DEFB $0a,$27
            DEFB $0a,$a6
            DEFB $03,$84
            DEFB $1d,$1d
            DEFB $24,$0c
            DEFB $24,$09
            DEFB $84,$29
            DEFB $0a,$0a
            DEFB $19,$0d
            DEFB $0c,$95
            DEFB $0a,$0a
            DEFB $22,$1c
            DEFB $06,$29
            DEFB $0a,$0d
ghostf4
            DEFB $0a,$36
            DEFB $0a,$96
            DEFB $0a,$3f
            DEFB $0a,$16
            DEFB $0a,$0a
            DEFB $0a,$8d
            DEFB $03,$8d
            DEFB $0c,$0a
            DEFB $0c,$01
            DEFB $0c,$0d
            DEFB $0c,$0a
            DEFB $0c,$14
            DEFB $03,$21
            DEFB $0c,$03

ghosteye1
			DEFB $19,$02
            DEFB $19,$02
            DEFB $0a,$02
ghosteye2
			DEFB $1d,$27
            DEFB $1d,$27
            DEFB $0c,$05
ghosteye3
			DEFB $0a,$36
            DEFB $0a,$36
            DEFB $0a,$15
ghosteye4
            DEFB $0a,$01
            DEFB $0a,$01
            DEFB $0a,$03
 
 

ghostetab	DEFW ghosteye1
			DEFW ghosteye2
			DEFW ghosteye3
			DEFW ghosteye4
			
ghostedtab				
			DEFW ghosteye3
			DEFW ghosteye3
			DEFW ghosteye3
			DEFW ghosteye3
			
ghosttab	DEFW ghost1
			DEFW ghost2
			DEFW ghost3
			DEFW ghost4
			
ghostftab	DEFW ghostf1
			DEFW ghostf2
			DEFW ghostf3
			DEFW ghostf4

ghostf2tab	DEFW ghostf1
			DEFW ghostf2
			DEFW ghost3
			DEFW ghost4			

ghostdtab	DEFW ghost2
			DEFW ghost2
			DEFW ghost2
			DEFW ghost2	
			
ghostdftab	DEFW ghostf3
			DEFW ghostf3
			DEFW ghostf3
			DEFW ghostf3

ghostdf2tab	DEFW ghostf3
			DEFW ghostf3
			DEFW ghost3
			DEFW ghost3

			

			
cherry
            DEFB $0a,$03
            DEFB $0a,$91
            DEFB $0a,$87
            DEFB $0a,$12
            DEFB $26,$15
            DEFB $01,$00
            DEFB $91,$8f
            DEFB $91,$01
            DEFB $91,$96
            DEFB $26,$96
            DEFB $0a,$96
            DEFB $0a,$bf
 
            		
			
;compressed version of maze, it's RLE + is just the pills - for redrawing our 'hires' maze after each game/screen 
rlemaze
            DEFB 2
			DEFW rle1
			DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle3
			
            DEFB 3
			DEFW rle2
			DEFB 1
			DEFW rle4			
			
			DEFB 1
			DEFW rle5
			DEFB 1
			DEFW rle6
			
            
            DEFB 2
			DEFW rle7
			
            DEFB 1
			DEFW rle6
			
            DEFB 1
			DEFW rle5
			
            DEFB 1
			DEFW rle4
			
            DEFB 3
			DEFW rle2
			
            DEFB 2
			DEFW rle3
            DEFB 6
			DEFW rle2
			
            DEFB 2
			DEFW rle8			
            DEFB 6
			DEFW rle2
			
            DEFB 2
			DEFW rle9
			
			DEFB 6
			DEFW rle2
            
            DEFB 2
			DEFW rle9
			DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle9			
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle9
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle9
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle9
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle9
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle16		
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle10
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle10
            DEFB 3
			DEFW rle2
            DEFB 1
			DEFW rle4
            DEFB 1
			DEFW rle5
            DEFB 1
			DEFW rle6
            DEFB 2
			DEFW rle11
            DEFB 1
			DEFW rle6
            DEFB 1
			DEFW rle5
            DEFB 1
			DEFW rle4
            DEFB 3
			DEFW rle2
            DEFB 2
			DEFW rle12
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle12
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle13
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle14
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle14
            DEFB 6
			DEFW rle2
            DEFB 2
			DEFW rle15
			
			
rle1			
			DEFB $c4,$0a,$cb,$16,$02,$0a,$0a,$cb,$16,$02
rle2			
			DEFB $de,$0a
rle3			
            DEFB $c4,$0a,$02,$c4,$0a,$02,$c5,$0a,$02,$0a,$0a,$02,$c5,$0a,$02,$c4,$0a,$02			
rle4
            DEFB $c3,$0a,$03,$02,$d7,$0a,$03,$02						
rle5			
            DEFB $c3,$0a,$26,$02,$d7,$0a,$26,$02															
rle6			
            DEFB $c3,$0a,$91,$11,$d7,$0a,$91,$11												
rle7			
            DEFB $c3,$0a,$91,$11,$c4,$0a,$02,$c5,$0a,$02,$0a,$0a,$02,$c5,$0a,$02,$c3,$0a,$91,$11			
rle8
			DEFB $c4,$0a,$c7,$16,$02,$ca,$0a,$c7,$16,$02						
rle9            
            DEFB $c9,$0a,$02,$ce,$0a,$02,$c5,$0a            			
rle10
			DEFB $c4,$0a,$02,$c4,$0a,$02,$0a,$0a,$02,$c8,$0a,$02,$0a,$0a,$02,$c4,$0a,$02
rle11
			DEFB $c3,$0a,$91,$04,$16,$02,$0a,$0a,$cf,$16,$02,$0a,$0a,$16,$0b,$11            
rle12            
            DEFB $c6,$0a,$02,$0a,$0a,$02,$0a,$0a,$02,$c8,$0a,$02,$0a,$0a,$02,$0a,$0a,$02,$c2,$0a
rle13
			DEFB $c4,$0a,$c5,$16,$02,$0a,$0a,$c3,$16,$02,$0a,$0a,$c3,$16,$02,$0a,$0a,$c5,$16,$02
rle14
			DEFB $c4,$0a,$02,$ca,$0a,$02,$0a,$0a,$02,$ca,$0a,$02
rle15            
			DEFB $c4,$0a,$d9,$16,$02
rle16
			DEFB $c4,$0a,$c5,$16,$02,$ce,$0a,$c5,$16,$02
			
