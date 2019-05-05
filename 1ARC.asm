ORG 100h   
.MODEL TINY
.STARTUP   


MOV AH,0 ;set video mode
MOV AL,03 ;mode 3,normal text mode 
INT 10H   
.data
company db 'ByteSmallGame Presents : Sup Maze Game$'
rules db 'Rules:$'
perso db ': You are him$'
up db '(z)up$'
down db '(s)down$'
left db 'left(q)$'
right db '(d)right$'
move db ': You can move with the commands$'
locked db ': Doors are locked$' 
unlocked db ': Unlock them by grabbing the keys$'
nextlvl db ':Go to the next level by going in the unlock doors$' 
gl db 'GOOD LUCK !$'

.code

buff        db  26        ;MAX NUMBER OF CHARACTERS ALLOWED (25).
            db  ?         ;NUMBER OF CHARACTERS ENTERED BY USER.
            db  26 dup(0) ;CHARACTERS ENTERED BY USER.

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,1  ;row coord
mov dl,22  ;column coord
int 10h         
                 
;INITIALIZE DATA SEGMENT.
mov  ax,@data
mov  ds,ax

lea dx, company ;DISPLAY FIRST STRING.
mov ah, 9
int 21h 
  
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,3  ;row coord
mov dl,0  ;column coord
int 10h          

;RULES                 
;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, rules ;DISPLAY second string.
  mov ah, 9
  int 21h

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,3  ;row coord
mov dl,0  ;column coord
int 10h


;PERSO
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,5  ;row coord
mov dl,0  ;column coord
int 10h

mov ah,09  ;display character
mov al, 001 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,70h  ; color
mov cx,1    ;nombre de fois print
int 10h

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,5  ;row coord
mov dl,3  ;column coord
int 10h         
                 
;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, perso ;DISPLAY second string.
  mov ah, 9
  int 21h
  
;MOVEMENTS 
;up
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,7  ;row coord
mov dl,7  ;column coord
int 10h

;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, up ;DISPLAY second string.
  mov ah, 9
  int 21h
  
;down
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,9  ;row coord
mov dl,7  ;column coord
int 10h

;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, down ;DISPLAY second string.
  mov ah, 9
  int 21h 
 
;left
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,8  ;row coord
mov dl,1  ;column coord
int 10h

;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, left ;DISPLAY second string.
  mov ah, 9
  int 21h

;right
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,8  ;row coord
mov dl,10  ;column coord
int 10h

;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, right ;DISPLAY second string.
  mov ah, 9
  int 21h
  
;Commands
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,8  ;row coord
mov dl,20  ;column coord
int 10h

;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, move ;DISPLAY second string.
  mov ah, 9
  int 21h 

;LOCKS
;lock
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,60H    ;background et foreground color
MOV CH,11         ;starting row coordonee
MOV CL,1         ;starting colone coordone
MOV DH,13         ;end row coord
MOV DL,5      ;end colone coord
INT 10H

;lock interieur
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,12  ;row coord
mov dl,3  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 006 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,67h  ; color
mov cx,1    ;nombre de fois print
int 10h


Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,12  ;row coord
mov dl,7  ;column coord
int 10h         
                 
;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, locked ;DISPLAY second string.
  mov ah, 9
  int 21h
  
;La Clefs  


Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,15  ;row coord
mov dl,1  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 220 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,06h  ; color
mov cx,3    ;nombre de fois print
int 10h   

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,16  ;row coord
mov dl,4  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 220 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,06h  ; color
mov cx,2    ;nombre de fois print
int 10h    

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,15  ;row coord
mov dl,4  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 219 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,06h  ; color
mov cx,2    ;nombre de fois print
int 10h  

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,16  ;row coord
mov dl,4  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 223;character displayed (ASCII)
mov bh,0    ; page number
mov bl,06h  ; color
mov cx,2    ;nombre de fois print
int 10h  

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,16  ;row coord
mov dl,1  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 179 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,06h  ; color
mov cx,3    ;nombre de fois print
int 10h

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,15  ;row coord
mov dl,7  ;column coord
int 10h         
                 
;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, unlocked ;DISPLAY second string.
  mov ah, 9
  int 21h
          
;UNLOCKED

MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,17H    ;background et foreground color
MOV CH,18        ;starting row coordonee
MOV CL,1         ;starting colone coordone
MOV DH,20         ;end row coord
MOV DL,5      ;end colone coord
INT 10H

;unlock interieur 
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,19  ;row coord
mov dl,3  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al,23 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,17h  ; color
mov cx,1    ;nombre de fois print
int 10h

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,19  ;row coord
mov dl,8  ;column coord
int 10h         
                 
;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, nextlvl ;DISPLAY second string.
  mov ah, 9
  int 21h
  
  
;START

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,23  ;row coord
mov dl,50  ;column coord
int 10h         
                 
;INITIALIZE DATA SEGMENT.
  mov  ax,@data
  mov  ds,ax

  lea dx, gl ;DISPLAY second string.
  mov ah, 9
  int 21h

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,22  ;row coord
mov dl,25  ;column coord
int 10h
  
STRING DB 10, 13, 'Enter USERNAME to start = $' 
MOV AX, @DATA                                      ; initialize the data segment

MOV DS, AX
 
LEA DX, STRING                                     ; loading the effective address
 
MOV AH, 09H                                        ; for string display
 
INT 21H                                            ; dos interrupt function
 
MOV AX, 4C00H                                      ; end request
 

mov ax, @data
mov ds, ax              

;CAPTURE STRING FROM KEYBOARD.
                                  
mov ah, 0Ah ;SERVICE TO CAPTURE STRING FROM KEYBOARD.
mov dx, offset buff
int 21h                 

;CHANGE CHR(13) BY '$'.
mov si, offset buff + 1 ;NUMBER OF CHARACTERS ENTERED.
mov cl, [ si ] ;MOVE LENGTH TO CL.
mov ch, 0      ;CLEAR CH TO USE CX. 
inc cx ;TO REACH CHR(13).
add si, cx ;NOW SI POINTS TO CHR(13).
mov al, '$'
mov [ si ], al ;REPLACE CHR(13) BY '$'.
            

;clear screen
MOV AH,06h ;set video mode
    MOV AL,25
    mov CH,0
    mov cl,0
    mov dl,80
    mov dh, 50
    INT 10H
 

;decor nom
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,4         ;starting row coordonee
MOV CL,58         ;starting colone coordone
MOV DH,7         ;end row coord
MOV DL, 75      ;end colone coord
INT 10H 
;DISPLAY STRING.
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,5  ;row coord
mov dl,64  ;column coord
int 10h  
       
mov ah, 9 ;SERVICE TO DISPLAY STRING.
mov dx, offset buff + 2 ;MUST END WITH '$'. 

mov bh,0    ; page number
int 21h   






Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,7  ;row coord
mov dl,64  ;column coord
int 10h         
            
STRIN DB 'lvl $' 
 

 
LEA DX, STRIN 
                                   ; loading the effective address
 
MOV AH, 09H 

mov bh,0    ; page number                                       ; for string display
 
INT 21H

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,7  ;row coord
mov dl,68  ;column coord
int 10h         
            
STRI DB '1  $' 
 

 
LEA DX, STRI 
                                   ; loading the effective address
 
MOV AH, 09H 

mov bh,0    ; page number                                       ; for string display
 
INT 21H

 


;colonne vertical laby1
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,2         ;starting colone coordone
MOV DH,23         ;end row coord
MOV DL, 6      ;end colone coord
INT 10H 

;cache text 1
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,00H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,0         ;starting colone coordone
MOV DH,3         ;end row coord
MOV DL, 1      ;end colone coord
INT 10H

;cache text 2
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,00H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,7         ;starting colone coordone
MOV DH,3         ;end row coord
MOV DL, 13      ;end colone coord
INT 10H  

;colonne pont laby1 laby2
MOV AH,06
MOV AL,10 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,11       ;starting row coordonee
MOV CL,2         ;starting colone coordone
MOV DH,13         ;end row coord
MOV DL, 18      ;end colone coord
INT 10H   

;colonne vertical laby2
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,14         ;starting colone coordone
MOV DH,23         ;end row coord
MOV DL,18     ;end colone coord
INT 10H

