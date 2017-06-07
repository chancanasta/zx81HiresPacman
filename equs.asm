;exciting EQUS for this game
DISPLEN			EQU $21
BLANK_BITS		EQU	$0A
FULL_BITS		EQU $A2
HIRES_IDX		EQU	14

;delay before demo starts
DEMO_WAIT		EQU 12000

FPS				EQU 50

;pac direction
PAC_RIGHT		EQU 0
PAC_LEFT		EQU 2
PAC_UP			EQU 1
PAC_DOWN		EQU 3


PAC_STILL		EQU	4
MAZE_WIDTH		EQU	28

CHERRY_OFF		EQU	10
CHERRY_ON		EQU	4

;ghost direction
GHOST_RIGHT		EQU 0
GHOST_UP		EQU 1
GHOST_LEFT		EQU 2
GHOST_DOWN		EQU 3

SCATTER_MODE	EQU	0
CHASE_MODE		EQU	1
SCARED_MODE		EQU	2
EYES_MODE		EQU 4
CAGE_MODE		EQU	5


SCARE_TIME		EQU	4


PREF_RIGHT		EQU	1
PREF_LEFT		EQU	0
PREF_UP			EQU	1
PREF_DOWN		EQU	0

IGNORE			EQU	7


;up and down have bit 0 set, 
GHOST_UDBIT		EQU	0

;MAZE (bits rather than values)
PAC_PILL		EQU	0
PAC_WALL		EQU 1
PAC_PWR			EQU 2
PAC_TUNNEL		EQU 3
PAC_INTERSECT	EQU 4
PAC_CAGE		EQU 5
PAC_CINTER		EQU 6


ALL_PILLS		EQU 180

PAC_TUN_VAL		EQU	8


;check if we can move in these directions
CHECK_DOWN		EQU	1
CHECK_UP		EQU 2
CHECK_LEFT		EQU 3
CHECK_RIGHT		EQU 4

;exit 
ALL_OK			EQU	0
LOST_LIFE		EQU	1
INVADED			EQU	2
CLEARED_SHEET	EQU	3
QUIT_GAME		EQU 4
NXT_CLEARED		EQU 5
FIRST_LOOP		EQU	6
FIRST_PAUSE		EQU	20
PAUSE_GAME		EQU 21

;BCD - lazy score display
BCD_10			EQU	16
BCD_20			EQU 32
BCD_30			EQU 48
BCD_40			EQU 64
BCD_50			EQU 80
BCD_100			EQU 256
BCD_200			EQU 512
BCD_300			EQU 768

;scores
PILL_SCORE		EQU 1
POWER_SCORE		EQU 2
GHOST_SCORE		EQU BCD_10
CHERRY_SCORE	EQU BCD_20

