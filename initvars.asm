;initialise the variables

;reset scores and lives
init1up
;these are all reset once at the start of the game
;set score to zero
	ld hl,0
	ld (score),hl
;lives to 3	
	ld a,3
	ld (lives),a

	ret

	;reset the rest	
initvars
;these are called everytime we have to re-enter the main loop
;i.e. when the player dies or clears maze
	xor a
	
	ld (pacgfx),a
	ld (pactest),a
	ld (gh1gfx),a
	ld (gh2gfx),a
	ld (gh3gfx),a
	ld (gh4gfx),a
	ld (gh1ign),a	
	ld (gh2ign),a
	ld (gh3ign),a
	ld (gh4ign),a
	ld (chyf),a
	
	ld (gh1gfx),a
	ld (gh2gfx),a
	ld (gh3gfx),a
	ld (gh4gfx),a
	ld (gh2mode),a
	ld (ghjust),a
	ld (ghcnt),a
	
		
	
	ld (slowcnt),a



	ld a,GHOST_LEFT
	ld (gh2dir),a

	ld a,5
	ld (gh1ccnt),a
	ld a,7
	ld (gh3ccnt),a
	ld a,9
	ld (gh4ccnt),a
	
	ld hl,HDISPLAY
	ld de,(DISPLEN*(5+(15*8)))+2+14
	
	add hl,de
	ld (pacpos),hl
	
	ld a,PAC_LEFT
	ld (pacdir),a
	ld bc,$100e
	ld (pacx),bc
;	ld a,16
;	ld (pacy),a
;save the pacman position within off screen maze	
	ld hl,pacmaze
	ld de,(MAZE_WIDTH*16)+14
	add hl,de
		
	ld (pacmpos),hl
	
;ghosts
	ld hl,HDISPLAY
	ld de,(DISPLEN*(5+(7*8)))+2+12
	add hl,de
	ld (gh1pos),hl
	
	ld hl,HDISPLAY
	ld de,(DISPLEN*(5+(7*8)))+2+14
	add hl,de
	ld (gh3pos),hl
	
	ld hl,HDISPLAY
	ld de,(DISPLEN*(5+(7*8)))+2+16
	add hl,de
	ld (gh4pos),hl
	
	

	
	ld hl,HDISPLAY
	ld de,(DISPLEN*(6+(4*8)))+2+14

	add hl,de
	ld (gh2pos),hl

	
	ld bc,$080c
	ld (gh1x),bc
	
	ld bc,$050e
	ld (gh2x),bc

	ld bc,$080e
	ld (gh3x),bc

	ld bc,$0810
	ld (gh4x),bc
	
	
	ld a,GHOST_DOWN
	ld (gh1dir),a
	ld (gh4dir),a
	
	ld a,GHOST_UP
	ld (gh3dir),a
	
	ld a,CAGE_MODE
	ld (gh1mode),a
	ld (gh3mode),a
	ld (gh4mode),a
	
	ld hl,pacmaze	
	ld de,(MAZE_WIDTH*8)+12
	add hl,de
	ld (gh1mpos),hl

	ld hl,pacmaze	
	ld de,(MAZE_WIDTH*8)+14
	add hl,de
	ld (gh3mpos),hl

	ld hl,pacmaze	
	ld de,(MAZE_WIDTH*8)+16
	add hl,de
	ld (gh4mpos),hl

	ld hl,pacmaze	
	ld de,(MAZE_WIDTH*5)+14
	add hl,de
	ld (gh2mpos),hl

	
;set the modes up
;50 fps, so shove that into cnt2
	ld a,FPS
	ld (ghcnt2),a
	ld hl,modes
	ld (ghmpos),hl
	ld a,(hl)
	ld (ghcnt),a
	inc hl
	ld a,(hl)
	ld (ghmode),a

;scatter mode
	ld bc,$4000
	ld (gh1tarx),bc

	ld bc,$0000
	ld (gh2tarx),bc
	
	ld bc,$4040
	ld (gh3tarx),bc
	
	ld bc,$0040
	ld (gh4tarx),bc
;cherry
	ld hl,HDISPLAY
	ld de,(DISPLEN*(6+(10*8)))+2+14
	
	add hl,de
	ld (chypos),hl
	
	
;setup cherry counter
	ld a,FPS
	ld (chycnt),a
	ld a,CHERRY_OFF
	ld (chycnt2),a
	
	ret
