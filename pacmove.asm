;
; pacmove
;
; routines for pacman movement

;see if pacman can move if a given direction
canmove
	push hl
	ld hl,(pacmpos)	
	ld de,MAZE_WIDTH
;see which direction we're checking
	cp CHECK_DOWN
	jr nz,nocheckdown
;if we're not moving up, only allow a 'down' on pos 0
	ld a,(pacdir)
	cp PAC_UP
	jr z,chkgoup
;not moving up, so if gfx not at 0, don't allow a down
	ld a,(pacgfx)
	or a
	jr z,chkgoup
;not on a pacgfx 0, so don't allow down
	xor a
	jr movechk1
chkgoup
	add hl,de
	jr endcan
nocheckdown
	cp CHECK_UP
	jr nz,nocheckup
;if we're not moving down only allow 'up' on a pos 0
	ld a,(pacdir)
	cp PAC_DOWN
	jr z,chkgodown
;not moving down, so gfx not at 0, don't allow a up
	ld a,(pacgfx)
	or a
	jr z,chkgodown
;not on a pacgfx 0, do allow up
	xor a
	jr movechk1
chkgodown
	ld de,-(MAZE_WIDTH)
	add hl,de
	jr endcan
nocheckup	
	cp CHECK_LEFT
	jr nz,nocheckleft
;if we're not moving right, only allow gfx 0
	ld a,(pacdir)
	cp PAC_RIGHT
	jr z,chkgoright
;not moving right, so if gfx not at 0, don't allow a left
	ld a,(pacgfx)
	or a
	jr z,chkgoright
;not on a pacgfx 0, so don't allow left
	xor a
	jr movechk1
chkgoright

	dec hl
	jr endcan	
nocheckleft
;must be checking right
;if we're not moving left, only allow gfx 0

	ld a,(pacdir)
	cp PAC_LEFT
	jr z,chkgoleft
;not moving left, so if gfx not 0, don't allow a right
	ld a,(pacgfx)
	or a
	jr z,chkgoleft
;not on a pacgfx 0, do don't allow right
	xor a
	jr movechk1
chkgoleft
	inc hl
endcan
;set flag based on wall or not
	ld a,(hl)
	and 2
	pop hl
	ret
movechk1
;set flag based on a
	pop hl
;set our flags...
	dec a
	ret
	
;move pacman

movepacman
;if we're not stationary, rub out pacman
	ld a,(pacdir)
	cp PAC_STILL
	jr z,donotrub	
	call rubpacman
donotrub
	ld a,(pacdir)

;now... check which way we're moving
	cp	PAC_RIGHT
	jr	nz,notpright
	
	ld a,(pacgfx)
	or a
	jr nz,norghtchk
;see if we're hitting the wall

;;;;;;;;;;;;;;

;get the position with maze
	ld hl,(pacmpos)	
	
;go to next pac pos, see if it's a tunnel
	inc hl
	bit PAC_TUNNEL,(hl)
	jr z,notunnelright
;ok - we hit the tunnel heading right, set pacx and pacpos to appear the right

	dec hl
	ld de,-26
	add hl,de
	ld (pacmpos),hl
	
	ld hl,(pacpos)
	
;do a negative add to save time
	add hl,de

	ld (pacpos),hl
	ld a,(pacx)
	add a,e
	ld (pacx),a	
	
	ret

notunnelright
;now, check if it's a wall
	bit PAC_WALL,(hl)
	jr z,norghtwall
;hit a wall going right
;set pacman to no movement
	ld a,PAC_STILL
	ld (pacdir),a
	ld hl,pacr3
	ld (paclast),hl
	xor a
	ld (pacgfx),a
	
;check for demo
	ld a,(demo)
	cp 1
	jp z,demomove
	
	ret
	
	
	
norghtwall
	ld a,(pacgfx)
norghtchk

	inc a
	
	cp $4
	jr	nz,notpacgend
	
	ld de,(pacpos)
	inc de
	ld (pacpos),de
	ld de,(pacmpos)
	inc de
	ld (pacmpos),de
	ld hl,pacx
	inc (hl)

	xor a
	
notpacgend
	ld (pacgfx),a
	ret
notpright
;not moving right, check for left
	cp PAC_LEFT
	jr nz,notpleft

	ld a,(pacgfx)
	inc a
	
	cp $4
	jr	nz,notpacgend
	
;get the position with maze

	ld hl,(pacmpos)
	
;go to next pac pos, see if it's a tunnel
	dec hl
	bit PAC_TUNNEL,(hl)
	jr z,notunnelleft
