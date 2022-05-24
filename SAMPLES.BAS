DECLARE SUB circxle ()
DECLARE SUB music ()
DECLARE SUB art ()
DECLARE SUB mortgage ()
DECLARE SUB donkey ()
DECLARE SUB piechart ()
DECLARE SUB ball ()
DECLARE SUB colorbar ()
DECLARE SUB calendar ()
DECLARE SUB space ()
   REM The IBM Personal Computer Samples
   REM Version 1.00 (C)Copyright IBM Corp 1981
   REM Licensed Material - Program Property of IBM
   REM Author - Glenn Stuart Dardick
   KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
   LOCATE 7, 12, 0: PRINT "Personal Computer"
   COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
   LOCATE 11, 9, 0: PRINT CHR$(179) + "       SAMPLES       " + CHR$(179)
   LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
    LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
    LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
    COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
    COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
140 POKE 106, 0'CLEAR KYBD BUFFER
150 CMD$ = INKEY$
    IF CMD$ = "" THEN GOTO 150
    IF CMD$ = CHR$(27) THEN GOTO 360
    IF CMD$ = " " THEN GOTO 200
    GOTO 140
200 SCREEN 0, 1: COLOR 15, 0, 0: CLS : LOCATE 5, 3: PRINT "SAMPLE PROGRAMS"
    LOCATE 7, 3, 0: PRINT "A - MUSIC    (32k)"
    LOCATE 8, 3, 0: PRINT "B - ART      (32k-Color/Graphics)"
    LOCATE 9, 3, 0: PRINT "C - MORTGAGE (48k)"
    LOCATE 10, 3, 0: PRINT "D - CIRCLE   (BASICA-Color/Graphics)"
    LOCATE 11, 3, 0: PRINT "E - DONKEY   (BASICA-Color/Graphics)"
    LOCATE 12, 3, 0: PRINT "F - PIECHART (BASICA-Color/Graphics)"
    LOCATE 13, 3, 0: PRINT "G - BALL     (BASICA-Color/Graphics)"
    LOCATE 14, 3, 0: PRINT "H - COLORBAR (32k)"
    LOCATE 15, 3, 0: PRINT "I - CALENDAR (32k)"
    LOCATE 16, 3, 0: PRINT "J - SPACE    (BASICA-Color/Graphics)"
    LOCATE 17, 3, 0: PRINT "ESC KEY - EXIT"
    LOCATE 19, 3, 0: PRINT "ENTER LETTER OF PROGRAM"
    LOCATE 21, 3, 0: PRINT "NOTE: All of the above programs"
    LOCATE 22, 3, 0: PRINT "      require 48k if using BASICA"
270 POKE 106, 0'CLEAR KYBD BUFFER
    K$ = INKEY$: IF K$ <> "" THEN GOTO 270
275 K$ = INKEY$: IF K$ = "" THEN GOTO 275
    IF MID$(K$, 1, 1) = "A" THEN music
    IF MID$(K$, 1, 1) = "B" THEN art
    IF MID$(K$, 1, 1) = "C" THEN mortgage
    IF MID$(K$, 1, 1) = "D" THEN circxle
    IF MID$(K$, 1, 1) = "E" THEN donkey
    IF MID$(K$, 1, 1) = "F" THEN piechart
    IF MID$(K$, 1, 1) = "G" THEN ball
    IF MID$(K$, 1, 1) = "H" THEN colorbar
    IF MID$(K$, 1, 1) = "I" THEN calendar
    IF MID$(K$, 1, 1) = "J" THEN space
    IF MID$(K$, 1, 1) = "a" THEN music
    IF MID$(K$, 1, 1) = "b" THEN art
    IF MID$(K$, 1, 1) = "c" THEN mortgage
    IF MID$(K$, 1, 1) = "d" THEN circxle
    IF MID$(K$, 1, 1) = "e" THEN donkey
    IF MID$(K$, 1, 1) = "f" THEN piechart
    IF MID$(K$, 1, 1) = "g" THEN ball
    IF MID$(K$, 1, 1) = "h" THEN colorbar
    IF MID$(K$, 1, 1) = "i" THEN calendar
    IF MID$(K$, 1, 1) = "j" THEN space
    IF MID$(K$, 1, 1) = CHR$(27) THEN GOTO 360
    GOTO 200
360 SCREEN 0, 1: COLOR 7, 0: CLS : END
     GOTO 200
