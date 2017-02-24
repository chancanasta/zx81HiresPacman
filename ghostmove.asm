;
; ghostmove
; 
; ghost movement routine
;


moveghosts
	ld a,(slowcnt)
	or a
	jr z,order1b
;move ghost 1 into generic
	ld hl,gh1x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh1x
	ld hl,ghgx
	ld bc,13
	ldir
	
;move ghost 2 into generic
	ld hl,gh2x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh2x
	ld hl,ghgx
	ld bc,13
	ldir
	

;move ghost 3 into generic
	ld hl,gh3x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh3x
	ld hl,ghgx
	ld bc,13
	ldir
	
;move ghost 4 into generic
	ld hl,gh4x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh4x
	ld hl,ghgx
	ld bc,13
	ldir
	
	
	jp retmoveghosts

order1b
;move ghost 4 into generic
	ld hl,gh4x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh4x
	ld hl,ghgx
	ld bc,13
	ldir
	
;move ghost 3 into generic
	ld hl,gh3x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh3x
	ld hl,ghgx
	ld bc,13
	ldir
	

;move ghost 2 into generic
	ld hl,gh2x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh2x
	ld hl,ghgx
	ld bc,13
	ldir
	
;move ghost 1 into generic
	ld hl,gh1x
	ld de,ghgx
	ld bc,15
	ldir
	call submoveghosts

	ld de,gh1x
	ld hl,ghgx
	ld bc,13
	ldir
	
	
	jp retmoveghosts

	
submoveghosts
	;rub out the ghost

	call rubghost
	

	
;now firgure out if we're moving or not
	ld a,(ghgmode)
	cp SCARED_MODE
	jr z,checkmove
	cp CAGE_MODE
	jr nz,pdontmove
checkmove
	ld a,(slowcnt)
	or a
	jr nz,pdontmove
	ret
pdontmove
;figure out which direction we're moving in


	ld a,(ghgdir)
	cp GHOST_RIGHT
	jp nz,pghostright
;
;GHOST GOING RIGHT
;
ghostright

;see if we're at pos 0
	ld a,(ghggfx)
	cp $3
	jp nz,noghstrcheck
;at pos 0, see if we're going to hit a wall
	ld hl,(ghgmpos)	
;go to next position
	inc hl
;now, check if it's a wall
	bit PAC_WALL,(hl)
	jp z,noghrghtwall
;hit a wall going right
;change to down or up
	SETIGNORE
	
	
;these vars will be set the same no matter if we go up or down
	xor a
	ld (ghggfx),a

;see where target y is...
	ld a,(ghgtary)
	ld b,a
	ld a,(ghgy)
	cp b	

	jr c,prefdown1

;preference for UP
;see if we can go up		
;do a negative add to save time
	ld de,-(MAZE_WIDTH+1)
	add hl,de

	bit PAC_WALL,(hl)
	jr nz,nogup2	
;we can go up
	
	ld a,GHOST_UP
	ld (ghgdir),a
	
;	SETDEBUG	
;	ld (hl),1
;	MOVEDEBUG

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
	
	
	ret
nogup2
;must be able to go down
	ld a,GHOST_DOWN
	ld (ghgdir),a
	ret
	
prefdown1	
;preference for down
;see if we can go down		
	ld de,MAZE_WIDTH-1
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,nogdown1	

	

	ld a,GHOST_DOWN
	ld (ghgdir),a
	
	
;	SETDEBUG	
;	ld (hl),2
;	MOVEDEBUG	
	
;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	ret
nogdown1
;must be able to go up


	ld a,GHOST_UP
	ld (ghgdir),a
	
	
;	SETDEBUG
;	ld (hl),3
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
	
	ret
noghrghtwall
;not hitting a wall, 
;see if we hit the tunnel
	bit PAC_TUNNEL,(hl)
	jr z,nogtunnelright
;ok - we hit the tunnel heading right, set ghostx and ghostpos to appear on the left
	ld hl,(ghgpos)
	
;do a negative add to save time
	ld de,-26
	add hl,de

	ld (ghgpos),hl
	ld a,(ghgx)
	add a,e
	ld (ghgx),a
	
	ld hl,(ghgmpos)
	add hl,de
	ld (ghgmpos),hl
	
	ret
nogtunnelright
;see if we hit an intersection	
	dec hl
	
	ld a,(ghgmode)
	cp EYES_MODE
	jr nz,noteyes1
	bit PAC_CINTER,(hl)
	jr z,noteyes1
;eaten ghost has hit the cage enter intersection
	xor a
	ld (ghggfx),a

	ld a,GHOST_DOWN
	ld (ghgdir),a

	
;	SETDEBUG	
;	ld (hl),4
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
	
	ret	
noteyes1
;check for an ignore
	ld a,(ghgign)
	or a
	jr z,grightintersect
	xor a
	ld (ghgign),a
	jp noghrghtint1
	
