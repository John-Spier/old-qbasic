    REM The IBM Personal Computer Calendar
    REM Version 1.00 (C)Copyright IBM Corp 1981
    REM Licensed Material - Program Property of IBM
    DEF SEG : POKE 106, 0
    SAMPLES$ = "NO"
    GOTO 1010
     SAMPLES$ = "YES"
1010 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19: PRINT "IBM"
     LOCATE 7, 12, 0: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9, 0: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9, 0: PRINT CHR$(179) + "      CALENDAR       " + CHR$(179)
     LOCATE 12, 9, 0: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9, 0: PRINT CHR$(179) + "    Version 1.00     " + CHR$(179)
     LOCATE 14, 9, 0: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 7, 0: PRINT "(C) Copyright IBM Corp 1981"
     COLOR 14, 0: LOCATE 23, 7, 0: PRINT "Press space bar to continue"
1100 IF INKEY$ <> "" THEN GOTO 1100
1110 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1150
     IF CMD$ = CHR$(27) THEN GOTO 2290
     GOTO 1110
1150 COLOR 15, 0: CLS
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
1530 LINE INPUT "ENTER YEAR (1981-1989) ==> "; YR$
     IF YR$ = "0" THEN GOTO 2290
     IF YR$ = "1981" THEN YR = 1: GOTO 1730
     IF YR$ = "1982" THEN YR = 2: GOTO 1730
     IF YR$ = "1983" THEN YR = 3: GOTO 1730
     IF YR$ = "1984" THEN YR = 4: GOTO 1730
     IF YR$ = "1985" THEN YR = 5: GOTO 1730
     IF YR$ = "1986" THEN YR = 6: GOTO 1730
     IF YR$ = "1987" THEN YR = 7: GOTO 1730
     IF YR$ = "1988" THEN YR = 8: GOTO 1730
     IF YR$ = "1989" THEN YR = 9: GOTO 1730
     PRINT ""
     PRINT "YEAR MUST BE A NUMBER"
     PRINT "FROM 1981 TO 1989."
     PRINT ""
     PRINT "ENTER 0 TO END"
     PRINT "THE PROGRAM."
     PRINT ""
     PRINT ""
     GOTO 1530
1730 Y = YEARS(YR)
     IF YR = 1984 THEN DAYS(2) = 29
     IF YR = 1988 THEN DAYS(2) = 29
     PRINT ""
     PRINT "POSITION PAPER AND PRESS SPACE BAR"
     PRINT "WHEN THE IBM PERSONAL COMPUTER"
     PRINT "PRINTER IS READY"
     PRINT ""
     PRINT ""
1830 IF INKEY$ <> "" THEN GOTO 1830
1840 CMD$ = INKEY$
     IF CMD$ = " " THEN GOTO 1880
     IF CMD$ = CHR$(27) THEN GOTO 2290
     GOTO 1840
1880 PRINT "PRINTING CALENDAR FOR THE YEAR, "; YR$; ","
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
     IF INKEY$ = CHR$(27) THEN GOTO 2290
     NEXT I
     FOR SKIP = 1 TO 4: LPRINT "": NEXT SKIP: NEXT M
     FOR SKIP = 1 TO 4: LPRINT "": NEXT SKIP: NEXT P
2290 REM IF SAMPLES$ = "YES" THEN CHAIN "SAMPLES",1000
     SCREEN 0: COLOR 7, 0: CLS