106
DATA -2,"La Cucaracha - Mexican Folk Song"
DATA 42,1,0,1,42,1,0,1,42,1,0,1,47,1,0,5,51,1,0,3,42,1,0,1,42,1,0,1
DATA 42,1,0,1,47,1,0,5,51,1,0,5,30,1,0,1,30,1,0,1,35,1,0,3,47,1,0,1
DATA 47,1,0,1,46,1,0,1,46,1,0,1,44,1,0,1,44,1,0,1,42,8,0,2,42,1,0,1
DATA 42,1,0,1,42,1,0,1,46,1,0,5,49,1,0,3,42,1,0,1,42,1,0,1,42,1,0,1
DATA 46,1,0,5,49,1,0,5,37,1,0,1,37,1,0,1,30,1,0,3,54,2,56,2,54,2,52,2
DATA 51,2,49,2,47,8
DATA -1,-1
110
DATA -2,"Blue Danube Waltz by J.S.Strauss"
DATA 42,4,46,4,49,4,49,4,0,4,61,2,0,2,61,2,0,6,58,2,0,2,58,2,0,6,42,4,42,4
DATA 46,4,49,4
DATA 49,4,0,4,61,2,0,2,61,2,0,6,59,2,0,2,59,2,0,6,41,4,41,4,44,4,51,4,51,4
DATA 0,4,63,2,0,2,63,2,0,6,59,2,0,2
DATA 59,2,0,6,41,4,41,4,44,4,51,4,51,4,0,4,63,2,0,2,63,2,0,6,58,2,0,2,58,2
DATA 0,6,42,4
DATA 42,4,46,4,49,4,54,4,0,4,66,2,0,2,66,2,0,6,61,2,0,2,61,2,0,6,42,4
DATA 42,4,46,4,49,4,54,4,0,4,66,2,0,2
DATA 66,2,0,6,63,2,0,2,63,2,0,6,44,4,44,4,47,4,51,2,0,2,51,14,0,2,48,4
DATA 49,4,58,16
DATA 54,4,46,4,46,8,44,4,51,8,49,4,42,4,0,2,42,2,42,4,0,8,49,2,0,2,47,2
DATA 0,6,49,2,0,2
DATA 47,2,0,6,49,4,58,16,56,4,49,2,0,2,46,2,0,6,49,2,0,2,46,2,0,6,49,4
DATA 56,16,54,4,49,2,0,2,47,2,0,6,49,2,0,2,47,2,0,6,49,4,58,16
DATA 56,4,49,4,54,4,56,4,58,4,61,8,59,4,58,2,58,2,58,4,56,2,0,2,54,4,0,8
DATA -1,-1
105
DATA -2,"Humoresque by Dvorak"
DATA 47,3,0,2,49,1,47,3,0,2,49,1,51,3,0,2,54,1,56,3,0,2,54,1
DATA 59,3,0,2,58,1,61,3,0,2,59,1,58,3,0,2,61,1,59,3,0,2,56,1
DATA 54,3,0,2,54,1,56,3,0,2,54,1,59,3,0,2,56,1,54,3,0,2,51,1
DATA 49,24,47,3,0,2,49,1,47,3,0,2,49,1,51,3,0,2,54,1,56,3,0,2,54,1
DATA 56,3,0,2,58,1,61,3,0,2,59,1,58,3,0,2,61,1,59,3,0,2,56,1
DATA 54,3,0,2,54,1,59,3,0,2,47,1,49,6,54,6,47,18
DATA -1,-1
107
DATA -2,"Pop! Goes the Weasle - Anonymous"
DATA 47,2,0,2,47,2,49,2,0,2,49,2,51,2,54,2,51,2,47,2,0,2,42,2
DATA 47,2,0,2,47,2,49,2,0,2,49,2,51,6,47,2,0,2,42,2,47,2,0,2,47,2,49,2
DATA 0,2,49,2,51,2,54,2,51,2,47,2,0,4,56,2,0,4,49,2,0,2,52,2,51,6,47,2
DATA 0,4,59,2,0,2,59,2,56,2,0,2,59,2,58,2,61,2,58,2,54,2,0,4,59,2,0,2
DATA 59,2,56,2,0,2,59,2,58,6,54,2,0,2,51,2,52,2,0,2,51,2,52,2,0,2,54,2
DATA 56,2,0,2,58,2,59,2,0,4,56,2,0,4,49,2,0,2,52,2,51,6,47,2
DATA -1,-1
103
DATA -2,"Symphony #40 by Mozart"
DATA 55,2,54,2,54,4,55,2,54,2,54,4,55,2,54,2,54,4,62,4,0,4
DATA 62,2,61,2,59,4,59,2,57,2,55,4,55,2,54,2
DATA 52,4,52,4,0,4,54,2,52,2,52,4,54,2,52,2,52,4,54,2,52,2
DATA 52,4,61,4,0,4,61,2,59,2,58,4,58,2,55,2,54,4,54,2,52,2
DATA 50,4,50,4,0,4,62,2,61,2,61,4,64,4,58,4,61,4
DATA 59,4,54,4,0,4,62,2,61,2,61,4,64,4,58,4,61,4
DATA 59,4,62,4,61,2,59,2,57,2,55,2,54,4,46,4,47,4,49,4
DATA 50,4,52,2,50,2,49,4,47,4,54,4,0,4,64,8
DATA 65,2,0,6,64,8,65,2,0,6,64,8
DATA 65,4,64,4,65,4,64,4,65,4
DATA -1,-1
108
DATA -2,"Yankee Doodle - Anonymous "
DATA 50,3,50,3,52,3,54,3,50,3,54,3,52,3,45,3,50,3,50,3,52,3,54,3,50,6
DATA 49,3,0,3
DATA 50,3,50,3,52,3,54,3,55,3,54,3,52,3,50,3,49,3,45,3,47,3,49,3,50,6
DATA 50,3,0,3
DATA 47,5,49,1,47,3,45,3,47,3,49,3,50,3,0,3,45,5,47,1,45,3,43,3,42,6
DATA 45,3,0,3
DATA 47,5,49,1,47,3,45,3,47,3,49,3,50,3,47,3,45,3,50,3,49,3,52,3,50,6
DATA 50,6
DATA -1,-1
101
DATA -2,"FUNERAL MARCH OF A MARIONETTE - GOUNOD"
DATA 37,1,0,2,30,1,0,5,42,3,42,3,41,3,39,3,41,3,0,3,42,3,44,3,0,3,37,1,0,2
DATA 30,1,0,5,42,3,42,3,41,3,39,3,41,3,0,3,42,3,44,3,0,3,37,3,42,3,0,3,45,3
DATA 49,6,47,3,45,3,0,3,49,3,52,6,50,3,49,3,0,3,53,3,56,6,54,3,53,3,50,3
DATA 49,3,47,3,45,3,44,3,30,1,0,5,42,3,42,3,41,3,39,3,41,3,0,3,42,3,44,3
DATA 0,3,37,1,0,2,30,1,0,5,42,3,42,3,41,3,39,3,41,3,0,3,42,3,44,3,0,3
DATA 37,3,45,3,0,3,49,3,52,6,50,3,49,3,47,3,45,3,43,3,47,3,50,3,42,3
DATA 41,3,42,3,44,3,0,3,45,1,0,2,44,9,42,1
DATA -1,-1
102
DATA -2,"STARS AND STRIPES FOREVER - SOUSA "
DATA 54,6,54,6,52,3,51,3,51,6,50,3,51,3,51,16,0,2,50,3
DATA 51,3,51,6,50,3,51,3
DATA 54,6,51,3,54,3,52,12,49,6,0,3,49,3,49,6,48,3,49,3
DATA 49,6,48,3,49,3
DATA 52,16,0,2,51,3,49,3,51,3,54,9,56,9,56,3,49,16,0,2,54,6
DATA 54,6,52,3,51,3,51,6,50,3,51,3,51,16,0,2,50,3,51,3,51,6,50,3 ,51,3
DATA 52,3,51,3,49,5,46,1,49,12,47,6,0,3,47,3,47,6,46,3,47,3,50,6,49,3,47,3
DATA 59,15,0,3,47,3,49,3,51,3,54,1,0,2,47,3,49,3,51,3,54,1,0,2,42,3,44,5
DATA 51,1,49,12,47,1
DATA -1,-1
104
DATA -2,"Mexican Hat Dance - Traditional "
DATA 52,2,57,2,0,2,52,2,57,2,0,2,52,2,57,6,0,4,52,2,57,2,59,2,57,2,56,4
DATA 57,2,59,2,0,8,52,2,56,2,0,2,52,2,56,2,0,2,52,2,56,6,0,4,52,2
DATA 56,2,57,2,56,2,54,4,56,2,57,2,0,6,64,2,63,2,64,2,61,2,60,2,61,2
DATA 57,2,56,2,57,2,52,2,0,4,49,2,50,2,52,2,54,2,56,2,57,2,59,2,61,2
DATA 62,2,59,2,0,4,62,2,61,2,62,2,59,2,58,2,59,2,56,2,55,2,56,2,52,2
DATA 0,4,64,2,63,2,64,2,66,2,64,2,62,2,61,2,59,2,57,2
DATA -1,-1
111
DATA -2,"SCALES                          "
DATA 38,1,39,1,40,1,41,1,42,1,43,1,44,1,45,1,46,1,47,1
DATA 48,1,49,1,50,1,51,1,52,1,53,1,54,1,55,1,56,1
DATA 57,1,58,1,59,1,60,1,61,1,62,1,63,1,64,1,65,8,0,4
DATA 65,8,64,1,63,1,62,1,61,1,60,1,59,1,58,1,57,1
DATA 56,1,55,1,54,1,53,1,52,1,51,1,50,1,49,1,48,1
DATA 47,1,46,1,45,1,44,1,43,1,42,1,41,1,40,1,39,1,38,8
DATA -1,-1
109
DATA -2,"Sakura - Japanese Folk Melody "
DATA 49,8,49,8,51,12,0,4,49,8,49,8,51,12,0,4,49,8,51,8,52,8,51,8
DATA 49,8,51,4,49,4,45,16,44,8,40,8,44,8,45,8
DATA 44,8,44,4,40,4,39,16,49,8,49,8,51,12,0,4,49,8,49,8,51,12,0,4
DATA 40,8,44,8,45,8,49,8,51,4,49,4,45,8,44,16
DATA -1,-1

DEFINT A-Z
SUB art
     REM The IBM Personal Computer Art
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    REM Author - Glenn Stuart Dardick
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1011
     SAMPLES$ = "YES"
1011 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "         ART         " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1101 IF INKEY$ <> "" THEN GOTO 1101
1111 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1111
     IF CMD$ = CHR$(27) THEN GOTO 1531
     IF CMD$ = " " THEN GOTO 1161
     GOTO 1111
