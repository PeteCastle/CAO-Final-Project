
.MODEL SMALL
.STACK 100H
.386

.DATA
;Segment Data
	TIT1 DB 13,10,13,10,13,10,"                               .'`~~~~~~~~~~~`'.                        ","$"
	TIT2 DB 13,10,"                               (  .'11 12 1'.  )                        ","$"
	TIT3 DB 13,10,"                               |  :10 \|   2:  |                        ","$"
	TIT4 DB 13,10,"                               |  :9   @   3:  |                        ","$"
	TIT5 DB 13,10,"                               |  :8       4;  |                        ","$"
	TIT6 DB 13,10,"                               '. '..7 6 5..' .'                        ","$"
	TIT7 DB 13,10,"                                ~-------------~                         ","$" 
	TIT8 DB 13,10,"        __   __     __   ____  _  _         ___  __     __    ___  __ _ ",'$'
	TIT9 DB 13,10,"       / _\ (  )   / _\ (  _ \( \/ )       / __)(  )   /  \  / __)(  / )",'$'
   TIT10 DB 13,10,"      /    \/ (_/\/    \ )   // \/ \      ( (__ / (_/\(  O )( (__  )  ( ",'$'
   TIT11 DB 13,10,"      \_/\_/\____/\_/\_/(__\_)\_)(_/       \___)\____/ \__/  \___)(__\_)",'$'
   TIT12 DB 13,10,13,10,"               Made by: Aparici, Cayco, Morales J, Soliven, Villar           ","$"
   TIT13 DB 13,10,13,10,13,10,"                    +++               +++               +++             ","$"
   TIT14 DB 13,10,"                   | Q |             | W +             | E |            ","$"
   TIT15 DB 13,10,"                    +++               +++               +++             ","$"
   TIT16 DB 13,10,"                   ALARM            COOLDOWN         STOPWATCH          ","$"
                                  
.CODE
include utils.inc
.STARTUP 
	; Sets Cursor Position at (0,0)
	MOV AX, 0003h
	MOV BX, 0
	MOV DX, 0000h
	INT 10H
	
	; Print title screen
	TITSCR:
		LEA DX, TIT1
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT2
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT3
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT4
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT5
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT6
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT7
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT8
		MOV AH, 09H
		INT 21H

		LEA DX, TIT9
		MOV AH, 09H
		INT 21H

		LEA DX, TIT10
		MOV AH, 09H
		INT 21H

		LEA DX, TIT11
		MOV AH, 09H
		INT 21H

		LEA DX, TIT12
		MOV AH, 09H
		INT 21H
		
		LEA DX, TIT13
		MOV AH, 09H
		INT 21H

		LEA DX, TIT14
		MOV AH, 09H
		INT 21H

		LEA DX, TIT15
		MOV AH, 09H
		INT 21H

		LEA DX, TIT16
		MOV AH, 09H
		INT 21H

		MOV AH, 08H
		INT 21H
	
   .EXIT
END