grightintersect	
	bit PAC_INTERSECT,(hl)
	jp z,noghrghtint1
	
	
;hit an intersection, we can:
;go up, go down, continue on
;see where target y is...
	ld a,(ghgtary)
	ld b,a
	ld a,(ghgy)
	cp b	
;if target y is the same - just carry on
	jp z,noghrghtint1
	jr c,intdown1
;target y is less, go up if we can
;do a negative add to save time
	ld de,-(MAZE_WIDTH)
	add hl,de

	bit PAC_WALL,(hl)
	jr nz,noghrghtint1
;no wall - we can go up
	xor a
	ld (ghggfx),a

	
	
	ld a,GHOST_UP
	ld (ghgdir),a
	
	
;	SETDEBUG
;	ld (hl),5
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	SETIGNORE
	ret
	
intdown1
;target y is larger, go down if we can
	ld de,MAZE_WIDTH
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,noghrghtint1
	xor a
	ld (ghggfx),a

	
;	SETDEBUG
;	ld (hl),6
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
			
	ld a,GHOST_DOWN
	ld (ghgdir),a
	SETIGNORE
	ret

noghrghtint1
	ld a,(ghggfx)
noghstrcheck	
;loop gfx		
	inc a
	cp $4
	jp c,vendghostmove	
;got to end of gfx pos, going to move to the right	
	ld hl,ghgx
	inc (hl)

	xor a
	ld hl,(ghgpos)
	inc hl
	ld (ghgpos),hl	
	
	ld hl,(ghgmpos)
	inc hl
	ld (ghgmpos),hl
	ld (ghggfx),a
	ret
	
pghostright
	cp GHOST_LEFT
	jp nz,pghostleft
;	
;GHOST MOVING LEFT	
;
ghostleft
;heading left
;see if we're at pos 0
	ld a,(ghggfx)
	or a
	jp nz,noghstlcheck
;at pos 0, see if we're going to hit a wall

	ld hl,(ghgmpos)

;go to next position
	dec hl
;now, check if it's a wall
	bit PAC_WALL,(hl)
	jp z,noghleftwall
	

;change to down or up
	xor a
	ld (ghggfx),a	

;check preference, up or down
	ld a,(ghgtary)
	ld b,a
	ld a,(ghgy)
	cp b	
	jr c,prefdown2
prefup
;preference for up	
;do a negative add to save time
	ld de,-(MAZE_WIDTH-1)
	add hl,de

	bit PAC_WALL,(hl)
	jr nz,nogup1

	
;	SETDEBUG
;	ld (hl),7
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
	
	ld a,GHOST_UP
	ld (ghgdir),a
	ret
nogup1
;must be able to go down

;	SETDEBUG	
;	ld (hl),8
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_DOWN
	ld (ghgdir),a
	ret	

prefdown2
;preference for down
;see if we can go down		
	ld de,MAZE_WIDTH+1
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,nogdown2

	
;	SETDEBUG
;	ld (hl),9
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	ld a,GHOST_DOWN
	ld (ghgdir),a
	ret
nogdown2
;must be able to go up

	
;	SETDEBUG
;	ld (hl),10
;	MOVEDEBUG	
	
;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
	
	ld a,GHOST_UP
	ld (ghgdir),a
	ret	

noghleftwall
;;

;;;
;see if we hit the tunnel
	bit PAC_TUNNEL,(hl)
	jr z,nogtunnelleft
;ok - we hit the tunnel heading left, set ghostx and ghostpos to appear on the right
	ld hl,(ghgpos)
	ld de,26
	add hl,de
	ld (ghgpos),hl
	
	ld hl,(ghgmpos)
	add hl,de
	ld (ghgmpos),hl
	
	ld a,(ghgx)
	add a,e
	ld (ghgx),a
	ret 

nogtunnelleft	

;not hitting a wall, see if we hit an intersection	
	inc hl
	
	ld a,(ghgmode)
	cp EYES_MODE
	jr nz,noteyes2
	bit PAC_CINTER,(hl)
	jr z,noteyes2
;eaten ghost has hit the cage enter intersection
	xor a
	ld (ghggfx),a

	
;	SETDEBUG	
;	ld (hl),11
;	MOVEDEBUG	
	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	ld a,GHOST_DOWN
	ld (ghgdir),a
	
	ret	
noteyes2
	ld a,(ghgign)
	or a
	jr z,gleftintersect
	xor a
	ld (ghgign),a
	jp noghleftint1
gleftintersect
	
	bit PAC_INTERSECT,(hl)
	jp z,noghleftint1
	

;hit an intersection, we can:
;go up, go down, continue on
;see where target y is...
	ld a,(ghgtary)
	ld b,a
	ld a,(ghgy)
	cp b	