;colonne horizontal laby1
MOV AH,06
MOV AL,8 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,14         ;starting colone coordone
MOV DH,3         ;end row coord
MOV DL,50      ;end colone coord
INT 10H 

;colonne vertical laby3
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,24         ;starting colone coordone
MOV DH,12         ;end row coord
MOV DL,28      ;end colone coord
INT 10H

;colonne horizontal laby2
MOV AH,06
MOV AL,8 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,21         ;starting row coordonee
MOV CL,14         ;starting colone coordone
MOV DH,23         ;end row coord
MOV DL,38      ;end colone coord
INT 10H  

;colonne vertical laby4
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,17         ;starting row coordonee
MOV CL,24         ;starting colone coordone
MOV DH,20         ;end row coord
MOV DL,28      ;end colone coord
INT 10H  

;colonne vertical laby5
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,9         ;starting row coordonee
MOV CL,34         ;starting colone coordone
MOV DH,20         ;end row coord
MOV DL,38      ;end colone coord
INT 10H    

;colonne pont laby4 laby5
MOV AH,06
MOV AL,10 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,9       ;starting row coordonee
MOV CL,34         ;starting colone coordone
MOV DH,11         ;end row coord
MOV DL, 50      ;end colone coord
INT 10H  

;colonne vertical laby6
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,70H    ;background et foreground color
MOV CH,9         ;starting row coordonee
MOV CL,46         ;starting colone coordone
MOV DH,23         ;end row coord
MOV DL,50      ;end colone coord
INT 10H 

;lock vert
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,20H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,2         ;starting colone coordone
MOV DH,3         ;end row coord
MOV DL, 6      ;end colone coord
INT 10H

;lock rouge(orange)
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,40H    ;background et foreground color
MOV CH,21         ;starting row coordonee
MOV CL,2         ;starting colone coordone
MOV DH,23         ;end row coord
MOV DL, 6      ;end colone coord
INT 10H  

;lock jaune
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,60H    ;background et foreground color
MOV CH,10        ;starting row coordonee
MOV CL,24         ;starting colone coordone
MOV DH,12         ;end row coord
MOV DL,28      ;end colone coord
INT 10H

;lock bleu
MOV AH,06
MOV AL,25 ;nb lignes
MOV BH,90H    ;background et foreground color
MOV CH,17         ;starting row coordonee
MOV CL,24         ;starting colone coordone
MOV DH,19         ;end row coord
MOV DL,28      ;end colone coord
INT 10H  

;lock violet
MOV AH,06
MOV AL,8 ;nb lignes
MOV BH,50H    ;background et foreground color
MOV CH,1         ;starting row coordonee
MOV CL,46         ;starting colone coordone
MOV DH,3         ;end row coord
MOV DL,50      ;end colone coord
INT 10H      
  

;lock interieur vert
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,02  ;row coord
mov dl,4  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 006 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,27h  ; color
mov cx,1    ;nombre de fois print
int 10h

;lock interieur rouge
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,22  ;row coord
mov dl,4  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 006 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,47h  ; color
mov cx,1    ;nombre de fois print
int 10h


;lock interieur bleu
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,18  ;row coord
mov dl,26  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 006 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,97h  ; color
mov cx,1    ;nombre de fois print
int 10h   

;lock interieur jaune
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,11  ;row coord
mov dl,26  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 006 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,67h  ; color
mov cx,1    ;nombre de fois print
int 10h 

;lock interieur violet
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,2  ;row coord
mov dl,48  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 006 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,57h  ; color
mov cx,1    ;nombre de fois print
int 10h  
 

;La Clefs  


Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,21  ;row coord
mov dl,29  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 220 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,76h  ; color
mov cx,3    ;nombre de fois print
int 10h   

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,22  ;row coord
mov dl,32  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 220 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,76h  ; color
mov cx,2    ;nombre de fois print
int 10h    

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,21  ;row coord
mov dl,32  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 219 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,76h  ; color
mov cx,2    ;nombre de fois print
int 10h  

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,22  ;row coord
mov dl,32  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 223;character displayed (ASCII)
mov bh,0    ; page number
mov bl,76h  ; color
mov cx,2    ;nombre de fois print
int 10h  

Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,22  ;row coord
mov dl,29  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 179 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,76h  ; color
mov cx,3    ;nombre de fois print
int 10h


