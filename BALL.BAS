   REM The IBM Personal Computer Ball
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEFINT A-Z: DIM B(280): DIM A(150)
    DIM L AS SINGLE
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1010
     SAMPLES$ = "YES"
1010 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "        BALL         " + CHR$(179)
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
     ON ERROR GOTO 1295
     PLAY "p16"
     GOTO 1300
1295 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: RESUME 1298
1298 ON ERROR GOTO 0
     SCREEN 0, 1: CLS : END
1300 REM
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
1560 FOR D = 0 TO 1
     S = 20 + D * 260: E = 280 - D * 260
     FOR X = S TO E STEP 4 - 8 * D
     Y = B(X): N = (170 - Y2) \ 5: SOUND N * 30, L: IF F THEN PUT (X2, Y2), A
     A$ = INKEY$: IF A$ = CHR$(27) THEN END
     PUT (X, Y), A: X2 = X: Y2 = Y: F = -1: NEXT
     L = L / 1.5: IF L < .125 THEN L = 2
     NEXT
     POKE 106, 0: GOTO 1560

