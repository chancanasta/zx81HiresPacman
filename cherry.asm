;
; Cherry
;
; routines for the 'cherry'

handlecherry
;routine to popup a cherry now and again

;check if cherry is there or not
	ld a,(chyf)
	or a
	jr z,nocherry
;cherry is active - do collision detection
	ld hl,pacx
	ld a,14
;compare x
	cp (hl)
	jr nz,nocherry

	inc hl
	ld a,11
	cp (hl)
	jr nz,nocherry
;got cherry
	ld bc,CHERRY_SCORE
	call incscore
	
	ld hl,chycnt
	;ld a,FPS
	ld (hl),FPS	
	ld hl,chycnt2	
	jr clearcherry

nocherry

;do the counter thing
	ld hl,chycnt
	dec (hl)
	ld a,(hl)
	or a
	jr nz,cherryon1
	;ld a,FPS
	ld (hl),FPS
	ld hl,chycnt2
	dec (hl)
	ld a,(hl)
	or a
	jr nz,cherryon1
	
;flip point...
;see if cherry is on or off
	ld a,(chyf)
	or a
	jr z,cherryisoff
;cherry is on - so clear it
clearcherry
	xor a
	ld (chyf),a
	;ld a,CHERRY_OFF
	ld (hl),CHERRY_OFF	
	jr rubcherry

cherryisoff
;cherry is off - so display it
	;ld a,CHERRY_ON
	ld (hl),CHERRY_ON
	ld a,1
	ld (chyf),a
	jr drawcherry
	
cherryon1
	ret
	
drawcherry
	ld de,cherry
	ld hl,(chypos)
	ld bc,$0c20
	
drawch1
	push bc
	ld a,(de)
	ld (hl),a
	inc hl
	inc de
	ld a,(de)
	ld (hl),a
	inc de
	ld b,0
	add hl,bc
	pop bc
	djnz drawch1
	ret

rubcherry
	ld hl,(chypos)
	ld b,12
	ld a,BLANK_BITS
	ld de,32
chyrublp
	ld (hl),a
	inc hl
	ld (hl),a
	add hl,de
	djnz chyrublp
	ret