;if target y is the same - just carry on
	jp z,noghleftint1
	jr c,intdown2
;target y is less, go up if we can
;do a negative add to save time
	ld de,-(MAZE_WIDTH)
	add hl,de

	bit PAC_WALL,(hl)
	jp nz,noghleftint1
;no wall - we can go up
	SETIGNORE

	xor a
	ld (ghggfx),a

	
;	SETDEBUG	
;	ld (hl),12
;	MOVEDEBUG	
	
;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
	
	ld a,GHOST_UP
	ld (ghgdir),a
	ret
	
intdown2
;target y is larger, go down if we can
	ld de,MAZE_WIDTH
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,noghleftint1
	
	SETIGNORE

	xor a
	ld (ghggfx),a
		
;	SETDEBUG	
;	ld (hl),13
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
		
	ld a,GHOST_DOWN
	ld (ghgdir),a
	ret

noghleftint1

;;;;;;;;;;
	ld a,(ghggfx)

noghstlcheck	
;loop gfx		
	dec a
;see if we looped back to $ff by checking the sign of the result	
	jp p,vendghostmove
;got to end of gfx pos, going to move to the left	
	ld hl,ghgx
	dec (hl)
	ld a,3
	ld hl,(ghgpos)
	dec hl
	ld (ghgpos),hl	
	
	ld hl,(ghgmpos)
	dec hl
	ld (ghgmpos),hl
	
vendghostmove	
	ld (ghggfx),a
	ret

pghostleft
	cp GHOST_UP
	jp nz,pghostup
	
;
;GHOST GOING UP
;
ghostup
;moving up
	ld hl,(ghgpos)
;do a negative add to save time
	ld de,-DISPLEN*2
	add hl,de
	
	ld (ghgpos),hl
	
	ld hl,(ghgmpos)
	
	ld a,(ghggfx)
;faster than cp $1
	dec a
	jp nz,noghupint1
;check for the wall hit here
	
;do a negative add to save time
	ld de,-MAZE_WIDTH
	add hl,de
	
	bit PAC_WALL,(hl)
	jp z,ghostodd1
;check for ghost cage
	ld a,(ghgmode)
	cp CAGE_MODE
	jr nz,notcagemodeup
;cage mode up, so go down
	xor a
	ld (ghggfx),a

	
;	SETDEBUG	
;	ld (hl),14
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
			
	ld a,GHOST_DOWN
	ld (ghgdir),a
	ret
notcagemodeup	
;if we're going up and we hit the cage 'door', let the ghost through
	bit PAC_CAGE,(hl)
	jp nz,ghostodd1	
;hit a wall going up
;change to right or left
	SETIGNORE

	ld a,2
	ld (ghggfx),a

;check preference, left or right
;see where target x is...
	ld a,(ghgtarx)
	ld b,a
	ld a,(ghgx)
	cp b	
	jr c,prefright1
	

;preference for moving left
	ld de,MAZE_WIDTH-1
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,nogleft1

	
;	SETDEBUG
;	ld (hl),15
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	
	ld a,GHOST_LEFT
	ld (ghgdir),a
	ret
nogleft1
;must be able to go right

	
;	SETDEBUG	
;	ld (hl),16
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_RIGHT	
	ld (ghgdir),a
	ret

	

prefright1
;preference for going right	
;see if we can go right
	ld de,MAZE_WIDTH+1
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,nogright1

	
;	SETDEBUG	
;	ld (hl),17
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	
	ld a,GHOST_RIGHT
	ld (ghgdir),a
	ret
nogright1
;must be able to go left

	
;	SETDEBUG	
;	ld (hl),18
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_LEFT
	ld (ghgdir),a
	ret


ghostodd1
	
;not hitting a wall, see if we hit an intersection
	ld a,(ghgign)
	or a
	jr z,gupintersect
	xor a
	ld (ghgign),a
	jp noghupint1
gupintersect
	
	ld hl,(ghgmpos)	
	bit PAC_INTERSECT,(hl)
	jp z,noghupint1

	
;hit an intersection, we can:
;go left, go right, continue on
;see where target x is...
	ld a,(ghgtarx)
	ld b,a
	ld a,(ghgx)
	cp b	
;if target x is the same - just carry on
	jp z,noghupint1

	jr c,intdown3
;target x is less, go left if we can
	dec hl
	bit PAC_WALL,(hl)
	jr nz,noghupint1
;no wall - we can go left

	ld a,2
	ld (ghggfx),a
	
	
;	SETDEBUG
;	ld (hl),19
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	
	ld a,GHOST_LEFT
	ld (ghgdir),a
	SETIGNORE
	ret
	
intdown3
;target x is larger, go right if we can
	inc hl
	bit PAC_WALL,(hl)
	jr nz,noghupint1

	ld a,2
	ld (ghggfx),a

	
