    REM The IBM Personal Computer Art
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    REM Author - Glenn Stuart Dardick
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1010
     SAMPLES$ = "YES"
1010 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "         ART         " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1100 IF INKEY$ <> "" THEN GOTO 1100
1110 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1110
     IF CMD$ = CHR$(27) THEN GOTO 1530
     IF CMD$ = " " THEN GOTO 1160
     GOTO 1110
1160 DEF SEG = 0
     IF (PEEK(&H410) AND &H30) <> &H30 THEN GOTO 1300
     WIDTH 80: CLS : LOCATE 3, 1
     PRINT "HOLD IT!"
     PRINT "YOU'RE NOT USING THE COLOR/GRAPHICS MONITOR ADAPTER!"
     PRINT "THIS PROGRAM USES GRAPHICS AND REQUIRES THAT ADAPTER."
     PRINT "PRESS THE SPACE BAR TO CONTINUE."
     DEF SEG
1240 IF INKEY$ <> "" THEN GOTO 1240
1250 CMD$ = INKEY$
     IF CMD$ = "" THEN GOTO 1250
     IF CMD$ = CHR$(27) THEN GOTO 1530
     IF CMD$ = " " THEN GOTO 1530
     GOTO 1250
1300 DEF SEG
     ON ERROR GOTO 1304
     PLAY "mf"
     GOTO 1305
1304 RESUME 1305
1305 ON ERROR GOTO 0
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
1410 IX1 = RND * 250 + 35
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
     IF K$ = "" THEN GOTO 1410
     IF K$ <> CHR$(27) THEN POKE 106, 0: GOTO 1410
1530 SCREEN 0, 1
     COLOR 7, 0, 0: CLS : END