1161 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN GOTO 1301
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1241 IF INKEY$ <> "" THEN GOTO 1241
1251 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1251
     IF CMD$ = CHR$(27) THEN GOTO 1531
     IF CMD$ = " " THEN GOTO 1531
     GOTO 1251
1301 DEF SEG
     'ON ERROR GOTO 1341
     PLAY "mf"
     GOTO 1351
1341 'RESUME 1351
1351 ON ERROR GOTO 0
     SCREEN 1, 0: COLOR 8, 0: CLS
     LINE (1, 1)-(320, 200), 2, BF
     LINE (30, 30)-(290, 170), 0, BF
     LINE (30, 30)-(1, 1), 1
     LINE (290, 30)-(320, 1), 1
     LINE (30, 170)-(1, 200), 1
     LINE (290, 170)-(320, 200), 1
     LINE (100, 179)-(216, 193), 0, BF
     LOCATE 24, 16
     PRINT " The City ";
     LOCATE 2, 10
     PRINT "press ESC key to exit";
1411 IX1 = RND * 250 + 35
     IX2 = RND * 250 + 35
     IX2 = (IX1 - IX2) / 3 + IX2
     IY1 = RND * 110 + 55
     IY2 = 165
     LINE (IX1, IY1)-(IX2, IY2), RND * 2 + 1, BF
     LINE (IX1, IY1)-(IX2, IY2), 0, B
     LINE (IX1 + 1, IY1 + 1)-(IX2 - 1, IY2 - 1), 0, B
     IA = ABS((IX1 - IX2) * (IY1 - IY2))
     IX = (36400! - IA) / 360 + 37
     SOUND IX, 2
     K$ = INKEY$
     IF K$ = "" THEN GOTO 1411
     IF K$ <> CHR$(27) THEN POKE 106, 0: GOTO 1411
1531 SCREEN 0, 1
     COLOR 7, 0, 0: CLS : EXIT SUB



END SUB

SUB ball
   REM The IBM Personal Computer Ball
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEFINT A-Z: DIM B(280): DIM A(150)
    DIM L AS SINGLE
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1012
     SAMPLES$ = "YES"
1012 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "        BALL         " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1102 IF INKEY$ <> "" THEN GOTO 1102
1112 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1112
     IF CMD$ = CHR$(27) THEN GOTO 1282
     IF CMD$ = " " THEN GOTO 1162
     GOTO 1112
1162 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN DEF SEG : GOTO 1262
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1242 IF INKEY$ <> "" THEN GOTO 1242
1252 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1252
     IF CMD$ = CHR$(27) THEN GOTO 1282
     IF CMD$ = " " THEN GOTO 1282
     GOTO 1252
1262 KEY OFF
     'ON ERROR GOTO 1272
     PLAY "p16"
     GOTO 1302
1272 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: 'RESUME 1282
1282 ON ERROR GOTO 0
     SCREEN 0, 1: CLS : EXIT SUB
1302 REM
     PLAY "mfl32t067"
     'DEFINT A-Z: DIM B(280): DIM A(150)
     CLS : SCREEN 1, 0: COLOR 8, 0: KEY OFF
     CIRCLE (160, 100), 10, 2
     PAINT (160, 100), 2, 2
     GET (150, 90)-(170, 110), A
     CLS : LINE (19, 0)-(299, 177), , B
     LINE (20, 1)-(300, 178), , B
     LOCATE 24, 11: PRINT " Press ESC to exit ";
     FOR X = 20 TO 280 STEP 4
     B(X) = 159 - CINT(ABS(SIN(X * 7.853981E-02) * X) \ 2)
     NEXT: L = 2: Y2 = 150
     LINE (223, 3)-(253, 175), 3, BF
     LINE (191, 3)-(222, 175), 2, BF
     LINE (160, 3)-(190, 175), 1, BF
1562 FOR D = 0 TO 1
     S = 20 + D * 260: E = 280 - D * 260
     FOR X = S TO E STEP 4 - 8 * D
     Y = B(X): N = (170 - Y2) \ 5: SOUND N * 30, L: IF F THEN PUT (X2, Y2), A
     A$ = INKEY$: IF A$ = CHR$(27) THEN EXIT SUB
     PUT (X, Y), A: X2 = X: Y2 = Y: F = -1: NEXT
     L = L / 1.5: IF L < .125 THEN L = 2
     NEXT
     POKE 106, 0: GOTO 1562



END SUB

SUB calendar
    REM The IBM Personal Computer Calendar
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1013
     SAMPLES$ = "YES"
1013 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "      CALENDAR       " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1103 IF INKEY$ <> "" THEN GOTO 1103
1113 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1153
     IF CMD$ = CHR$(27) THEN GOTO 2293
     GOTO 1113
1153 COLOR 15, 0: CLS
     DIM M$(19), MONTH$(2, 19), MNAME$(12), DAYS(12)
     MNAME$(1) = " JANUARY ": MNAME$(2) = "FEBRUARY "
     MNAME$(3) = "  MARCH  ": MNAME$(4) = "  APRIL  "
     MNAME$(5) = "   MAY   ": MNAME$(6) = "  JUNE   "
     MNAME$(7) = "  JULY   ": MNAME$(8) = " AUGUST  "
     MNAME$(9) = "SEPTEMBER": MNAME$(10) = " OCTOBER "
     MNAME$(11) = " NOVEMBER": MNAME$(12) = "DECEMBER "
     DAYS(1) = 31: DAYS(2) = 28: DAYS(3) = 31: DAYS(4) = 30
     DAYS(5) = 31: DAYS(6) = 30: DAYS(7) = 31: DAYS(8) = 31
     DAYS(9) = 30: DAYS(10) = 31: DAYS(11) = 30: DAYS(12) = 31
     DIM YEARS(20)
     YEARS(1) = 4: YEARS(2) = 5: YEARS(3) = 6: YEARS(4) = 0
     YEARS(5) = 2: YEARS(6) = 3: YEARS(7) = 4: YEARS(8) = 5
     YEARS(9) = 0
     M$(1) = CHR$(192) + STRING$(35, 208)
     T$ = "    " + CHR$(202): M$(2) = CHR$(202) + T$ + T$ + T$ + T$ + T$ + T$ + T$: M$(3) = M$(2)
     T$ = STRING$(4, 208) + CHR$(218): M$(4) = CHR$(202) + T$ + T$ + T$ + T$ + T$ + T$ + T$
     FOR I = 5 TO 19: M$(I) = M$(I - 3): NEXT I
     LOCATE 3, 1
     PRINT "ENTER 0 TO END"
     PRINT "THE PROGRAM.": LOCATE 1, 1
1533 LINE INPUT "ENTER YEAR (1981-1989) ==> "; YR$
     IF YR$ = "0" THEN GOTO 2293
     IF YR$ = "1981" THEN YR = 1: GOTO 1733
     IF YR$ = "1982" THEN YR = 2: GOTO 1733
     IF YR$ = "1983" THEN YR = 3: GOTO 1733
     IF YR$ = "1984" THEN YR = 4: GOTO 1733
     IF YR$ = "1985" THEN YR = 5: GOTO 1733
     IF YR$ = "1986" THEN YR = 6: GOTO 1733
     IF YR$ = "1987" THEN YR = 7: GOTO 1733
     IF YR$ = "1988" THEN YR = 8: GOTO 1733
     IF YR$ = "1989" THEN YR = 9: GOTO 1733
     PRINT ""
     PRINT "YEAR MUST BE A NUMBER"
     PRINT "FROM 1981 TO 1989."
     PRINT ""
     PRINT "ENTER 0 TO END"
     PRINT "THE PROGRAM."
     PRINT ""
     PRINT ""
     GOTO 1533
