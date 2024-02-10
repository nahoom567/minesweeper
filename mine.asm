dosseg
.model small
.data
; makeing an array out of the numbers in 1, mines in 0 and spaces in 2
board1 db 0h,1h,1h,2h,2h,2h,2h,2h,1h,1h,1h,0h,1h,0h,1h,2h,2h,2h,2h,2h,1h,0h,1h,1h,0h,1h,1h,2h,2h,2h,2h,2h,1h,1h,1h,0h,1h,1h,1h,2h,1h,1h,1h,2h,2h,2h,1h,0h,1h,0h,1h,2h,1h,0h,1h,1h,1h,1h,1h,1h,1h,1h,1h,2h,1h,1h,0h,1h,1h,0h,1h,1h,1h,1h,2h,2h,1h,1h,1h,1h,1h,1h,1h,0h,0h,1h,1h,2h,1h,0h,1h,2h,2h,2h,1h,1h,1h,0h,1h,1h,1h,1h,1h,2h,2h,2h,2h,2h,1h,0h,0h,1h,1h,1h,1h,1h,1h,1h,1h,1h,0h,1h,1h,1h,1h,0h,0h,1h,1h,0h,1h,0h,1h,0h,1h,1h,0h,1h,1h,1h,1h,1h,1h,1h,1h,1h,1h,1h,1h,1h,2h,2h,2h,1h,0h,1h,2h,1h,0h,1h,1h,2h,2h,2h,2h,1h,1h,1h,2h,1h,1h,0h,1h,1h,2h,2h,2h,1h,0h,1h,2h,2h,1h,1h,0h,1h,1h,1h,1h,1h,1h,1h,2h,1h,1h,1h,0h,0h,1h,1h,0h,1h,1h,2h,2h,1h,0h,1h,1h,1h,1h,0h,1h,0h,1h,1h,2h,1h,1h,1h,1h,2h,1h,1h,1h,1h,0h,1h,2h,2h,1h,0h,1h,2h,1h,1h,1h,1h,1h,1h,2h,2h,1h,0h,1h,2h,1h,0h,1h,2h,2h,2h
; array that shows mines and spaces as 0 and the rest are values of the numbers
board2 db 0h,2h,1h,0h,0h,0h,0h,0h,1h,1h,2h,0h,3h,0h,1h,0h,0h,0h,0h,0h,1h,0h,3h,2h,0h,2h,1h,0h,0h,0h,0h,0h,1h,1h,3h,0h,2h,2h,1h,0h,1h,1h,1h,0h,0h,0h,2h,0h,1h,0h,1h,0h,1h,0h,2h,1h,1h,1h,2h,1h,1h,1h,1h,0h,1h,2h,0h,1h,1h,0h,2h,1h,1h,1h,0h,0h,1h,2h,2h,1h,1h,1h,2h,0h,0h,2h,1h,0h,1h,0h,1h,0h,0h,0h,1h,1h,3h,0h,3h,1h,1h,1h,1h,0h,0h,0h,0h,0h,3h,0h,0h,1h,1h,2h,2h,1h,1h,1h,2h,1h,0h,4h,3h,2h,2h,0h,0h,1h,1h,0h,2h,0h,2h,0h,1h,1h,0h,3h,2h,1h,1h,2h,3h,2h,1h,2h,2h,2h,1h,1h,0h,0h,0h,1h,0h,1h,0h,1h,0h,2h,1h,0h,0h,0h,0h,2h,2h,2h,0h,1h,2h,0h,2h,1h,0h,0h,0h,1h,0h,1h,0h,0h,1h,3h,0h,3h,1h,1h,1h,2h,1h,1h,0h,1h,1h,3h,0h,0h,2h,2h,0h,2h,1h,0h,0h,1h,0h,2h,2h,2h,2h,0h,3h,0h,2h,1h,0h,1h,2h,2h,1h,0h,1h,1h,2h,2h,0h,1h,0h,0h,2h,0h,2h,0h,1h,1h,1h,1h,1h,1h,0h,0h,2h,0h,2h,0h,1h,0h,1h,0h,0h,0h
; an array in order to check if the user presses on the same number a couple of times, every number is 0, spaces and numebrs in the starting position that don't need to be pressed are 1
guesses_made db 0h,0h,0h,1h,1h,1h,1h,1h,0h,0h,0h,0h,0h,0h,0h,1h,1h,1h,1h,1h,0h,0h,0h,0h,0h,0h,0h,1h,1h,1h,1h,1h,0h,0h,0h,0h,0h,0h,0h,1h,0h,0h,0h,1h,1h,1h,0h,0h,0h,0h,0h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,0h,0h,0h,1h,1h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,1h,1h,1h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,1h,1h,1h,1h,0h,0h,0h,0h,0h,0h,1h,1h,1h,1h,1h,1h,0h,0h,1h,0h,0h,0h,1h,1h,1h,1h,1h,1h,0h,0h,1h,0h,0h,0h,1h,1h,1h,1h,1h,1h,0h,0h,1h,1h,0h,0h,0h,1h,1h,1h,1h,1h,0h,0h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,1h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,0h,1h,0h,0h,0h,0h,1h,0h,0h,0h,0h,0h,0h,1h,1h,0h,0h,0h,1h,0h,0h,0h,0h,0h,0h,1h,0h,0h,0h,0h,1h,0h,0h,0h,1h,1h,1h
; in order to print to the user how he/she can win, when they lose
msg db "m21     112m$"
msg2 db "3m1     1m32$"        
msg3 db "m21     113m$"
msg4 db "221 111   2m$"
msg5 db "1m1 1m211121$"
msg6 db "111 12m11m21$"                                        
msg7 db "11  1221112m$"
msg8 db "m21 1m1   11$"
msg9 db "3m31111$"
msg10 db "3mm112211121$"
msg11 db "m4322mm11m2m$"
msg12 db "2m11m3211232$"
msg13 db "122211   1m1$"
msg14 db " 1m21    222$"
msg15 db " 12m21   1m1$"
msg16 db "  13m3111211$"
msg17 db " 113mm22m21$"
msg18 db " 1m2222m3m21$"
msg19 db " 1221 1122m1$"
msg20 db "  2m2 111111$"
msg21 db "  2m2 1m1$"
smsg db "     32112$"
smsg2 db "    11   1$"
smsg3 db "    1    2$"
smsg4 db "    21   1$"
smsg5 db "     31112$"
; will be used to check if the user won
counter dw 0

