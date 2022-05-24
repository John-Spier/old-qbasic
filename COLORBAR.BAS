    REM The IBM Personal Computer Colorbar
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    REM Author - Glenn Stuart Dardick
    DEF SEG : POKE 106, 0
    SAMPLE$ = "NO"
    GOTO 1010
     SAMPLE$ = "YES"
1010 KEY OFF: SCREEN 0, 1: COLOR 15, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "       COLORBAR      " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1100 IF INKEY$ <> "" THEN GOTO 1100
1110 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1150
     IF CMD$ = CHR$(27) THEN GOTO 1490
     GOTO 1110
1150 COLOR 7, 0: CLS
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
1470 IF INKEY$ <> CHR$(27) THEN GOTO 1470
     'DELETE
1490 SCREEN 0
     COLOR 7, 0
     CLS