;	SETDEBUG	
;	ld (hl),20
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_RIGHT
	ld (ghgdir),a
	SETIGNORE
	ret

noghupint1



;;;;;;;;;;;;;;;;;;;;;


	ld a,(ghggfx)
	dec a
;see if we looped back to $ff by checking the sign of the result	
	jp p,vendghostmove	

	
	ld hl,ghgy
	dec (hl)
	
	ld a,3
	ld (ghggfx),a

	
;;;;
;;;;;;
	ld hl,(ghgmpos)
;do a negative add to save time
	ld de,-(MAZE_WIDTH)
	add hl,de
	
	ld (ghgmpos),hl
	
;;;;;;;;;;


	ret
	
pghostup
;got to here, so....
;	
;GHOST GOING DOWN
;
ghostdown
;has to be....
;moving down

	ld hl,(ghgpos)
	ld de,DISPLEN*2
	add hl,de
	
	ld (ghgpos),hl
	ld a,(ghggfx)
	inc a
	cp $4
	jp	nz,vendghostmove
	ld hl,ghgy
	inc (hl)
	ld de,MAZE_WIDTH
	ld hl,(ghgmpos)
	add hl,de
	ld (ghgmpos),hl	
	xor a
	ld (ghggfx),a
	
;check if we hit a wall - mazepos already in hl
	ld de,MAZE_WIDTH
	add hl,de
	bit PAC_WALL,(hl)
	jp z,nogdownwall
;hit a wall going down

;check for ghost cage
	ld a,(ghgmode)
	cp CAGE_MODE
	jr nz,notcagemodedwn
;cage mode up, so go down
	xor a
	ld (ghggfx),a

	ld hl,ghgccnt
	dec (hl)
	ld a,(hl)
	or a
	jr nz,noendgcnt
	ld a,SCATTER_MODE
	ld (ghgmode),a
noendgcnt

	
;	SETDEBUG	
;	ld (hl),21
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_UP
	ld (ghgdir),a
	ret
notcagemodedwn

	SETIGNORE

;change to right or left

	ld a,2
	ld (ghggfx),a

;check preference, left or right
;see where target x is...
	ld a,(ghgtarx)
	ld b,a
	ld a,(ghgx)
	cp b	
	jr c,prefright2


;preference for left
;see if we can go left
;do a negative add to save time
	ld de,-(MAZE_WIDTH+1)
	add hl,de

	bit PAC_WALL,(hl)
	jr nz,nogleft2

	
;	SETDEBUG	
;	ld (hl),22
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	
	ld a,GHOST_LEFT
	ld (ghgdir),a
	ret
nogleft2
;must be able to go right

	
;	SETDEBUG	
;	ld (hl),23
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_RIGHT
	ld (ghgdir),a
	ret
	
prefright2	
;preference for right
;see if we can go right
;do a negative add to save time
	ld de,-(MAZE_WIDTH-1)
	add hl,de
	bit PAC_WALL,(hl)
	jr nz,nogright2

	
;	SETDEBUG	
;	ld (hl),24
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	
	ld a,GHOST_RIGHT
	ld (ghgdir),a
	ret
nogright2
;must be able to go left

	
;	SETDEBUG	
;	ld (hl),25
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		

	ld a,GHOST_LEFT
	ld (ghgdir),a
	
nogdownwall
;check for an ignore
	ld a,(ghgign)
	or a
	jr z,gdwnintersect
	xor a
	ld (ghgign),a
	ret
gdwnintersect
;not hitting a wall, see if we hit an intersection	
;mazepos already in hl

	ld de,-(MAZE_WIDTH)
	add hl,de		
	bit PAC_INTERSECT,(hl)
	jp z,noghdownint1
	

;hit an intersection, we can:
;go left, go right, continue on
;see where target x is...
	ld a,(ghgtarx)
	ld b,a
	ld a,(ghgx)
	cp b	
;if target x is the same - just carry on
	jp z,noghdownint1

	jr c,intdown4
;target x is less, go left if we can
	dec hl
	bit PAC_WALL,(hl)
	jp nz,noghdownint1
;no wall - we can go left

	ld a,2
	ld (ghggfx),a
	
	
;	SETDEBUG	
;	ld (hl),26
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	ld a,GHOST_LEFT
	ld (ghgdir),a
	SETIGNORE
	ret
	
intdown4
;target x is larger, go right if we can
	inc hl
	bit PAC_WALL,(hl)
	jr nz,noghdownint1

	ld a,2
	ld (ghggfx),a
	
	
;	SETDEBUG
;	ld (hl),27
;	MOVEDEBUG	

;	SETDEBUG
;	ld a,(ghgtarx)
;	ld (hl),a
;	MOVEDEBUG
		
	
	ld a,GHOST_RIGHT
	ld (ghgdir),a
	SETIGNORE
noghdownint1
	ret
	