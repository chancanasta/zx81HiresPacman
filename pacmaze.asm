;
; pacmaze.asm
;
; routines related to the maze

checkpill
	ld hl,(pacmpos)
	ld a,(hl)
	bit 0,a
	jr z,noteatpill
	and 254
	ld (hl),a
	
	ld bc,PILL_SCORE
	call incscore

	ld hl,pilleat
	inc (hl)
	ld a,(hl)
	cp ALL_PILLS
	jr nz,notallpills
	ld a,CLEARED_SHEET
	ld (exitlp),a
notallpills
	jr notpwrpill
noteatpill
	bit PAC_PWR,a
	jr z,notpwrpill
;Power Pill...
	ld bc,POWER_SCORE
	call incscore
;	xor a
	ld (hl),0
	ld a,FPS
	ld (scarec2),a
	ld a,SCARE_TIME
	ld (scarec),a
	ld a,SCARED_MODE
	ld (ghmode),a

	call setghostsmode
	
notpwrpill		
	jp retcheckpill
	
;reset 'pills' in the offscreen maze
resetpills
	xor a
	ld (pilleat),a

	push de
;get our pacmaze 
	ld hl,pacmaze
	ld de,MAZE_WIDTH
;skip first line, as it's all wall
	add hl,de
	ld de,pills
;go through 22 lines
	ld b,22
pillline
;
	push bc
	ld c,128
;go through 28 items
	ld b,28
pillitem
;get pill bit
	ld a,(de)
	and c
	cp c
	jr nz,bitnotset
	ld a,(hl)
	or 1
	ld (hl),a
bitnotset
;move to next bit
	and a
	rr c
	ld a,c	
	or a
	jr nz,notbit0
;move to next byte in input
	ld c,128
	inc de
notbit0
;move next byte in output	
	inc hl
	djnz pillitem
	
	pop bc
;skip to next input byte
	inc de	
	djnz pillline
;all done, 'manually' set the 4 power pills
	ld hl,pacmaze+(MAZE_WIDTH*3)+1
	ld (hl),4
	ld bc,25
	add hl,bc
	ld (hl),4
	ld bc,(MAZE_WIDTH*12)+3
	add hl,bc
	ld (hl),4
	ld bc,25
	add hl,bc
	ld (hl),4	
	xor a
	ld (pilleat),a
	
	pop de
	
	ret
	
	
;redraw maze from RLE data
redrawmaze
	add hl,de
	ld hl,rlemaze
	ld de,HDISPLAY+(33*11)
;draw the lines
	ld b,55
rleline
;get the count
	ld a,(hl)
	
	ld (norlelines),a
	inc hl
;get the reference to the rle line 	
	ld (rlesave),hl
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a
	
inrleline
;30 segments per line
	ld c,30
rleitem
;read in a byte
	ld a,(hl)
;figure out what to do with this
	and 192
	cp 192
	jr nz,not192
;rle encoded value
;get the run length
	ld a,(hl)
	and 63
	inc hl
;save b
	push bc
;put length in b
	ld b,a
;get value in a3
	ld a,(hl)
	inc hl

;now write out the run

rlerun
	cp BLANK_BITS
	jr z,pwrite2
	ld (de),a
pwrite2
	inc de
	dec c
	djnz rlerun
;restore b
	ld a,c
	pop bc
	ld c,a
	jr pnot192
	
not192
	ld a,(hl)
	cp BLANK_BITS
	jr z,pwrite
;normal value, just write it out
	ld (de),a
pwrite
	inc de
	inc hl
	dec c
	

;see if we've written out 32 items yet
	ld a,c
pnot192
	or a
	jr nz,rleitem
;got a line, skip the eol marker in HDISPLAY
	inc de	
	inc de
	inc de
;get the start of the line back
	ld hl,(rlesave)
	
;check for line repeats
	ld a,(norlelines)
	dec a
	ld (norlelines),a
	or a
	jr z,notrlerepeat
;line repeat
;get our line back
	ld a,(hl)
	inc hl
	ld h,(hl)
	ld l,a

	jr inrleline
notrlerepeat
;move onto next line
	inc hl
	inc hl
	djnz rleline
	ret