losing_msg db "You Lost$"
losing_msg2 db "Made by Itay Einav$"

winning_msg db "You Won!!!$"
winning_msg2 db "Good Job$"
winning_msg3 db "Made by Itay Einav$"

starting_msg db "Welcome to minesweeper$"
starting_msg2 db "Use the left click button on the mouse$"
starting_msg3 db "to select a space on the grid$"
starting_msg4 db "The numbers on the board represent$"
starting_msg5 db "how many bombs are adjacent to a square$"
starting_msg6 db "For example, if a square has a ""3"" on it,$"
starting_msg7 db "then there are 3 bombs next to that square$"
starting_msg8 db "If you hit a bomb, you lose, but if you manage$"
starting_msg9 db "to reveal all the squares you win$"
starting_msg10 db "wait a few seconds to start$"

.stack 100h
.code

; This function prints any digit number, it isnt actually used in the game, I only use this function to debug
; input: ax - the number is stored in ax when the function is used
; PRINT_DIGIT_NUMBER proc
    ; ;initialize count
    ; mov cx,0
    ; mov dx,0
    ; label1:
        ; ;checking if ax is zero
        ; cmp ax,0
        ; je print1

        ; ;initializing bx to 10
        ; mov bx,10

        ; ;extracting the last digit
        ; div bx
        ; push dx

        ; ;increasing the count
        ; inc cx
        ; xor dx,dx
        ; jmp label1
    ; print1:
        ; ;checking if count is greater than zero
        ; cmp cx,0
        ; je exit
        ; pop dx

        ; ;adding 48 so that it represents the ASCII value of digits
        ; add dx,48

        ; ;interrupte to print a character
        ; mov ah,02h
        ; int 21h

        ; ;decreasing the count
        ; dec cx
        ; jmp print1
    ; exit:
; ret
; endp


; This function clears the screen
; input: none
clear proc
	mov ax,0600h ;scroll the entire page
	mov bh,07    ;normal attribute
	mov cx,0000  ;row and column of top left 
	mov dx,184fh ;row and column of bottom right 
	int 10h      ;invoke the video bios service
