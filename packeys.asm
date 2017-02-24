;
; packeys.asm
;
; key based routines

;read keys
readkeys
;a bit lazy - call the ROM routine to get the zone values into HL
	call KSCAN
;test for zones...
;exit on q
; 	bit 2,l
;	jr nz,noexkey
;	ld a,QUIT_GAME
;	ld (exitlp),a
;	jp retreadkeys
noexkey	
;check for left
	bit 3,l	
	jr nz,noleft
;if we're already moving left do nothing
	ld a,(pacdir)
	cp PAC_LEFT
	jr nz,nnoleft
	jp retreadkeys
nnoleft
	
	bit 5,h
	jr nz,noleft
;can we move left from here ?
	ld a,CHECK_LEFT
	call canmove
	jr nz,noleft
	ld a,PAC_LEFT
	ld (pacdir),a
	xor a
	ld (pacgfx),a
	jp retreadkeys
noleft
;right, up and down a bit more tricky
	bit 4,l
	jp nz,norud
;right, up or down has been pressed (possibly)
;down
	bit 5,h
	jr nz,nodown
;if we're already moving down do nothing
	ld a,(pacdir)
	cp PAC_DOWN
	jr nz,nnodown
	jp retreadkeys
nnodown
	
;valid pos for down?
	ld a,CHECK_DOWN
	call canmove
;ok, complicated stuff 
	jr nz,nodown
;save the last pac direction to b
	ld a,(pacdir)
	ld b,a
	ld a,PAC_DOWN
	ld (pacdir),a
;we need to figure out which pacgfx to use, if we're moving up, it gets complicated..
	ld a,b
	cp PAC_UP
	jr nz,oknotup
	
;we're moving up - so need to figure out which gfx to use
	ld a,(pacgfx)
	jr okup
oknotup
	xor a
okup
	ld (pacgfx),a
	jp retreadkeys
nodown
;up
	bit 4,h
	jr nz,noup
;if we're already moving up do nothing
	ld a,(pacdir)
	cp PAC_UP
	jr	z,noup
		
;valid pos for up?
	ld a,CHECK_UP
	call canmove
;ok, complicated stuff 
	jr nz,noup
;save the last pac direction to b
	ld a,(pacdir)
	ld b,a
	ld a,PAC_UP
	ld (pacdir),a
;we need to figure out which pacgfx to use, if we were moving down, it gets complicated..
	ld a,b
	cp PAC_DOWN
	jr nz,oknotdown
;we were moving down - so need to figure out which gfx to use
	ld a,(pacgfx)
	jr okdown
oknotdown
	xor a
okdown
	ld (pacgfx),a
	jp retreadkeys
noup
	

;right
	bit 3,h
	jr nz,norud
;check if we're already moving right
	ld a,(pacdir)
	cp PAC_RIGHT
	jr z,norud
	
;can we move right from here ?
	ld a,CHECK_RIGHT
	call canmove
	jr nz,norud
	
	ld a,PAC_RIGHT
	ld (pacdir),a

norud

	jp retreadkeys