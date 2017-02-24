;
; ghosts
;
; routines for ghosts
	
coldetect	
	ld a,(ghgmode)
	cp EYES_MODE
	jr z,notpachit
;check if we got pacman
	ld hl,pacx
	ld a,(ghgx)
;compare x
	cp (hl)
	jr z,pacghit1
;compare x+1
	inc a
	cp (hl)
	jr nz,notpachit
	
pacghit1
	inc hl
	ld a,(ghgy)
	cp (hl)
	jr z,pacghit2
	inc a
	cp (hl)
	jr nz,notpachit
pacghit2
	ld a,(ghgmode)
	cp SCARED_MODE
	jr nz,notpachit2
;pacman got this ghost
	ld a,EYES_MODE
	ld (ghgmode),a
	
	
;score
	ld bc,GHOST_SCORE
	call incscore
	
	ld bc,$080e
	ld (ghgtarx),bc
	jr notpachit
notpachit2
	ld a,LOST_LIFE
notpac
	ld (exitlp),a
	ret
notpachit
	ret


cagecheck
;eyes - check if ghost got back to 'cage'
	ld hl,ghgtarx
	ld a,(ghgx)
	cp (hl)
	jr z,pachit1
	dec a
	cp (hl)
	jr z,pachit1
	jp retcagecheck
pachit1
	inc hl
	ld a,(ghgy)
	cp (hl)
	jr nz,notpaccage

	
	ld hl,ghgmode
	ld (hl),CHASE_MODE
	inc hl
	ld (hl),GHOST_UP
	
notpaccage
	jp retcagecheck

ghosttarget	
	ret
	
	
ghostmode
;check for scared mode - this is dictated by a counter + how long it takes us to get back to the ghost host etc
	ld a,(ghmode)
	cp SCARED_MODE
	jr nz,notscared
	ld a,(scarec2)
	dec a
	ld (scarec2),a
	or a
	jr z,scare0
	ret
scare0
	ld a,FPS
	ld (scarec2),a
	ld a,(scarec)
	dec a
	ld (scarec),a
	or a
	jr nz,notscared04
	ld a,CHASE_MODE
	ld (ghmode),a
setghostsmode
	ld b,a
	ld hl,gh1mode
	ld a,(hl)
	cp EYES_MODE
	jr z,notscared0
	cp CAGE_MODE
	jr z,notscared0
	ld (hl),b
notscared0
	ld hl,gh2mode
	ld a,(hl)
	cp EYES_MODE
	jr z,notscared02
	cp CAGE_MODE
	jr z,notscared02
	ld (hl),b
notscared02
	ld hl,gh3mode
	ld a,(hl)
	cp EYES_MODE
	jr z,notscared03
	cp CAGE_MODE
	jr z,notscared03
	ld (hl),b
notscared03
	ld hl,gh4mode
	ld a,(hl)
	cp EYES_MODE
	jr z,notscared04
	cp CAGE_MODE
	jr z,notscared04
	ld (hl),b
notscared04
	ret
	
notscared
	ld a,(ghcnt)
;if the count is 255, then we're doing this mode forever...
;inc a - faster than cp $ff
	inc a
	jp z,notchase
;not that, so decrease our second counter
	ld a,(ghcnt2)
	dec a
	jp nz,stillcnt2
;hit zero, reset this counter
	ld a,FPS
	ld (ghcnt2),a
;work with the other counter...
	ld a,(ghcnt)
	dec a
	jp nz,nohitmodezero
;reached zero, move onto next mode
	ld hl,(ghmpos)
	inc hl
	inc hl
	ld (ghmpos),hl
	ld a,(hl)
	ld (ghcnt),a
	inc hl
	ld a,(hl)
	ld (ghmode),a
	ld b,a
	
;set the target for the ghost
	cp SCATTER_MODE
	jr nz,notscatter
	
;scatter mode
;if this ghost isn't eyes or scared, set the target
	ld a,(gh1mode)
	cp EYES_MODE
	jr z,nosettarg1
	cp SCARED_MODE
	jr z,nosettarg1
	ld bc,$4000
	ld (gh1tarx),bc
	ld a,SCATTER_MODE
	ld (gh1mode),a
nosettarg1
	ld a,(gh2mode)
	cp EYES_MODE
	jr z,nosettarg102
	cp SCARED_MODE
	jr z,nosettarg102
	ld bc,$0000
	ld (gh2tarx),bc
	ld a,SCATTER_MODE
	ld (gh2mode),a
nosettarg102
	ld a,(gh3mode)
	cp EYES_MODE
	jr z,nosettarg103
	cp SCARED_MODE
	jr z,nosettarg103
	ld bc,$4040
	ld (gh3tarx),bc
	ld a,SCATTER_MODE
	ld (gh3mode),a
