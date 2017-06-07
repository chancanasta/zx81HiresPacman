;
; demomove
;
; routines for pacman demo movement

demomove
;see which demo pos we're at
	ld a,(demopos)
	push af
	
	cp 0
	jr nz,dnot0
;go up
	ld a,(pacdir)
	ld b,a
	ld a,PAC_UP
	ld (pacdir),a
;we need to figure out which pacgfx to use, if we were moving down, it gets complicated..
	ld a,b
	cp PAC_DOWN
	jr nz,doknotdown
;we were moving down - so need to figure out which gfx to use
	ld a,(pacgfx)
	jr dokdown
doknotdown
	xor a
dokdown
	ld (pacgfx),a
	jr incdcnt
	
dnot0
	cp 1
	jr nz,dnot1
	

; go right
	ld a,PAC_RIGHT
	ld (pacdir),a
	jr incdcnt

dnot1
	cp 2
	jr nz,dnot2
;go down
	ld a,(pacdir)
	ld b,a
	ld a,PAC_DOWN
	ld (pacdir),a
;we need to figure out which pacgfx to use, if we're moving up, it gets complicated..
	ld a,b
	cp PAC_UP
	jr nz,doknotup
	
;we're moving up - so need to figure out which gfx to use
	ld a,(pacgfx)
	jr dokup
doknotup
	xor a
dokup
	ld (pacgfx),a
	jr incdcnt

	
dnot2	
;go left
	ld a,PAC_LEFT
	ld (pacdir),a
	xor a
	ld (pacgfx),a	
	

incdcnt
	pop af
	inc a
	cp 4
	jr nz,notd4
	xor a
notd4
	ld (demopos),a
	ret
