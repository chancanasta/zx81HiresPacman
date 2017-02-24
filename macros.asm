;macros
;
;set the ignore counter for ghost movement/decisions
#DEFINE	SETIGNORE	ld a,1\ ld (ghgign),a

;set (hl) to point to place to write debug
#DEFINE SETDEBUG	ld hl,debug1\ ld a,(debugcnt)\ ld d,0\ ld e,a\ add hl,de
;move counter, wrap at 8
#DEFINE MOVEDEBUG	ld a,(debugcnt)\ inc a\ and 7\ ld (debugcnt),a