;Personnage
Mov ah,02  ;set cursor
mov bh,0   ;page number
mov dh,20 ;row coord
mov dl,48  ;column coord
int 10h    ;cursor

mov ah,09  ;display character
mov al, 001 ;character displayed (ASCII)
mov bh,0    ; page number
mov bl,70h  ; color
mov cx,1    ;nombre de fois print
int 10h 

 


;----------------- PASSE AU DEMARAGE DU JEUX --------------------------


start:  ;boucle infinie 
    MOV AH,07h 
    INT 21H
         
  
    cmp al,122 
    JE bouge_up
    cmp al,115
    JE bouge_down
    cmp al,100
    JE bouge_right 
    cmp al,113
    JE bouge_left
    
    mov ah,10 
    jmp start 


bouge_up:  
    ;Personnage removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    ;new perso
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    sub dh,1   ;row coord
    int 10h    ;cursor
    
    ;on recolte les infos de l'endroit ou va etre le nouveau curseur
    mov  bh, 0      ;Display page
    mov  ah, 08h
    int  10h  ;Gives color attribute code in AH  
    
    ;si la couleur est noir, on va blocker (jump to block) sinon on va continuer et display
    cmp ah,0Fh
    JE block_up
    cmp ah,90h
    JE block_up
    cmp ah,20h
    JE block_up
    cmp ah,76h;enleve la clef jaune
    JE clef_redirect
    cmp ah,74h;enleve la clef rouge
    JE clef_redirect
    cmp ah,72h;enleve la clef verte
    JE clef_redirect
    cmp ah,79h;enleve la clef bleu
    JE clef_redirect
    cmp ah,75h;enleve la clef violette
    JE clef_redirect
    cmp ah,17h
    JE end_lvl_up_verif

    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    jmp start 
    
    block_up: 
    
        Mov ah,02  ;set cursor
        mov bh,0   ;page number
        add dh,1   ;row coord
        int 10h    ;cursor
        
        mov ah,09  ;display character
        mov al, 001 ;character displayed (ASCII)
        mov bh,0    ; page number
        mov bl,70h  ; color
        mov cx,1    ;nombre de fois print
        int 10h 
        
        mov ch,dl
        
        ;BEEP
        mov ah,2
        mov dl,07h
        int 21h
        
        mov dl,ch
        
        jmp start
        
    end_lvl_up_verif:
        cmp dh,10h
            JBE end_lvl3
            jmp end_lvl4
      
       
    
    
    
bouge_down: 
    ;Personnage removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;new perso 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    add dh,1   ;coord row
    int 10h    ;cursor
    
    
    
     
    ;on recolte les infos de l'endroit ou va etre le nouveau curseur
    mov  bh, 0      ;Display page
    mov  ah, 08h
    int  10h  ;Gives color attribute code in AH  
    
    ;si la couleur est noir, on va blocker (jump to block) sinon on va continuer et display
    cmp ah,0Fh
    JE block_down
    cmp ah,40h
    JE block_down 
    cmp ah,60h
    JE block_down
    cmp ah,17h
    JE end_lvl_down_verif
    
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    jmp start
    
    block_down: 
       
        Mov ah,02  ;set cursor
        mov bh,0   ;page number
        sub dh,1   ;row coord
        int 10h    ;cursor
        
        mov ah,09  ;display character
        mov al, 001 ;character displayed (ASCII)
        mov bh,0    ; page number
        mov bl,70h  ; color
        mov cx,1    ;nombre de fois print
        int 10h
        
        mov ch,dl
        
        ;BEEP
        mov ah,2
        mov dl,07h
        int 21h
        
        mov dl,ch
        jmp start
        
    end_lvl_down_verif:
        cmp dh,15h
        JAE end_lvl2
        jmp end_lvl1  
            
            
      
       
    
    
     