1733 Y = YEARS(YR)
     IF YR = 1984 THEN DAYS(2) = 29
     IF YR = 1988 THEN DAYS(2) = 29
     PRINT ""
     PRINT "POSITION PAPER AND PRESS SPACE BAR"
     PRINT "WHEN THE IBM PERSONAL COMPUTER"
     PRINT "PRINTER IS READY"
     PRINT ""
     PRINT ""
1833 IF INKEY$ <> "" THEN GOTO 1833
1840 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1883
     IF CMD$ = CHR$(27) THEN GOTO 2293
     GOTO 1840
1883 PRINT "PRINTING CALENDAR FOR THE YEAR, "; YR$; ","
     PRINT "PRESS THE ESC KEY TO EXIT."
     FOR P = 0 TO 2
     LPRINT CHR$(15);
     LPRINT "        (C) COPYRIGHT IBM CORPORATION 1981"
     LPRINT CHR$(18);
     FOR SKIP = 1 TO 1: LPRINT "": NEXT SKIP
     LPRINT CHR$(14); CHR$(27); CHR$(69);
     LPRINT "    THE IBM PERSONAL COMPUTER CALENDAR"
     LPRINT CHR$(14); CHR$(27); CHR$(69);
     LPRINT "                  "; 1980 + YR
     FOR SKIP = 1 TO 2: LPRINT "": NEXT SKIP
     FOR M = (1 + P * 4) TO (3 + P * 4) STEP 2
     FOR SKIP = 1 TO 2: LPRINT "": NEXT SKIP
     LPRINT CHR$(14); CHR$(27); CHR$(69);
     LPRINT "       "; MNAME$(M); "          "; MNAME$(M + 1)
     LPRINT CHR$(27); CHR$(70);
     FOR I = 1 TO 19
     MONTH$(1, I) = M$(I)
     MONTH$(2, I) = M$(I)
     NEXT I
     FOR SKIP = 1 TO 1: LPRINT "": NEXT SKIP
     FOR J = 1 TO DAYS(M)
     K = (Y + J - 1) MOD 7: L = INT((Y + J - 1) / 7)
     MID$(MONTH$(1, 2 + L * 3), 2 + K * 5) = MID$(STR$(J), 2, 2)
     NEXT J
     Y = (Y + (DAYS(M) MOD 7)) MOD 7
     FOR J = 1 TO DAYS(M + 1)
     K = (Y + J - 1) MOD 7: L = INT((Y + J - 1) / 7)
     MID$(MONTH$(2, 2 + L * 3), 2 + K * 5) = MID$(STR$(J), 2, 2)
     NEXT J
     Y = (Y + (DAYS(M + 1) MOD 7)) MOD 7
     LPRINT "      SUN  MON  TUE  WED  THU  FRI  SAT      SUN  MON  TUE  WED  THU  FRI  SAT"
     FOR I = 1 TO 19: LPRINT "    "; MONTH$(1, I); "   "; MONTH$(2, I)
     IF INKEY$ = CHR$(27) THEN GOTO 2293
     NEXT I
     FOR SKIP = 1 TO 4: LPRINT "": NEXT SKIP: NEXT M
     FOR SKIP = 1 TO 4: LPRINT "": NEXT SKIP: NEXT P
2293 REM IF SAMPLES$ = "YES" THEN CHAIN "SAMPLES",1000
     SCREEN 0: COLOR 7, 0: CLS


END SUB

DEFSNG A-Z
SUB circxle
    REM The IBM Personal Computer Circle
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    'CLEAR , , 8000: SAMPLES$ = "NO"
    GOTO 1014
     CLEAR , , 8000: SAMPLES$ = "YES"
1014 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "       CIRCLE        " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1104 IF INKEY$ <> "" THEN GOTO 1104
1114 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1114
     IF CMD$ = CHR$(27) THEN GOTO 1324
     IF CMD$ = " " THEN GOTO 1164
     GOTO 1114
1164 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN DEF SEG : GOTO 1304
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1244 IF INKEY$ <> "" THEN GOTO 1244
1254 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1254
     IF CMD$ = CHR$(27) THEN GOTO 1324
     IF CMD$ = " " THEN GOTO 1324
     GOTO 1254
1304 KEY OFF
     'ON ERROR GOTO 1314
     PLAY "p16"
     GOTO 1344
1314 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: GOTO 1324
1324 ON ERROR GOTO 0
1334 SCREEN 0, 1
     COLOR 7, 0, 0: CLS : EXIT SUB
1344 REM
     SCREEN 1, 0: COLOR 8, 0
1354 S1 = .5 + RND * 5: S2 = RND * 2
     CLS
     LOCATE 25, 1: PRINT "Press ESC to exit"
     FOR R = 5 TO 100 STEP 2
     A2 = A + S1: IF A2 > 6.28 THEN A2 = A2 - 6.28
     CIRCLE (160, 100), R, 2, A, A2, 5 / 6
     A = A + S2: IF A > 6.28 THEN A = A - 6.28
     NEXT
     PAINT (160, 100), 3, 2
     FOR I = 0 TO 1000: NEXT
     A$ = INKEY$: IF A$ = CHR$(27) THEN 1334
     GOTO 1354



END SUB

DEFINT P
SUB colorbar
    REM The IBM Personal Computer Colorbar
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    REM Author - Glenn Stuart Dardick
    DEF SEG : POKE 106, 0
    SAMPLE$ = "NO"
    GOTO 1015
     SAMPLE$ = "YES"
1015 KEY OFF: SCREEN 0, 1: COLOR 15, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "       COLORBAR      " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1105 IF INKEY$ <> "" THEN GOTO 1105
1115 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1155
     IF CMD$ = CHR$(27) THEN GOTO 1495
     GOTO 1115
1155 COLOR 7, 0: CLS
     KEY OFF
     SCREEN 0, 1
     WIDTH 40
     COLOR 0, 0
     CLS
     FOR I = 0 TO 7
     FOR J = 2 TO 11
     LOCATE J, I * 5 + 1
     COLOR I, I: PRINT CHR$(219); CHR$(219); CHR$(219);
     NEXT J
     NEXT I
     LOCATE 12, 1
     COLOR 15, 0
     PRINT "blk  blue grn  cyan red  mag  brn white";
     LOCATE 13, 1
     COLOR 15, 0
     PRINT "                                       ";
     FOR I = 0 TO 7
     FOR J = 14 TO 22
     LOCATE J, I * 5 + 1
     COLOR I + 8, I + 8: PRINT CHR$(219); CHR$(219); CHR$(219);
     NEXT J
     NEXT I
     LOCATE 23, 1
     COLOR 15, 0
     PRINT "dark lght lght lght lght lght yel  int";
     LOCATE 24, 1, 0
     COLOR 15, 0
     PRINT "grey blue grn  cyan red  mag      white";
     LOCATE 1, 1
     PRINT "Press ESC key to exit";
1475 IF INKEY$ <> CHR$(27) THEN GOTO 1475
     'DELETE
1495 SCREEN 0
     COLOR 7, 0
     CLS



END SUB

DEFSNG P
'DEFDBL P
SUB donkey
     REM The IBM Personal Computer Donkey
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1016
     SAMPLES$ = "YES"
DIM CAR%(900)
1016 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "       DONKEY        " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1106 IF INKEY$ <> "" THEN GOTO 1106
1116 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1116
     IF CMD$ = CHR$(27) THEN GOTO 1286
     IF CMD$ = " " THEN GOTO 1166
     GOTO 1116
1166 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN DEF SEG : GOTO 1266
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1246 IF INKEY$ <> "" THEN GOTO 1246
1256 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1256
     IF CMD$ = CHR$(27) THEN GOTO 1286
     IF CMD$ = " " THEN GOTO 1286
     GOTO 1256
