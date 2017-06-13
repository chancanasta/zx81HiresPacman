;
; To assembly this, either use the zxasm.bat file:
;
; zxasm pacman
;
; or... assemble with the following options:
;
; tasm -80 -b -s pacman.asm pacman.p
;
;==============================================
;    'Hi Res' Pacman for the ZX81
;==============================================
;
;defs
#include "zx81defs.asm"
;EQUs for ROM routines
#include "zx81rom.asm"
;ZX81 char codes/how to survive without ASCII
#include "charcodes.asm"
;system variables
#include "zx81sys.asm"
;macros
#include "macros.asm"

;the standard REM statement that will contain our 'hex' code
#include "line1.asm"
;a bunch of useful EQUs
#include "equs.asm"

;------------------------------------------------------------
; code starts here and gets added to the end of the REM 
;------------------------------------------------------------
;restart the hi score here - then never mention it again
	ld hl,0
	ld (hiscore),hl


;instructions
restart
	ld a,(demo)
	cp $1
	jr nz,nooutdemo
	ld hl,(sscore)
	ld (score),hl
	
nooutdemo
	call demoinit
	call instruct	
;switch to hires	
	call hires
;set everything up
	call init1up

screenreset
	call resetpills
	call redrawmaze
lifereset	
	call initvars

	call ghostmode
	
oneupstart
	ld a,ALL_OK
	ld (exitlp),a
;then - onto the main loop	
mainlp		
	
	
	call handlecherry

;read the keys
	jp readkeys
	
retreadkeys	

;
;draw the player	
	jp drawpacman
retdrawpacman
	jp checkpill
retcheckpill

;draw the ghosts
	jp drawghosts
retdrawghosts	


	call vsync
	
	call ghostmode

;set targets
	ld a,(gh1mode)
	cp CHASE_MODE
	jr nz,notchasex
;chase mode
	ld hl,(pacx)
	ld (gh1tarx),hl
	jr pscmode
notchasex	
	cp SCARED_MODE
	jr nz,pscmode
	ld hl,(scarep)	
	ld a,(hl)
	ld (gh1tarx),a
	add hl,de
	ld (gh1tary),a	
	
	ld (scarep),hl
pscmode
	ld a,(gh2mode)
	cp CHASE_MODE
	jr nz,notchasexb
;chase mode
	ld hl,(pacx)
	ld (gh2tarx),hl
	jr pscmodeb
notchasexb	
	cp SCARED_MODE
	jr nz,pscmodeb
	ld hl,(scarep)	
	ld a,(hl)
	ld (gh2tarx),a
	add hl,de
	ld (gh2tary),a	
	
	ld (scarep),hl
pscmodeb
	ld a,(gh3mode)
	cp CHASE_MODE
	jr nz,notchasexc
;chase mode
	ld hl,(pacx)
	ld (gh3tarx),hl
	jr pscmodec
notchasexc
	cp SCARED_MODE
	jr nz,pscmodec
	ld hl,(scarep)	
	ld a,(hl)
	ld (gh3tarx),a
	add hl,de
	ld (gh3tary),a	
	ld (scarep),hl
	
pscmodec
	ld a,(gh4mode)
	cp CHASE_MODE
	jr nz,notchasexd
;chase mode
	ld hl,(pacx)
	ld (gh4tarx),hl
	jr pscmoded
notchasexd
	cp SCARED_MODE
	jr nz,pscmoded
	ld hl,(scarep)	
	ld a,(hl)
	ld (gh4tarx),a
	add hl,de
	ld (gh4tary),a	
	ld (scarep),hl
pscmoded

;move the ghosts
	jp moveghosts
retmoveghosts

;move the player
	
	call movepacman
	
;update or 'flip' counter	
	ld a,(slowcnt)
	xor 1
	ld (slowcnt),a

	

;check for exit condition, if none - continue with the main loop	
	ld a,(exitlp)
	cp ALL_OK
	jp z,mainlp
	

	