bouge_right:
    ;Personnage removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;new perso
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    add dl,1  ;column coord
    int 10h    ;cursor 
    
    ;on recolte les infos de l'endroit ou va etre le nouveau curseur
    mov  bh, 0      ;Display page
    mov  ah, 08h
    int  10h  ;Gives color attribute code in AH  
    
    ;si la couleur est noir, on va blocker (jump to block) sinon on va continuer et display
    cmp ah,0Fh
    JE block_right
    cmp ah,00h
    JE block_left 
    cmp ah,50h;block le violet
    JE block_right
    cmp ah,76h;enleve la clef jaune
    JE clef_redirect 
    cmp ah,74h;enleve la clef rouge
    JE clef_redirect
    cmp ah,72h;enleve la clef verte
    JE clef_redirect
    cmp ah,79h;enleve la clef bleu
    JE clef_redirect
    cmp ah,75h;enleve la clef violette
    JE clef_redirect
    cmp ah,17h
    JE end_lvl5 ;GG !
    

    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h   
    jmp start
    
    block_right:
        Mov ah,02  ;set cursor
        mov bh,0   ;page number
        sub dl,1  ;column coord
        int 10h    ;cursor
        
        mov ah,09  ;display character
        mov al, 001 ;character displayed (ASCII)
        mov bh,0    ; page number
        mov bl,70h  ; color
        mov cx,1    ;nombre de fois print
        int 10h
        
        mov ch,dl  
        
        ;BEEP
        mov ah,2
        mov dl,07h
        int 21h 
        
        mov dl,ch
        jmp start
        

bouge_left:   
    ;Personnage removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;new perso
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    sub dl,1  ;column coord
    int 10h    ;cursor
    
    ;on recolte les infos de l'endroit ou va etre le nouveau curseur
    mov  bh, 0      ;Display page
    mov  ah, 08h
    int  10h  ;Gives color attribute code in AH  
    
    ;si la couleur est noir, on va blocker (jump to block) sinon on va continuer et display
    cmp ah,0Fh
    JE block_left
    cmp ah,00h
    JE block_left
    cmp ah,76h
    JE clef_redirect
    cmp ah,74h;enleve la clef rouge
    JE clef_redirect
    cmp ah,72h;enleve la clef verte
    JE clef_redirect
    cmp ah,79h;enleve la clef bleu
    JE clef_redirect
    cmp ah,75h;enleve la clef violette
    JE clef_redirect
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h  
    
    
                   
    jmp start 
    
    block_left:
        Mov ah,02  ;set cursor
        mov bh,0   ;page number
        add dl,1  ;column coord
        int 10h    ;cursor 
        
        mov ah,09  ;display character
        mov al, 001 ;character displayed (ASCII)
        mov bh,0    ; page number
        mov bl,70h  ; color
        mov cx,1    ;nombre de fois print
        int 10h
         
        ;petit astuce pour pas perdre la valeur de dl 
        mov ch,dl
        
        ;BEEP
        mov ah,2
        mov dl,07h
        int 21h 
        
        ;on va lui rendre cette valeur ici
        mov dl,ch
        jmp start
        

 
clef_redirect:
    ;si notre Y est superieur ou egale 15H (Y de la clefs1) 
    cmp dh,15h
    JAE clef_removed_lvl1
    ;si notre Y est inferieur ou egale 2H (Y de la clefs2)
    cmp dh,2h
    JBE clef_removed_Verif_sup
   
    
    ;remove clefs lvl3
    cmp dh,0Bh
    JE clef_removed_lvl3
    cmp dh,0Ch
    JE clef_removed_lvl3
    cmp dh,0Dch
    JE clef_removed_lvl3
    cmp dh,0Ech
    JE clef_removed_lvl3
    
    ;remove clefs lvl5
    cmp dh,09h
    JE clef_removed_lvl5
    cmp dh,0Ah 
    JE clef_removed_lvl5 
    
    ;remove clefs lvl4
    clef_removed_Verif_sup:
        cmp dl,17h
        JA clef_removed_lvl2
        jmp clef_removed_lvl4 
        
    
        
         
clef_removed_lvl1:
    ;key logo
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;------------------- 
     
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,21  ;row coord
    mov dl,29  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,22  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,21  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,22  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,22  ;row coord
    mov dl,29  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h
    
    ;lock jaune transforme
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,17H    ;background et foreground color
    MOV CH,10        ;starting row coordonee
    MOV CL,24         ;starting colone coordone
    MOV DH,12         ;end row coord
    MOV DL,28      ;end colone coord
    INT 10H
    
    ;lock interieur jaune
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,26  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,23 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,17h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;perso
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,15h  ;row coord
    mov dl,21h  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
    
  
    jmp start
    
    
