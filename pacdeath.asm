;
; pacdeath.asm
;

drawpacded
	xor a
	ld (pacgfx),a
pacdedlp	
	ld de,pacdedtab
	add a,a
	ld h,0 
	ld l,a 

	add hl,de
	
	ld a,(hl)
	inc hl
	ld d,(hl)
	ld e,a
	

	ld hl,(pacpos)
	push de
	ld de,DISPLEN*2
	add hl,de
	pop de
	ld bc,$0a20

drwded1x
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
	djnz drwded1x

	
	ld b,120
dedv
	call vsync
	djnz dedv
	ld a,(pacgfx)
	inc a
	cp 11
	jr z,dedend
	ld (pacgfx),a
	jr pacdedlp
dedend

	ld b,10
dedv2
	call vsync
	djnz dedv2
	
	jp rubpacman
	