pmainlp
	push af
	call rubpacman
	call rubcherry
	pop af
;exitlp should contain what happened
;this is a jump to the end of all this for debug purposes	
	cp LOST_LIFE
	jr nz,notlostlife
;
	call drawpacded
;decrease lives	
	ld a,(lives)
	dec a
	ld (lives),a
	cp $0
	jr z,endgame
	
;some lives left, so jump back	
	jp lifereset
notlostlife	
	cp CLEARED_SHEET
	jr nz,notcleared
;cleared the maze, wait a bit	
	ld b,0
clearwait
	call vsync
	djnz clearwait
;reset maze
	jp screenreset

notcleared
endgame

endall
;exit the main loop - switch back to low res	
	call lores
;see if we've got a new hiscore	
;first check we've not just come out of demo mode
	ld a,(demo)
	cp 1
	jr z,notnewhs
	ld hl,(hiscore)
	ld bc,(score)
;compare the MSB of the score
	ld a,h
	cp b
;if the score MSB is larger than the hiscore MSB - then it must be a new high score	
	jr c,newhs
;the score MSB is not larger than the hiscore, check if it's the same	
	jr nz,notnewhs
;score MSB is same as hiscore MSB, check LSB	
	ld a,l
	cp c
;if the LSB is not larger, no new hiscore, skip the hiscore copy	
	jr nc,notnewhs
newhs
	ld (hiscore),bc
notnewhs		
	jp restart
	
;subroutines


;routines for moving pacman
#include "pacmove.asm"
#include "demomove.asm"
#include "pacmaze.asm"
#include "pacdeath.asm"

;ghost stuff
#include "ghosts.asm"
#include "ghostmove.asm"

;cherry
#include "cherry.asm"	
;scores
incscore
	ld a,(score)
	add a,c
	daa 
	ld (score),a
	ld a,(score+1)
	adc a,b
	daa
	ld (score+1),a
	ret
	

dispscore
	ld bc,16
	ld de,score
	jr dispBCD
	
disphiscore
	ld bc,29
	ld de,hiscore
	
	
dispBCD	
	ld	hl,(D_FILE)
	add hl,bc
;lazy msb/lsb swap
	inc de
	ld a,(de)
;display the 4 BCD digits		
	push af
	and $f0
	rra
	rra
	rra
	rra
	add	a,$1c
	ld (hl),a
	inc hl
	pop af
	and $0f
	add a,$1c
	ld (hl),a
	inc hl
	
	dec de
	ld a,(de)
	push af
	and $f0
	rra
	rra
	rra
	rra
	add	a,$1c
	ld (hl),a
	inc hl
	pop af
	and $0f
	add a,$1c
	ld (hl),a		
	ret

;reset
	
#include "pachires.asm"
#include "packeys.asm"

vsync	
	push bc
	
	ld b,$20
dellp1
	djnz dellp1
	
	pop bc
	ret

	

#include "initvars.asm"

;show some rubbish instructions	
instruct

	ld bc,(DISPLEN*8)+24
	ld de,hiscore
	call dispBCD
	
	ld bc,(DISPLEN*9)+24
	ld de,score
	call dispBCD
	
	
waitkpress
	ld hl,(democnt)
	dec hl
	ld (democnt),hl
	xor a
	cp h
	jr nz,coni
	cp l
	jr z,fininst
	
coni	
	call KSCAN
	
 	bit 3,l
	jr nz,waitkpress
bit 1,h
	jr nz,waitkpress
	ret
	
fininst	
	ld hl,(score)
	ld (sscore),hl
	ld a,1
	ld (demo),a
	ld (lives),a
	
	ret
;include our variables
#include "vars.asm"

; ===========================================================
; code ends
; ===========================================================
;end the REM line and put in the RAND USR line to call our 'hex code'
#include "line2.asm"

;display file defintions for lowres and hires screens
#include "screen.asm"               

						
;close out the basic program
#include "endbasic.asm"
						