1266 KEY OFF
     'ON ERROR GOTO 1276
     PLAY "p16"
     GOTO 1306
1276 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: 'RESUME 1286
1286 ON ERROR GOTO 0
     SCREEN 0, 1: COLOR 7, 0, 0: CLS : EXIT SUB
1306 REM
     COLOR 0
     DEFINT A-Y
     SCREEN 1, 0: COLOR 8, 1
     DIM Q%(500)
     DIM D1%(150), D2%(150), C1%(200), C2%(200)
     DIM DNK%(300)
     GOSUB 1946
     GOSUB 1786
     CLS
     DIM B%(300)
     FOR I = 2 TO 300: B%(I) = -16384 + 192: NEXT
     B%(0) = 2: B%(1) = 193
1546 REM
     CX = 110: CLS
     LINE (0, 0)-(305, 199), , B
     LINE (6, 6)-(97, 195), 1, BF
     LINE (183, 6)-(305, 195), 1, BF
     LOCATE 3, 5: PRINT "Donkey"
     LOCATE 3, 29: PRINT "Driver"
     LOCATE 19, 25: PRINT "Press Space  ";
     LOCATE 20, 25: PRINT "Bar to switch";
     LOCATE 21, 25: PRINT "lanes        ";
     LOCATE 23, 25: PRINT "Press ESC    ";
     LOCATE 24, 25: PRINT "to exit      ";
     FOR Y = 4 TO 199 STEP 20: LINE (140, Y)-(140, Y + 10): NEXT
     CY = 105: CX = 105
     LINE (100, 0)-(100, 199): LINE (180, 0)-(180, 199)
1676 LOCATE 5, 6: PRINT SD: LOCATE 5, 31: PRINT SM
     CY = CY - 4: IF CY < 60 THEN 2236
     PUT (CX, CY), CAR%, PRESET
     DX = 105 + 42 * INT(RND * 2)
     FOR Y = (RND * -4) * 8 TO 124 STEP 6
     SOUND 20000, 1
     A$ = INKEY$: IF A$ = CHR$(27) THEN 1286 ELSE POKE 106, 0: IF LEN(A$) > 0 THEN LINE (CX, CY)-(CX + 28, CY + 44), 0, BF: CX = 252 - CX: PUT (CX, CY), CAR%, PRESET: SOUND 200, 1
     IF Y >= 3 THEN PUT (DX, Y), DNK%, PSET
     IF CX = DX AND Y + 25 >= CY THEN 2066
     IF Y AND 3 THEN PUT (140, 6), B%
     NEXT: LINE (DX, 124)-(DX + 32, 149), 0, BF: GOTO 1676
1786 CLS
     DRAW "S8C3"
     DRAW "BM12,1r3m+1,3d2R1ND2u1r2d4l2u1l1"
     DRAW "d7R1nd2u2r3d6l3u2l1d3m-1,1l3"
     DRAW "m-1,-1u3l1d2l3u6r3d2nd2r1u7l1d1l2"
     DRAW "u4r2d1nd2R1U2"
     DRAW "M+1,-3"
     DRAW "BD10D2R3U2M-1,-1L1M-1,1"
     DRAW "BD3D1R1U1L1BR2R1D1L1U1"
     DRAW "BD2BL2D1R1U1L1BR2R1D1L1U1"
     DRAW "BD2BL2D1R1U1L1BR2R1D1L1U1"
     LINE (0, 0)-(40, 60), , B
     PAINT (1, 1)
     DIM CAR%(900)
     GET (1, 1)-(29, 45), CAR%
     RETURN
1946 CLS
     DRAW "S08"
     DRAW "BM14,18"
     DRAW "M+2,-4R8M+1,-1U1M+1,+1M+2,-1"
     DRAW "M-1,1M+1,3M-1,1M-1,-2M-1,2"
     DRAW "D3L1U3M-1,1D2L1U2L3D2L1U2M-1,-1"
     DRAW "D3L1U5M-2,3U1"
     PAINT (21, 14), 3
     PRESET (37, 10): PRESET (40, 10)
     PRESET (37, 11): PRESET (40, 11)
     GET (13, 0)-(45, 25), DNK%
     RETURN
2066 SD = SD + 1: LOCATE 14, 6: PRINT "BOOM!"
     GET (DX, Y)-(DX + 16, Y + 25), D1%
     D1X = DX: D1Y = Y: D2X = DX + 17
     GET (DX + 17, Y)-(DX + 31, Y + 25), D2%
     GET (CX, CY)-(CX + 14, CY + 44), C1%
     GET (CX + 15, CY)-(CX + 28, CY + 44), C2%
     C1X = CX: C1Y = CY: C2X = CX + 15
     FOR P = 6 TO 0 STEP -1: Z = 1 / (2 ^ P): Z1 = 1 - Z
     PUT (C1X, C1Y), C1%: PUT (C2X, C1Y), C2%
     PUT (D1X, D1Y), D1%: PUT (D2X, D1Y), D2%
     C1X = CX * Z1: D1Y = Y * Z1: C2X = C2X + (291 - C2X) * Z
     D1X = DX * Z1: C1Y = C1Y + (155 - C1Y) * Z: D2X = D2X + (294 - D2X) * Z
     PUT (C1X, C1Y), C1%: PUT (C2X, C1Y), C2%
     PUT (D1X, D1Y), D1%: PUT (D2X, D1Y), D2%
     SOUND 37 + RND * 200, 4: NEXT
     FOR Y = 1 TO 2000: NEXT
     CLS : GOTO 1546
2236 SM = SM + 1: LOCATE 7, 25: PRINT "Donkey loses!"
     FOR Y = 1 TO 1000: NEXT
     CLS : GOTO 1546



END SUB

DEFSNG A-Y
SUB mortgage
      REM The IBM Personal Computer Mortgage
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    REM Author - Glenn Stuart Dardick
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1017
     SAMPLES$ = "YES"
1017 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "      MORTGAGE       " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1107 IF INKEY$ <> "" THEN GOTO 1107
1117 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1157
     IF CMD$ = CHR$(27) THEN GOTO 1217
     GOTO 1117
1157 COLOR 15, 0: CLS : DEFDBL P: DIM AMORT(500, 2): SCREEN 0
     DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN COLS = 3: GOTO 1167
     WIDTH 80: COLS = 8
1167 DEF SEG
1177 GOSUB 1247
     IF ASC(I$) = 27 THEN 1217
     IF MID$(I$, 1, 1) = "2" THEN GOTO 2017
     IF MID$(I$, 1, 1) = "1" THEN GOTO 1497
     GOTO 1177
1217 IF SAMPLES$ <> "YES" THEN GOTO 1227
1227 GOSUB 1477
     EXIT SUB