ret
endp

                                                                                          
; This function prints to the user the messages in the right place
; input: si - load effective address of the message, di - the location on the screen in which the message is printed 
make proc
c1:
	mov dl,[si]
	cmp dl,'$'
	je sof
	mov dh,7h
	mov es:[di],dx
	add di,2
	inc si
	jmp c1
	sof:
ret
endp

; This function prints the starting message
; input: none
print_starting_msg proc
	lea si,starting_msg
	mov di,160*2+58
	call make
	lea si,starting_msg2
	mov di,160*4+44
	call make
	lea si,starting_msg3
	mov di,160*6+50
	call make
	lea si,starting_msg4
	mov di,160*8+46
	call make
	lea si,starting_msg5
	mov di,160*10+42
	call make
	lea si,starting_msg6
	mov di,160*12+40
	call make
	lea si,starting_msg7
	mov di,160*14+40
	call make
	lea si,starting_msg8
	mov di,160*16+38
	call make
	lea si,starting_msg9
	mov di,160*18+46
	call make
	lea si,starting_msg10
	mov di,160*20+54
	call make
ret 
endp

; This function prints the start of the game
; input: none
starting_game proc
	lea si,smsg
	mov di,160*12+74
	call make
	lea si,smsg2
	mov di,160*13+74
	call make
	lea si,smsg3
	mov di,160*14+74
	call make
	lea si,smsg4
	mov di,160*15+74
	call make
	lea si,smsg5
	mov di,160*16+74
	call make
ret
endp


; This function delays the continunity of the program
; input: none
deley proc
	push cx
	mov cx,1fffh
	deley2:
		push cx
		mov cx,5fffh
	deley1:
		add ax,0
		loop deley1
		pop cx
		loop deley2
		pop cx
ret
endp


; This function prints the losing message
; input: none
lose proc
	lea si,losing_msg
	mov di,160*10+74
	call make
	lea si,losing_msg2
	mov di,160*13+68
	call make
ret
endp
	
	
; This function prints the winning message
; input: none
win proc
	lea si,winning_msg
	mov di,160*10+70
	call make
	lea si,winning_msg2
	mov di,160*12+72
	call make
	lea si,winning_msg3
	mov di,160*14+64
	call make
ret 
endp


; This function prints to the user how he/she could have won when they lost
; input: none
ending_message proc
	call clear
	lea si,msg
	mov di,160*1+74
	call make
	lea si,msg2
	mov di,160*2+74
	call make
	lea si,msg3
	mov di,160*3+74
	call make
	lea si,msg4
	mov di,160*4+74
	call make
	lea si,msg5
	mov di,160*5+74
	call make
	lea si,msg6
	mov di,160*6+74
	call make
	lea si,msg7
	mov di,160*7+74
	call make
	lea si,msg8
	mov di,160*8+74
	call make
	lea si,msg9
	mov di,160*9+74
	call make
	lea si,msg10
	mov di,160*10+74
	call make
	lea si,msg11
	mov di,160*11+74
	call make
	lea si,msg12
	mov di,160*12+74
	call make
	lea si,msg13
	mov di,160*13+74
	call make
	lea si,msg14
	mov di,160*14+74
	call make
	lea si,msg15
	mov di,160*15+74
	call make
	lea si,msg16
	mov di,160*16+74
	call make
	lea si,msg17
	mov di,160*17+74
	call make
	lea si,msg18
	mov di,160*18+74
	call make
	lea si,msg19
	mov di,160*19+74
	call make
	lea si,msg20
	mov di,160*20+74
	call make
	lea si,msg21
	mov di,160*21+74
	call make
ret
endp


