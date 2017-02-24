;
; pachires.asm
;
; hires routines

;switch to high res
hires	
;wait for an interrupt
	halt 	
;wait for a vsync
	ld a,(FRAMES)
	ld c,a
sync1	
	ld a,(FRAMES)		
	cp c
	jr z,sync1
;replace the render routine		
	ld ix,hresgen
	ret
		
;switch back to low res
lores	
;wait for an interrupt
	halt 
;wait for a vsync
;	ld a,(FRAMES)
;	ld c,a
sync2	
;	ld a,(FRAMES)
;	cp c
;	jr z,sync2
;reset the I register to the ROM default		
	ld a,$1e
	ld i,a
;put back the normal display routine		
	ld ix,DISPROUT
	ret

;actual hires routine
hresgen
;slightly odd address - but it's basically 'back one line' from the start of the screen memory
;with bit 15 of the address set
	ld hl,(HDISPLAY - DISPLEN) + $8000
;set the line width	
	ld de,DISPLEN
;the ULA port address		
	ld c,$0FE
;offset within the ROM that gives us the best bit patterns for this game...
	ld a,HIRES_IDX
	ld i,a
;delay to sync with tv	
	ld b,5
syncx
	djnz syncx
;draw 192 lines of hires things
	ld b,$c0
hreslp1	
;keep the ULA thinking it's on the first line of a character		
	in a,(c)
	out ($ff),a
	add hl,de
	call intoula	
	dec b
	jp nz,hreslp1

;sneakily jump into a couple of  ROM routines
	call DISPLAY_3
	call SLOWORFAST + $19
	ld ix,hresgen
;jump back into the ROM
	jp (DISPLAY_3 + $12)
	
intoula
	jp (hl)