1247 REM - MAIN OPTION MENU
     COLOR 15, 0: CLS : COLOR 0, 7: PRINT " MORTGAGE ANALYSIS "
     COLOR 15, 0: LOCATE 3, 1: PRINT "OPTIONS - "
     PRINT "1 - MORTGAGE PAYMENT COMPARISONS "
     PRINT "2 - MORTGAGE AMORTIZATION"
     PRINT "ESC KEY - EXIT"
     PRINT " "
     PRINT "OPTION NUMBER (1,2, OR ESC) =====>"
     PRINT "NOTE: PRESS THE ENTER KEY WHEN DONE"
     PRINT " "
     COLOR 15, 0
     PRINT CHR$(218) + STRING$(37, CHR$(196)) + CHR$(191)
     PRINT CHR$(179) + "  MORTGAGE PAYMENT COMPARISONS       " + CHR$(179)
     PRINT CHR$(179) + "    - USE THIS OPTION TO COMPARE     " + CHR$(179)
     PRINT CHR$(179) + "      THE MONTHLY PAYMENTS OF        " + CHR$(179)
     PRINT CHR$(179) + "      MORTGAGES AT VARIOUS RATES     " + CHR$(179)
     PRINT CHR$(179) + "      AND PRINCIPAL AMOUNTS.         " + CHR$(179)
     PRINT CHR$(179) + "  MORTGAGE AMORTIZATION              " + CHR$(179)
     PRINT CHR$(179) + "    - USE THIS OPTION TO CALCULATE   " + CHR$(179)
     PRINT CHR$(179) + "      THE PRINCIPAL AND INTEREST     " + CHR$(179)
     PRINT CHR$(179) + "      PAID OVER ANY 12 MONTH PERIOD. " + CHR$(179)
     PRINT CHR$(192) + STRING$(37, CHR$(196)) + CHR$(217)
     COLOR 0, 7: LOCATE 8, 37: PRINT " ": LOCATE 8, 37