clef_removed_lvl2:
    ;key logo
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;------------------- 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,29  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,29  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h
    
    ;ouverture du lock
    
    ;lock rouge(orange)
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,17H    ;background et foreground color
    MOV CH,21         ;starting row coordonee
    MOV CL,2         ;starting colone coordone
    MOV DH,23         ;end row coord
    MOV DL, 6      ;end colone coord
    INT 10H
    
    ;lock interieur rouge
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,22  ;row coord
    mov dl,4  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 23 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,97h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2 ;row coord
    mov dl,30  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;BEEP
    mov ch,dl
    
    
    mov ah,2
    mov dl,07h
    int 21h 
    
    
    mov dl,ch
        
    jmp start

clef_removed_lvl3:
    ;key logo
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;-------------------
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,8  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,11  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,11  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12  ;row coord
    mov dl,11  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12  ;row coord
    mov dl,8  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h 
    
    
    ;ouverture du lock
    
    ;lock vert
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,17h    ;background et foreground color
    MOV CH,1         ;starting row coordonee
    MOV CL,2         ;starting colone coordone
    MOV DH,3         ;end row coord
    MOV DL, 6      ;end colone coord
    INT 10H
    
    ;lock interieur vert
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,02  ;row coord
    mov dl,4  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 23 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,17h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,8  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;BEEP
    mov ch,dl
    
    
    mov ah,2
    mov dl,07h
    int 21h 
    
    
    mov dl,ch
        
    jmp start
    
clef_removed_lvl4:
    ;key logo
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;-------------------
     ;La Clefs 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,17  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,20  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,20  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,20  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,17  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h
    
    ;ouverture du lock
    
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,17H    ;background et foreground color
    MOV CH,17         ;starting row coordonee
    MOV CL,24         ;starting colone coordone
    MOV DH,19         ;end row coord
    MOV DL,28      ;end colone coord
    INT 10H
    
    ;lock interieur bleu
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,18  ;row coord
    mov dl,26  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 23 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,97h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2 ;row coord
    mov dl,17  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
    
    jmp start
    
clef_removed_lvl5:
    ;key logo
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,76h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;-------------------
    
    ;La Clefs disparait  

    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,9  ;row coord
    mov dl,40  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,9  ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,40  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,3    ;nombre de fois print
    int 10h 
 
    
    ;lock ouvert
    
    ;lock violet
    MOV AH,06
    MOV AL,8 ;nb lignes
    MOV BH,17H    ;background et foreground color
    MOV CH,1         ;starting row coordonee
    MOV CL,46         ;starting colone coordone
    MOV DH,3         ;end row coord
    MOV DL,50      ;end colone coord
    INT 10H
    
    
    ;lock interieur violet
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,48  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 23 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,17h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    ;perso
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,40  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
    
  
    jmp start
    
    
    
     
end_lvl1:
    ;key logo removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;------------------- 
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
     
    ;display LVL2 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7  ;row coord
    mov dl,68  ;column coord
    int 10h
    LVL2 DB '2  $' 
 
    LEA DX, LVL2 
                                       ; loading the effective address
     
    MOV AH, 09H 
    
    mov bh,0    ; page number                                       ; for string display
     
    INT 21H
    ;lock jaune invisible
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,77H    ;background et foreground color
    MOV CH,10        ;starting row coordonee
    MOV CL,24         ;starting colone coordone
    MOV DH,12         ;end row coord
    MOV DL,28      ;end colone coord
    INT 10H  
    ;Clefs
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,29  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,74h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,74h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,74h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,32  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,74h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,29  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,74h  ; color
    mov cx,3    ;nombre de fois print
    int 10h
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10 ;row coord
    mov dl,26  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    jmp start
    