; This function checks if a user selects a bomb, if so they lose, if they select an empty space nothing happens and if neither of them prints the number showing the location the user selected
; input: cx - the location of the x in mouse measurements, dx - the location of the y in mouse measurements
; note: the measurements of the mouse are different from the measurements of the screen so we need to divide by 8 cx and dx
detecting proc
	;divide by 8 and remove one because the game starts in row 2	
	mov ax,dx
	sub ax,8
	xor ah,ah
	mov bl,8
	div bl 
	xor ah,ah
	push ax
		
	;mul by 12 because a row (y) is 12
	mov ax,ax
	mov bx,12
	mul bx
	
	;in dl there is the result of the division without remainder, there is a remainder sometimes because every square on screen represents 8 for mouse, so for example, if the user presses in the end of the first square, there will be a remainder of 7   
	mov dl,al 

	;divide by 8 the x and remove 296 because the game starts in the x 296
	mov ax,cx
	sub ax,296
	xor bh,bh
	mov bl,8
	div bl
	xor ah,ah
	push ax
	
	;adding al to dl for the same reason I mentiond before
	add dl,al
	mov bl,dl
	
	;reseting bh because I add to si bx and not only bl
	xor bh,bh
	
	;making sure that in bx there is the array guesses_made equivalent of the user input
	lea si,guesses_made
	add si,bx
	mov al,[si]	
	
	;checking if the user picked a bomb
	cmp al,1h
	jne not_guessed
	dec counter
	
	not_guessed:		
		mov byte ptr [si],1h
		;making sure that in bx there is the array board2 equivalent of the user input
		lea si,board1
		add si,bx
		mov al,[si]		
		cmp al,0h
		jne right_guess
		wrong_guess:
			;discarding redhanded pushes
			pop bx
			pop cx
			call clear
			call ending_message
			call deley
			call clear
			call lose
			call deley
			jmp here
		space_guess:
			;making sure that the user won't lose if he choose an empty space
			mov al,1h
			jmp here
		right_guess:
			;printing the number
			pop cx
			pop ax
			add cx,37 
			add ax,1
			
			;setting cursor position
			mov dl,cl ;column
			mov dh,al ;row
			mov bh,0  ;display page
			mov ah,02h
			int 10h
			
			;making sure that in bx there is the array board1 equivalent of the user input
			call deley
			lea di,board2
			add di,bx
			mov al,[di]
			;making sure that the user hasn't chose an empty space
			cmp al,0h
			je space_guess

			add al,'0'
			mov bl,0Ch 
			mov bh,0   ;display page
			mov ah,0Eh ;teletype
			int 10h
	here:
ret
endp





start:
	mov ax,@data
	mov ds,ax
	mov ax,0b800h
	mov es,ax
	;define mouse
	mov ax,1
	int 33h
	;make mouse borders
	mov cx,296 ;min x
	mov dx,388 ;max x
	mov ax,7   ;set mouse horizontel range 
	int 33h    ;excute configuration

	mov cx,8   ;min y
	mov dx,168 ;max y
	mov ax,8   ;set mouse horizontel range 
	int 33h    ;excute configuration

	;printing starting message
	call clear
	call print_starting_msg
	call deley
	
	;printing starting position
	call clear
	call starting_game

	game_loop:
		inc counter
		cmp counter,135 ;the number of valid guesses is 135
		jg continue_win
		;checks for mouse click
		mouse_loop_second_click:
			mov ax,0
			mouse_click_detector:
				mov ax,5
				int 33h
				cmp ax,1
				je n1
				cmp ax,2
				je n2
				jmp mouse_click_detector
			;if user left-clicked
			n1:
				call detecting
				cmp al,0h
				je continue
				jmp game_loop
			;if user right-clicked
			n2:
				;getting the mouse position in the registers cx and dx (cx - represents x value and dx - represents y value)
				mov cx,0
				mov dx,0
				mov ax,3
				int 33h
				
				;the measurements of the mouse are different from the measurements of the screen so we need to divide by 8 cx and dx
				mov ax,cx
				xor ah,ah
				mov bl,8
				div bl 
				push ax
				
				mov ax,dx
				xor ah,ah
				mov bl,8
				div bl 
				push ax
				
				pop ax
				pop bx
				add bl,32
				
				;setting cursor position
				mov dl,bl
				mov dh,al
				mov bh,0
				mov ah,02h
				int 10h
				
				;printing F that represents flag
				call deley
				mov al,'F'
				mov bl,0Ch
				mov bh,0
				mov ah,0Eh
				int 10h
				jmp mouse_loop_second_click
			
	continue_win:
		;printing winning message
		call clear
		call win
		call deley
	continue:
mov ah,4ch
int 21h
end start