1467 I$ = INKEY$: IF I$ = "" THEN 1467 ELSE PRINT I$; : RETURN
1477 COLOR 15, 0: CLS : EXIT SUB
1487 PF = AF * (RF / (1# - (1# / ((1# + RF) ^ NF)))): RETURN
1497 REM - mortgage comparisons
     COLOR 15, 0: CLS : COLOR 0, 7: PRINT " MORTGAGE PAYMENT COMPARISON PROGRAM "
     LOCATE 10, 1: COLOR 15, 0
     PRINT CHR$(218) + STRING$(37, CHR$(196)) + CHR$(191)
     PRINT CHR$(179) + "  MORTGAGE PAYMENT COMPARISONS       " + CHR$(179)
     PRINT CHR$(179) + "    - USE THIS OPTION TO COMPARE     " + CHR$(179)
     PRINT CHR$(179) + "      THE MONTHLY PAYMENTS OF        " + CHR$(179)
     PRINT CHR$(179) + "      MORTGAGES AT VARIOUS RATES     " + CHR$(179)
     PRINT CHR$(179) + "      AND PRINCIPAL AMOUNTS.         " + CHR$(179)
     PRINT CHR$(179) + "                                     " + CHR$(179)
     PRINT CHR$(179) + "  NOTE: TO SELECT A VALUE OR AMOUNT  " + CHR$(179)
1607 PRINT CHR$(179) + "      ENTER THE APPROPRIATE VALUE    " + CHR$(179)
     PRINT CHR$(179) + "      AND PRESS THE ENTER KEY.       " + CHR$(179)
     PRINT CHR$(192) + STRING$(37, CHR$(196)) + CHR$(217)
     LOCATE 3, 1: INPUT "ENTER BASE MORTGAGE AMOUNT ===> ", A
     'A = VAL(A$): IF A <= 0 THEN GOTO 1607
     AINC = 2000
1667 LOCATE 4, 1: PRINT SPC(38);
     LOCATE 5, 1: PRINT "(1 TO 35 PERCENT)";
     LOCATE 4, 1: LINE INPUT "ENTER BASE INTEREST RATE =====> "; IR$
     IR = VAL(IR$): IF IR > 35 OR IR < 1 THEN GOTO 1667
     R = IR / 1200: RINC = .0025 / 12
1717 LOCATE 5, 1: PRINT SPC(38);
     LOCATE 6, 1: PRINT "(1 TO 35 YEARS)";
     LOCATE 5, 1: LINE INPUT "ENTER NUMBER OF YEARS IN MTG => "; Y$
     Y = VAL(Y$)
     N = Y * 12
     NF = N
     IF NF > 420 OR NF < 1 THEN GOTO 1717
     CLS
     COLOR 0, 7: PRINT " MONTHLY MORTGAGE PAYMENT COMPARISONS "
     COLOR 15, 0: LOCATE 3, 10: PRINT Y$ + "-YEAR MORTGAGE LOAN AMOUNTS";
     LOCATE 5, 2: PRINT "RATES"; : COLOR 0, 7
     FOR I = 0 TO COLS
     LOCATE 4, 9 + I * 8: PRINT SPC(7); : LOCATE 4, 9 + I * 8: PRINT A + I * AINC
     NEXT I
     FOR I = 0 TO 14
     LOCATE 6 + I, 1: PRINT SPC(7); : LOCATE 6 + I, 2
     PRINT USING "##.##"; INT(((R + (I * RINC)) * 120000!) + .5) / 100
     NEXT I
     COLOR 15, 0
     FOR I = 0 TO 14
     RF = R + I * RINC: AF = 1: GOSUB 1487
     FOR J = 0 TO COLS
     P = PF * (A + J * AINC): P = INT((P + 5.000001E-03) * 100) / 100
     IF P > 10000 THEN LOCATE 22, 1: PRINT "PAYMENTS TOO LARGE TO DISPLAY": GOTO 1987
     LOCATE 6 + I, 9 + J * 8: PRINT USING "####.##"; P;
     NEXT J
     NEXT I
     PRINT " "
1987 PRINT "PRESS SPACE BAR TO CONTINUE";
1997 IF INKEY$ <> " " THEN GOTO 1997
     GOTO 1177
2017 REM - mortgage amortization
     COLOR 7, 0
     CLS
     COLOR 0, 7
     LOCATE 1, 1
     PRINT " MORTGAGE AMORTIZATION PROGRAM "
     LOCATE 10, 1: COLOR 15, 0
     PRINT CHR$(218) + STRING$(37, CHR$(196)) + CHR$(191)
     PRINT CHR$(179) + "  MORTGAGE AMORTIZATION              " + CHR$(179)
     PRINT CHR$(179) + "    - USE THIS OPTION TO CALCULATE   " + CHR$(179)
     PRINT CHR$(179) + "      THE PRINCIPAL AND INTEREST     " + CHR$(179)
     PRINT CHR$(179) + "      PAID OVER ANY 12 MONTH PERIOD. " + CHR$(179)
     PRINT CHR$(179) + "                                     " + CHR$(179)
     PRINT CHR$(179) + "  NOTE: TO SELECT A VALUE OR AMOUNT  " + CHR$(179)
     PRINT CHR$(179) + "      ENTER THE APPROPRIATE VALUE    " + CHR$(179)
     PRINT CHR$(179) + "      AND PRESS THE ENTER KEY.       " + CHR$(179)
     PRINT CHR$(192) + STRING$(37, CHR$(196)) + CHR$(217)
     LOCATE 3, 1
     LINE INPUT "ENTER MORTGAGE AMOUNT ===> "; A$
     AF = VAL(A$)
2217 LOCATE 4, 1
     PRINT "                                      ";
     LOCATE 5, 1
     PRINT "(1 TO 35 PERCENT)";
     LOCATE 4, 1
     LINE INPUT "ENTER INTEREST RATE =====> "; IR$
     IR = VAL(IR$)
     IF IR > 35 THEN GOTO 2217
     IF IR < 1 THEN GOTO 2217
     RF = IR / 1200
2317 LOCATE 5, 1
     PRINT "                                      ";
     LOCATE 6, 1
     PRINT "(1 TO 35 YEARS)";
     LOCATE 5, 1
     LINE INPUT "ENTER NUMBER OF YEARS ===> "; Y$
     Y = VAL(Y$)
     NF = Y * 12
     IF NF > 420 THEN GOTO 2317
     IF NF < 1 THEN GOTO 2317
     GOSUB 1487
     PF = INT((PF + 5.000001E-03) * 100) / 100
     PRINT "MONTHLY PAYMENTS ARE ====>"; PF
     COLOR 23, 0
     PRINT "CALCULATING AMORTIZATION"
     COLOR 15, 0
     IF NF > 36 THEN GOTO 2477
     FOR I = 1 TO 1000: NEXT I
2477 AMORT(0, 1) = AF
     FOR I = 1 TO NF
     AMORT(I, 2) = INT((AMORT(I - 1, 1) * RF + 5.000001E-03) * 100) / 100
     AMORT(I, 1) = AMORT(I - 1, 1) - PF + AMORT(I, 2)
     NEXT I
2527 FOR I = 7 TO 25: LOCATE I, 1: PRINT SPC(39); : NEXT I
     LOCATE 9, 1
     PRINT " - 1 TO" + STR$(NF)
     PRINT " - 0 TO END AMORTIZATION";
2567 LOCATE 7, 1
     PRINT "ENTER BEGINNING PAYMENT NUMBER"
     LINE INPUT "OF 12 MONTH PERIOD ======> "; PERIOD$
     PD = VAL(PERIOD$)
     IF PD <> 0 THEN GOTO 2627
     IF PERIOD$ <> "0" THEN GOTO 2567
2627 IF PD = 0 THEN GOTO 1177
     IF PD > NF THEN GOTO 2567
     IF PD < 0 THEN GOTO 2567
     LOCATE 7, 1
     PRINT SPC(39);
     PRINT SPC(39);
     LOCATE 9, 1
     PRINT "PYMNT PRINCIPAL   INTEREST    BALANCE"
     TINT = 0
     FOR I = PD TO PD + 11
     IF I > NF THEN GOTO 2757
     TINT = TINT + AMORT(I, 2)
     PRINT USING "### "; I;
     PRINT USING "  ######.##"; PF - AMORT(I, 2); AMORT(I, 2); AMORT(I, 1)
2757 NEXT I
     PRINT " "
     PRINT "INTEREST FOR 12 PERIODS =";
     PRINT USING "######.## "; TINT
     LOCATE 25, 1
     PRINT "PRESS SPACE BAR TO CONTINUE";
     LOCATE , , 0
2827 IF INKEY$ <> "" THEN GOTO 2827
2837 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 2527
     IF CMD$ = CHR$(27) THEN GOTO 1217
     GOTO 2837


END SUB

DEFSNG P
SUB music
    REM The IBM Personal Computer Music
    REM Version 1.10 (C)Copyright IBM Corp 1981, 1982
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1018
     SAMPLES$ = "YES"
1018 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19, 0: PRINT "IBM"
     LOCATE 7, 12: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9: PRINT CHR$(179) + "        MUSIC        " + CHR$(179)
     LOCATE 12, 9: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9: PRINT CHR$(179) + "    Version 1.10     " + CHR$(179)
     LOCATE 14, 9: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 4: PRINT "(C) Copyright IBM Corp 1981, 1982"
     COLOR 14, 0: LOCATE 23, 7: PRINT "Press space bar to continue"
1108 IF INKEY$ <> "" THEN 1108
1118 CMD$ = INKEY$: IF CMD$ = "" THEN 1118
     IF CMD$ = CHR$(27) THEN GOTO 1848
     IF CMD$ <> " " THEN 1118
     'ON ERROR GOTO 1148
     PLAY "mf"
     GOTO 1158
1148 GOTO 1158
1158 ON ERROR GOTO 0
     SCREEN 0, 1: WIDTH 40: COLOR 15, 1, 1: CLS : DEFINT A-Z
     LOCATE 15, 7: PRINT " ------- selections -------"
     LOCATE 16, 7: PRINT " A-MARCH  E-HUMOR  I-SAKURA"
     LOCATE 17, 7: PRINT " B-STARS  F-BUG    J-BLUE  "
     LOCATE 18, 7: PRINT " C-FORTY  G-POP    K-SCALES"
     LOCATE 19, 7: PRINT " D-HAT    H-DANDY  ESC KEY-EXIT"
     COLOR 15, 0
     FOR I = 0 TO 15: FOR J = 0 TO 8
     LOCATE 5 + J, 5 + I * 2: PRINT CHR$(219); CHR$(221);
     NEXT: NEXT
     FOR I = 0 TO 12: FOR J = 0 TO 4
     IF I = 2 OR I = 6 OR I = 9 OR I = 13 THEN 1278
     LOCATE 5 + J, 8 + I * 2: PRINT CHR$(32); CHR$(222);
1278 NEXT: NEXT
     FOR J = 0 TO 9
     LOCATE 4 + J, 4: COLOR 4, 0: PRINT CHR$(221); : LOCATE 4 + J, 36: COLOR 15, 0
     PRINT CHR$(221); : COLOR 4, 1: PRINT CHR$(221);
     NEXT
     COLOR 4, 1: LOCATE 4, 4
     FOR I = 0 TO 32: PRINT CHR$(219); : NEXT
     PRINT CHR$(221); : LOCATE 13, 4
     FOR I = 0 TO 32: PRINT CHR$(219); : NEXT
     PRINT CHR$(221); : COLOR 0, 7: DIM M(88), O(70)
     FOR I = 7 TO 88: M(I) = 36.8 * (2 ^ (1 / 12)) ^ (I - 6): NEXT
     FOR I = 0 TO 6: M(I) = 32767: NEXT
     O(0) = 0
     O(39) = 5: O(40) = 7: O(41) = 8: O(42) = 9
     O(43) = 10: O(44) = 11: O(45) = 13: O(46) = 14
     O(47) = 15: O(48) = 16: O(49) = 17: O(50) = 18
     O(51) = 19: O(52) = 21: O(53) = 22: O(54) = 23
     O(55) = 24: O(56) = 25: O(57) = 27: O(58) = 28
     O(59) = 29: O(60) = 30: O(61) = 31: O(62) = 32
     O(63) = 33: O(64) = 35: O(65) = 36: O(66) = 37
     O(67) = 38: O(68) = 39: O(69) = 40: O(70) = 42
     GOTO 1638
1498 READ J, K
     CMD$ = INKEY$: IF CMD$ = "" THEN 1548
     IF CMD$ = CHR$(27) THEN RETURN
     POKE 106, 0
     REM
1548 IF J = -1 THEN RETURN
     Q = O(J)
     IF J > 64 OR J < 39 THEN 1598
     IF SCREEN(5, Q) <> 32 THEN COLOR 0, 7: LOCATE 11, Q: PRINT CHR$(14); : COLOR 15, 0: GOTO 1598
     COLOR 15, 0: LOCATE 7, Q: PRINT CHR$(14); : COLOR 0, 7
1598 SOUND M(J), K: IF J = 0 AND K = 1 THEN 1608: 'SKIP NEXT FOR STACCATTO
     SOUND 32767, 1
1608 IF J > 64 OR J < 39 THEN 1498
     IF SCREEN(5, Q) = 32 THEN COLOR 15, 0: LOCATE 7, Q: PRINT CHR$(32); : GOTO 1498
     COLOR 15, 0: LOCATE 11, Q: PRINT CHR$(219); : GOTO 1498
1638 LOCATE 21, 5: PRINT "                                ";
1648 LOCATE 21, 5: PRINT "ENTER SELECTION ==>";
1658 IF INKEY$ <> "" THEN 1658
1668 CMD$ = INKEY$: IF CMD$ = "" THEN 1668
     IF CMD$ = CHR$(27) THEN 1848
     IF CMD$ = "A" OR CMD$ = "a" THEN S$ = "MARCH ": RESTORE 101: GOTO 1778
     IF CMD$ = "B" OR CMD$ = "b" THEN S$ = "STARS ": RESTORE 102: GOTO 1778
     IF CMD$ = "C" OR CMD$ = "c" THEN S$ = "FORTY ": RESTORE 103: GOTO 1778
     IF CMD$ = "D" OR CMD$ = "d" THEN S$ = "HAT   ": RESTORE 104: GOTO 1778
     IF CMD$ = "E" OR CMD$ = "e" THEN S$ = "HUMOR ": RESTORE 105: GOTO 1778
     IF CMD$ = "F" OR CMD$ = "f" THEN S$ = "BUG   ": RESTORE 106: GOTO 1778
     IF CMD$ = "G" OR CMD$ = "g" THEN S$ = "POP   ": RESTORE 107: GOTO 1778
     IF CMD$ = "H" OR CMD$ = "h" THEN S$ = "DANDY ": RESTORE 108: GOTO 1778
     IF CMD$ = "I" OR CMD$ = "i" THEN S$ = "SAKURA": RESTORE 109: GOTO 1778
     IF CMD$ = "J" OR CMD$ = "j" THEN S$ = "BLUE  ": RESTORE 110: GOTO 1778
     IF CMD$ = "K" OR CMD$ = "k" THEN S$ = "SCALES": RESTORE 111: GOTO 1778
     GOTO 1648
1778 PRINT " "; CMD$; "-"; S$
     READ D
     READ S$: LOCATE 23, 1 + (40.5 - LEN(S$)) / 2
     COLOR 15, 4: PRINT S$; : COLOR 0, 7
     GOSUB 1498
     S$ = STRING$(39, " "): LOCATE 23, 1: COLOR 4, 1: PRINT S$: COLOR 0, 7
     GOTO 1638
1848 EXIT SUB
     SCREEN 0, 1: COLOR 7, 0, 0: CLS : EXIT SUB
     REM The IBM Personal Computer Music Scroll
     REM Version 1.00 (C)Copyright IBM Corp 1981
     REM Licensed Material - Program Property of IBM
3200
     
     
     
     
     
     
     
3300
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
3500
     
     
     
     
     
     
     
3600
     
     
     
     
     
     
     
3700 
     
     
     
     
     
     
     
     
     
     
     
3900
     
     
     
     
     
     
     
     
     
4000
     
     
     
     
     
     
     
     
4100
     
     
     
     
     
     
     
     
     
     
4300
     
     
     
     
     
     
     
4400
     
     
     
     
     
     
     
4500
     
     
     
     
     


END SUB

DEFSNG A-Z
SUB piechart
    REM The IBM Personal Computer Piechart
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1019
     SAMPLES$ = "YES"
1019 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "      PIECHART       " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1109 IF INKEY$ <> "" THEN GOTO 1109
1119 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1119
     IF CMD$ = CHR$(27) THEN GOTO 1289
     IF CMD$ = " " THEN GOTO 1169
     GOTO 1119
1169 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN DEF SEG : GOTO 1269
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1249 IF INKEY$ <> "" THEN GOTO 1249
1259 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1259
     IF CMD$ = CHR$(27) THEN GOTO 1289
     IF CMD$ = " " THEN GOTO 1289
     GOTO 1259
1269 KEY OFF
     'ON ERROR GOTO 1279
     PLAY "p16"
     GOTO 1309
1279 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: 'RESUME 1289
1289 ON ERROR GOTO 0
     SCREEN 0, 1: COLOR 7, 0, 0: CLS : EXIT SUB
1309 DIM R(100), A$(100)
1409 CLS
     SCREEN 1, 0: COLOR 8, 0
     LR = 50: SR = 44
     INPUT "title of chart"; T$
     INPUT "how many items in chart"; N
     S = 0
     FOR I = 1 TO N
     INPUT "numeric value ,name"; R(I), A$(I)
     S = S + R(I)
     NEXT
     FOR I = 1 TO N: R(I) = R(I) / S: NEXT
     A2 = 0
     CLS
     LOCATE 2, 20 - LEN(T$) / 2: PRINT T$
     LINE (8 * (19.5 - LEN(T$) / 2) - 8, 7)-(8 * (19.5 + LEN(T$) / 2), 16), 3, B
     FOR C = 1 TO N
     A1 = A2: A2 = A2 + R(C) * 2 * 3.1415926#
     AA = (A1 + A2) / 2
     CX = 160 + COS(AA) * (LR - SR)
     CY = 100 - SIN(AA) * (LR - SR)
     CIRCLE (CX, CY), SR, 1, -A1 - .001, -A2, 5 / 6
     PAINT (CX + COS(AA) * .8 * SR, CY - SIN(AA) * .8 * SR), C MOD 4, 1
     LX = CX + COS(AA) * (16 + SR) - 4 * LEN(A$(C)): LY = CY - SIN(AA) * (SR + 16)
     LOCATE 1 + (LY \ 8), 1 + (LX \ 8): PRINT A$(C);
     LINE ((LX \ 8) * 8, 8 * ((LY \ 8) + 1))-((LX \ 8) * 8 + 8 * LEN(A$(C)), 8 * ((LY \ 8) + 1)), 1
     NEXT C
1689 LOCATE 23, 1
     PRINT "Another Chart? (Y or N)";
1719 A$ = INKEY$: IF A$ = "" THEN 1719
     IF A$ = "N" OR A$ = "n" THEN 1289
     IF A$ = "Y" OR A$ = "y" THEN 1409
     GOTO 1689




END SUB

DEFINT A-Z
SUB space
    REM The IBM Personal Computer Space
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    REM Author - R. Heiney & M. Hallerman
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1010
     SAMPLES$ = "YES"
1010 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "       SPACE         " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1100 IF INKEY$ <> "" THEN GOTO 1100
1110 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1110
     IF CMD$ = CHR$(27) THEN GOTO 1298
     IF CMD$ = " " THEN GOTO 1160
     GOTO 1110
1160 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN DEF SEG : GOTO 1291
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1240 IF INKEY$ <> "" THEN GOTO 1240
1250 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1250
     IF CMD$ = CHR$(27) THEN GOTO 1298
     IF CMD$ = " " THEN GOTO 1298
     GOTO 1250
1291 KEY OFF
     'ON ERROR GOTO 1295
     PLAY "p16"
     GOTO 1300
1295 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: 'RESUME 1298
1298 ON ERROR GOTO 0
     SCREEN 0, 1: COLOR 7, 0, 0: CLS : EXIT SUB
1300 REM
     KEY OFF
     DEFINT I-N: DIM I(800)
     SCREEN 1, 0: COLOR 8, 0
     CLS : CIRCLE (160, 100), 30, 1, , , .45: PAINT (160, 100), 1, 1: DRAW "bm160,100e30bm160,100h30": LINE (130, 100)-(190, 100), 2: GET (130, 70)-(190, 130), I
     LINE (0, 0)-(100, 199), 0, BF: LINE (101, 0)-(200, 199), 2, BF: LINE (201, 0)-(300, 199), 3, BF
     LOCATE 23, 2: PRINT "Press ESC ";
     LOCATE 24, 2: PRINT "to exit";
1470 FOR J = 2 TO 6: FOR I = 1 TO 2: PLAY "mbl64t255o" + STR$(J) + "cc#dd#eff#gg#aa#b": NEXT
     K1 = RND * 259: K2 = RND * 138: PUT (K1, K2), I, XOR: FOR I1 = 1 TO 150: NEXT: PUT (K1, K2), I, XOR: NEXT
1490 A$ = INKEY$: IF A$ = CHR$(27) THEN 1298
     POKE 106, 0: IF A$ <> "" THEN 1490 ELSE 1470


END SUB

