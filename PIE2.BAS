    REM The IBM Personal Computer Piechart
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1010
     SAMPLES$ = "YES"
1010 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "     PIECHART 2      " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 9, 0: LOCATE 18, 6, 0: PRINT "(C) Copyright Wild Guess 2013"
     COLOR 14, 0: LOCATE 23, 6, 0: PRINT "Press N for new or L to load."
1100 IF INKEY$ <> "" THEN GOTO 1100
1110 CMD$ = UCASE$(INKEY$)
     IF CMD$ = "" THEN GOTO 1110
     IF CMD$ = CHR$(27) THEN END
     IF CMD$ = "N" THEN GOTO 1300
     IF CMD$ = "L" THEN GOTO jump
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
     IF CMD$ = CHR$(27) THEN END
     IF CMD$ = "N" THEN GOTO 1298
     GOTO 1250
1291 KEY OFF
     ON ERROR GOTO 1295
     PLAY "p16"
     GOTO 1300
1295 COLOR 31, 0, 0
     PRINT "THIS PROGRAM REQUIRES ADVANCED BASIC -- USE COMMAND 'BASICA'": COLOR 15, 0, 0: FOR I = 1 TO 9000: NEXT: RESUME 1298
1298 ON ERROR GOTO 0
     'SCREEN 13: COLOR 7: CLS : END
jump: dontinput = 1
1300 DIM R(100), A$(100)

1400 CLS
     SCREEN 0: COLOR 11, 0
     LR = 50: SR = 44
     IF dontinput = 1 THEN GOTO LOADFILE
     INPUT "Title of chart"; T$
     INPUT "How many items in chart"; N
     S = 0
     FOR I = 1 TO N
     INPUT "Numeric value ,name"; R(I), A$(I)
     S = S + R(I)
     NEXT
     FOR I = 1 TO N: R(I) = R(I) / S: NEXT
skip: A2 = 0
dontinput = 0
     SCREEN 13
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
     DO
       LOCATE 23, 1
       PRINT "Save? (Y or N)";
       abc$ = UCASE$(INKEY$)
       IF abc$ = "Y" THEN GOSUB fart
       IF abc$ = "N" THEN gomore = 1
     LOOP WHILE gomore = 0
1680 LOCATE 23, 1
     PRINT "Another Chart? (Y or N)";
1710 AB$ = UCASE$(INKEY$): IF AB$ = "" THEN 1710
     IF AB$ = "N" OR AB$ = "n" THEN END
     IF AB$ = "Y" OR AB$ = "y" THEN GOTO 1400
     GOTO 1680
fart:
  gomore = 1

  PRINT
  INPUT "File name:", file$
  'KILL file$
  OPEN file$ FOR RANDOM AS #1
  CLOSE #1
  KILL file$
  OPEN file$ FOR APPEND AS #1
  PRINT #1, "PIECHART2"
  PRINT #1, N; ", "; T$
  FOR J = 1 TO N
    PRINT #1, R(J); ", "; A$(J)
  NEXT J
  CLOSE #1

RETURN
LOADFILE:
  INPUT "File to load:", filename$
  OPEN filename$ FOR INPUT AS #1
  INPUT #1, piecheck$
  IF piecheck$ <> "PIECHART2" THEN GOTO LOADFILE
  INPUT #1, N, T$
  FOR H = 1 TO N
    INPUT #1, R(H), A$(H)
  NEXT H
GOTO skip