nosettarg103
	ld a,(gh4mode)
	cp EYES_MODE
	jr z,nosettarg104
	cp SCARED_MODE
	jr z,nosettarg104
	ld bc,$0040
	ld (gh4tarx),bc
	ld a,SCATTER_MODE
	ld (gh4mode),a
nosettarg104


	ret
	
notscatter


	cp CHASE_MODE
	jr nz,notchase
;chase mode
	ld a,(gh1mode)
	cp EYES_MODE
	jr z,notchase0
	cp SCARED_MODE
	jr z,notchase0
	ld a,b
	ld (gh1mode),a
notchase0
	ld a,(gh2mode)
	cp EYES_MODE
	jr z,notchase
	cp SCARED_MODE
	jr z,notchase
	ld a,b
	ld (gh2mode),a
notchase
	ret
nohitmodezero
	ld (ghcnt),a
	ret
	
stillcnt2
	ld (ghcnt2),a
	ret
	


	
	
drawghosts
	ld a,(slowcnt)
	or a
	jr z,order1a
;move ghost4 into generic data
	ld hl,gh4x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh4x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
	
;move ghost3 into generic data
	ld hl,gh3x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh3x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
	
;move ghost2 into generic data
	ld hl,gh2x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh2x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
		
;move ghost1 into generic data
	ld hl,gh1x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh1x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
	jp retdrawghosts

	
order1a
;move ghost1 into generic data
	ld hl,gh1x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh1x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
	
;move ghost2 into generic data
	ld hl,gh2x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh2x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
	
;move ghost3 into generic data
	ld hl,gh3x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh3x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
		
;move ghost4 into generic data
	ld hl,gh4x
	ld de,ghgx
	ld bc,15
	ldir
	call subdrawghost
;move generic back to ghost1
	ld de,gh4x
	ld hl,ghgx
;last 2 bytes are fixed - no need to copy back
	ld bc,13
	ldir
	jp retdrawghosts
	
	
	
subdrawghost
;check if ghost got back to cage
	
	ld a,(ghgmode)
	cp EYES_MODE
	jp z,cagecheck
retcagecheck

nodecign
;pointer to background, put it in de
	ld hl,ghgbcp
	ld e,(hl)
	inc hl
	ld d,(hl)

;	ld de,ghost1bc
	ld hl,(ghgpos)
	push hl
	
;save ghost background
	ld bc,$0e1f 
;	ld bc,$0c1f
ghstbclp
;move hl->de but save a few cycles
	ldi
	inc bc
	ldi
	inc bc	
	push bc
	ld b,0
	add hl,bc
	pop bc	
	djnz ghstbclp
	
psavegback
	ld bc,$0e20
;	ld bc,$0c20
	ld a,(ghgmode)

	cp SCARED_MODE
	jr nz,db1
	
	ld a,(ghgdir)
	bit GHOST_UDBIT,a
	jr z,ghstnotud1
	ld a,(scarec)
	dec a
	jr z,setflash1
	ld de,ghostdftab
	jr pdb1
setflash1
	ld de,ghostdf2tab
	jr pdb1
ghstnotud1	
	ld a,(scarec)
	dec a
	jr z,setflash2
	ld de,ghostftab
	jr pdb1
setflash2
	ld de,ghostf2tab
	jr pdb1
db1
	cp EYES_MODE
	jr nz,db2
	ld de,DISPLEN*4
	pop hl
	add hl,de
	push hl
	
	ld a,(ghgdir)
	bit GHOST_UDBIT,a
	jr z,eyenotud
	ld de,ghostedtab
	jr peyenotud
eyenotud	
	ld de,ghostetab
peyenotud
	ld bc,$0320
	jr pdb1
db2
	ld a,(ghgdir)
	bit GHOST_UDBIT,a
	jr z,ghstnotud2
	ld de,ghostdtab
	jr pdb1
ghstnotud2	
	ld de,ghosttab
pdb1
	

;ghost not going up or down, use gfxpos
	ld a,(ghggfx)
pghstnotud

;get ghost gfx from the table
	add a,a
	ld h,0 
	ld l,a 

	add hl,de
	
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	
	pop hl
	
	

drawghost
	
drwghost1x
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
	djnz drwghost1x	

	jp coldetect
;	ret
	

rubghost
;pointer to background, put it in de
	ld hl,ghgbcp
	ld e,(hl)
	inc hl
	ld d,(hl)
	ld hl,(ghgpos)
;load up b with 14 and c with 32
rubghost2	
	ld bc,$0e20			
ghstrublp
	ld a,(de)
	ld (hl),a
	inc hl	
	inc de
	ld a,(de)
	ld (hl),a
	inc de
	
	
	push bc
	ld b,0
	add hl,bc
	pop bc
	
	djnz ghstrublp
	
	ret
	