;ok - we hit the tunnel heading left, set pacx and pacpos to appear on the right
	ld hl,(pacpos)
	ld de,26
	add hl,de
	ld (pacpos),hl
	
	ld hl,(pacmpos)
	add hl,de
	ld (pacmpos),hl
	
	ld a,(pacx)
	add a,e
	ld (pacx),a
	ret 

notunnelleft	
;now, check if it's a wall
	bit PAC_WALL,(hl)
	jr z,noleftwall
;hit a wall going left
;set pacman to no movement
	ld a,PAC_STILL
	ld (pacdir),a
	ld hl,pacl4
	ld (paclast),hl
	xor a
	ld (pacgfx),a
;check for demo
	ld a,(demo)
	cp 1
	jp z,demomove
	ret	
	
noleftwall
;didn't hit the wall moving left, carry on...	
	ld de,(pacpos)
	dec de
	ld (pacpos),de
	
	ld de,(pacmpos)
	dec de
	ld (pacmpos),de
	
	ld hl,pacx
	dec (hl)
	xor a	
	ld (pacgfx),a
	ret
notpleft
;not moving right or left, check down
	cp PAC_DOWN
	jr nz,notpdown
;moving down
	ld hl,(pacpos)
	ld de,DISPLEN*2
	add hl,de
	
	ld (pacpos),hl
	ld a,(pacgfx)
	inc a
	cp $4
	jp	nz,notpacgend
	
	ld hl,pacy
	inc (hl)
		
	ld de,MAZE_WIDTH
	ld hl,(pacmpos)
	add hl,de
	ld (pacmpos),hl
	
		
	xor a
	ld (pacgfx),a
	
;check if we hit a wall
	ld hl,(pacmpos)	
	ld de,MAZE_WIDTH
	add hl,de
	bit PAC_WALL,(hl)
	jr z,nodownwall
	ld a,PAC_STILL
	ld (pacdir),a
	ld hl,pacd1
	ld (paclast),hl
	
;check for demo
	ld a,(demo)
	cp 1
	jp z,demomove
	
nodownwall
	ret
notpdown

	cp PAC_UP
	jr z,gpup
	ret
gpup	
;moving up
	ld hl,(pacpos)
;do a negative add to save time
	ld de,-(DISPLEN*2)
	add hl,de
	ld (pacpos),hl
	
	ld a,(pacgfx)
;	cp $1
;faster and smaller than cp $1
	dec a
	jr nz,odd1
;check for the wall hit here
	ld hl,(pacmpos)
;do a negative add to save time
	ld de,-(MAZE_WIDTH)
	add hl,de
	
	bit PAC_WALL,(hl)
	jr z,odd1
	ld a,PAC_STILL
	ld (pacdir),a
	ld hl,pacl4
	ld (paclast),hl	
;check for demo
	ld a,(demo)
	cp 1
	jp z,demomove
		

odd1
	ld a,(pacgfx)
	dec a
;see if we looped back to $ff by checking the sign of the result	
	jp p,notpacgend

	ld hl,pacy
	dec (hl)
	
	ld hl,(pacmpos)
;do a negative add to save time
	ld de,-(MAZE_WIDTH)
	add hl,de


	ld (pacmpos),hl
	ld a,3
	ld (pacgfx),a	
	ret
	
	
;rub out the pacman
rubpacman	
	ld hl,(pacpos)
	ld b,13
	ld a,$0a
	ld de,32
pacrublp
	ld (hl),a
	inc hl
	ld (hl),a
	add hl,de
	djnz pacrublp	
	ret

;draw pacman	
drawpacman
;default
	
	ld a,(pacdir)
	cp PAC_RIGHT
	jr	nz,nomoveright
	
	ld de,pacrghtab
	jr cmnpactab
		

	
nomoveright
	cp PAC_LEFT
	jr nz,nomoveleft
	
	ld de,paclfttab
	jr cmnpactab

	
nomoveleft
	cp PAC_DOWN
	jr	nz,nomovedown
	
;look up pac down graphic from our table	
	ld de,pacdwntab
cmnpactab	
	ld a,(pacgfx)	
	add a,a
	ld h,0 
	ld l,a 

	add hl,de
	
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	
	jr drawpac
	
	
nomovedown


	cp PAC_UP
	jr	nz,nomoveup
	
;look up pac down graphic from our table	
	ld de,pacuptab
	jr cmnpactab
	
nomoveup

;must be not moving
	ld de,(paclast)
	
	
drawpac	
	ld hl,(pacpos)
	ld bc,$0d20

drwpac1x
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
	djnz drwpac1x
	jp retdrawpacman
	