end_lvl2:
    ;key logo removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
     
    ;display LVL3 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7  ;row coord
    mov dl,68  ;column coord
    int 10h
    LVL3 DB '3  $' 
 
    LEA DX, LVL3 
                                       ; loading the effective address
     
    MOV AH, 09H 
    
    mov bh,0    ; page number 
     
    INT 21H 
    
    ;lock rouge(orange)
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,70H    ;background et foreground color
    MOV CH,21         ;starting row coordonee
    MOV CL,2         ;starting colone coordone
    MOV DH,23         ;end row coord
    MOV DL, 6      ;end colone coord
    INT 10H
    
    ;La Clefs 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,8  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,72h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,11  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,72h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,11  ;row coord
    mov dl,11  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,72h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12  ;row coord
    mov dl,11  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,72h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12  ;row coord
    mov dl,8  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,72h  ; color
    mov cx,3    ;nombre de fois print
    int 10h
    
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,21 ;row coord
    mov dl,4  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
                                          
    jmp start
    
end_lvl3:
    ;key logo removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
     
    ;display LVL3 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7  ;row coord
    mov dl,68  ;column coord
    int 10h
    LVL4 DB '4  $' 
 
    LEA DX, LVL4 
                                       ; loading the effective address
     
    MOV AH, 09H 
    
    mov bh,0    ; page number                                       ; for string display
     
    INT 21H
    
    ;ouverture lock ver
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,70H    ;background et foreground color
    MOV CH,1         ;starting row coordonee
    MOV CL,2         ;starting colone coordone
    MOV DH,3         ;end row coord
    MOV DL, 6      ;end colone coord
    INT 10H
    ;La Clefs 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,17  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,79h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,20  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,79h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,1  ;row coord
    mov dl,20  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,79h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,20  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,79h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,2  ;row coord
    mov dl,17  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,79h  ; color
    mov cx,3    ;nombre de fois print
    int 10h  
    
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,3 ;row coord
    mov dl,4  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
                                          
    jmp start 

end_lvl4:
    ;key logo removed
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,70  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,75 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,71  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,69 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7 ;row coord
    mov dl,72  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,77h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    ;petit astuce pour pas perdre la valeur de dl 
    mov ch,dl
    
    ;BEEP
    mov ah,2
    mov dl,07h
    int 21h 
    
    ;on va lui rendre cette valeur ici
    mov dl,ch
     
    ;display LVL4 
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,7  ;row coord
    mov dl,68  ;column coord
    int 10h
    LVL5 DB '5 $' 
 
    LEA DX, LVL5 
                                       ; loading the effective address
     
    MOV AH, 09H 
    
    mov bh,0    ; page number                                       ; for string display
     
    INT 21H  
    
    ;lock bleu
    MOV AH,06
    MOV AL,25 ;nb lignes
    MOV BH,70H    ;background et foreground color
    MOV CH,17         ;starting row coordonee
    MOV CL,24         ;starting colone coordone
    MOV DH,19         ;end row coord
    MOV DL,28      ;end colone coord
    INT 10H
    
    ;La Clefs  

    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,9  ;row coord
    mov dl,40  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,75h  ; color
    mov cx,3    ;nombre de fois print
    int 10h   
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 220 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,75h  ; color
    mov cx,2    ;nombre de fois print
    int 10h    
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,9  ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 219 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,75h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 223;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,75h  ; color
    mov cx,2    ;nombre de fois print
    int 10h  
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,10  ;row coord
    mov dl,40  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 179 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,75h  ; color
    mov cx,3    ;nombre de fois print
    int 10h
    
    ;Personnage
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,19 ;row coord
    mov dl,26  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al, 001 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,70h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    jmp start
    
    
end_lvl5:
    MOV AH,06h ;set video mode
    MOV AL,55
    mov CH,0
    mov cl,0
    mov dl,80
    mov dh, 50
    INT 10H
    
     ;YOU
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,33  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,89 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,34  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,79 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,35  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,85 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     ;WON
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,37  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,87 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,38  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,79 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,39  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,78 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h

     ;GG!
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,41  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,71 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h 
    
    Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,42  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,71 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
     Mov ah,02  ;set cursor
    mov bh,0   ;page number
    mov dh,12 ;row coord
    mov dl,43  ;column coord
    int 10h    ;cursor
    
    mov ah,09  ;display character
    mov al,33 ;character displayed (ASCII)
    mov bh,0    ; page number
    mov bl,06h  ; color
    mov cx,1    ;nombre de fois print
    int 10h
    
    
 
end 
ret

 


    
  


        
