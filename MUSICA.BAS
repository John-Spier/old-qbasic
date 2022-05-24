   REM The IBM Personal Computer Music
   REM Version 2.10 (C)Copyright IBM Corp 1982, 1983
   REM Licensed Material - Program Property of IBM
   'PROGRAMMING BY CF:GRAPHIC DESIGN BY DER
   SAMPLES$ = "NO": GOTO 1020
     SAMPLES$ = "YES"
     DIM g%(1684)
1020 KEY OFF: SCREEN 0, 1: COLOR 15, 0, 0: WIDTH 40: CLS : LOCATE 5, 19, 0: PRINT "IBM"
     LOCATE 7, 12: PRINT "Personal Computer"
     COLOR 10, 0: LOCATE 10, 9: PRINT CHR$(213) + STRING$(21, 205) + CHR$(184)
     LOCATE 11, 9: PRINT CHR$(179) + "        MUSIC        " + CHR$(179)
     LOCATE 12, 9: PRINT CHR$(179) + STRING$(21, 32) + CHR$(179)
     LOCATE 13, 9: PRINT CHR$(179) + "    Version 2.1      " + CHR$(179)
     LOCATE 14, 9: PRINT CHR$(212) + STRING$(21, 205) + CHR$(190)
     COLOR 15, 0: LOCATE 17, 4: PRINT "(C) Copyright IBM Corp 1982, 1983"
     COLOR 14, 0: LOCATE 23, 7: PRINT "Press space bar to continue"
1200 IF INKEY$ <> "" THEN 1200
1220 CMD$ = INKEY$: IF CMD$ = "" THEN 1220
     IF CMD$ = CHR$(27) THEN GOTO 1620
     IF CMD$ <> " " THEN 1220
     ON ERROR GOTO 1340
     PLAY "mf"
     GOTO 1360
1340 RESUME 1360
1360 ON ERROR GOTO 0
     'MAIN PROGRAM
        SCREEN 1: COLOR 3, 0: CLS : DEFINT A-Z: PALETTE 1, 9: PALETTE 2, 4: PALETTE 3, 14
        GOSUB 1760: GOSUB 1925  'MUSIC MENU & DRAW CHICKEN
1500    GOSUB 2680 'REQUEST SELECTION
        ON P GOSUB 4360, 4540, 3960, 4680, 3660, 3200, 3760, 4220, 4920, 3400, 4820
     VIEW (0, 0)-(318, 110): CLS : PUT (125, 10), g%: VIEW: LINE (7, 174)-(313, 184), 0, BF: LOCATE 21, 27: PRINT "             ": GOTO 1500
     '
1620    'IF SAMPLES$="YES" THEN CHAIN "SAMPLES",1000
        SCREEN 0, 1: COLOR 7, 0, 0: CLS : END
        REM The IBM Personal Computer Music Scroll
        REM Version 1.00 (C)Copyright IBM Corp 1981
        REM Licensed Material - Program Property of IBM
     'end program
        '
1760 'MUSIC MENU
     LOCATE 15, 7: PRINT " ------- selections -------"
     LOCATE 16, 7: PRINT " A-MARCH  E-HUMOR  I-SAKURA"
     LOCATE 17, 7: PRINT " B-STARS  F-BUG    J-BLUE  "
     LOCATE 18, 7: PRINT " C-FORTY  G-POP    K-SCALES"
     LOCATE 19, 7: PRINT " D-HAT    H-DANDY  ESC KEY-EXIT"
     RETURN
     '
     'DRAW CHICKEN
1925 VIEW (0, 0)-(318, 110): CLS 'DIM G%(1684)
     CIRCLE (171, 31), 4, 2: CIRCLE (165, 33), 4, 2: PSET (171, 31), 3: PSET (165, 33), 3: RESTORE 2040
     FOR Q = 1 TO 12: READ J, C, X1, Y1: PSET (X1, Y1), C: FOR I = 1 TO J: READ X2, Y2: LINE -(X2, Y2), C: NEXT I: NEXT Q
     FOR T = 1 TO 9: READ X, Y, Z: PAINT (X, Y), Z, 2: NEXT T'paint chicken
     READ X1, Y1: PSET (X1, Y1): FOR I = 1 TO 7: READ X2, Y2: LINE -(X2, Y2), 0: NEXT I
     GET (125, 10)-(199, 103), g%: RETURN
2040 'mouth and beak
     DATA 9,2,185,43,192,44,196,47,198,40,198,35,197,33,195,31,191,29,179,30,174,31
     'crest
2120 DATA 31,2,168,30,160,21,159,18,158,16,158,13,156,10,155,11,154,15,154,23,150,20,146,14,145,15,144,17,144,20,146,23,141,22,139,22,138,23,138,25,139,27,141,30,137,29,134,30,132,32,132,34,135,37,138,39,141,38,150,35,155,33,159,31,162,30
     'top of head
     DATA 5,2,179,30,176,26,174,25,172,24,166,24,164,25
     'back of head
     DATA 16,2,149,35,148,40,148,47,149,51,150,54,151,55,153,56,154,56,157,57,165,57,168,56,170,55,175,53,177,51,179,50,181,48,185,43
     DATA 6,2,175,52,172,50,170,49,166,45,165,43,165,38,166,36
     'left wing
     DATA 22,2,157,57,156,60,153,63,152,64,148,65,144,66,140,67,137,68,134,69,130,72,131,74,133,75,137,74,139,72,142,74,144,74,147,71,149,73,151,72,153,70,155,71,158,70,160,68
     'stomach
     DATA 15,2,149,73,148,76,148,77,149,79,150,80,152,81,155,81,160,80,161,80,165,78,169,74
     DATA 171,72,172,70,172,65,171,62,169,56
     'right wing
     DATA 19,2,169,57,175,59,179,58,185,55,192,51,192,53,190,57,183,59,185,60,186,62,183,65,183,66,182,67,180,67,177,65,179,67,180,69,177,71,175,71,171,70
     'tail
     DATA 18,2,148,76,126,85,125,87,126,88,130,88,134,86,130,90,131,92,133,93,140,90,138,93,140,95,141,95,145,92,146,93,149,93,150,92,151,89,151,81
     'legs
     DATA 8,2,152,81,154,86,154,99,154,86,156,81,158,86,160,80,158,86,158,100
     'left foot
     DATA 5,2,154,99,146,101,154,99,150,101,154,99,150,102
     'right foot
     DATA 5,2,158,100,164,99,158,100,162,101,158,100,162,102
     'paint coordinates
     DATA 150,30,3,168,28,3,185,37,2,155,45,3,165,70,3,180,63,3,140,85,3,154,82,3,158,82,3,169,41,174,38,172,39,172,41,173,43,175,45,178,45,185,43
     DATA 169,41,174,38,172,39,172,41,173,43,175,45,178,45,185,43
     '
2680 'REQUEST SELECTION
2740 VIEW: LOCATE 21, 8: PRINT "ENTER SELECTION ==>";
2760 IF INKEY$ <> "" THEN 2760
2780 CMD$ = INKEY$: IF CMD$ = "" THEN 2780
     IF CMD$ = CHR$(27) THEN 1620
     IF CMD$ = "A" OR CMD$ = "a" THEN S$ = "MARCH ": P = 1: RESTORE 4360: GOTO 3060
     IF CMD$ = "B" OR CMD$ = "b" THEN S$ = "STARS ": P = 2: RESTORE 4540: GOTO 3060
     IF CMD$ = "C" OR CMD$ = "c" THEN S$ = "FORTY ": P = 3: RESTORE 3960: GOTO 3060
     IF CMD$ = "D" OR CMD$ = "d" THEN S$ = "HAT   ": P = 4: RESTORE 4680: GOTO 3060
     IF CMD$ = "E" OR CMD$ = "e" THEN S$ = "HUMOR ": P = 5: RESTORE 3660: GOTO 3060
     IF CMD$ = "F" OR CMD$ = "f" THEN S$ = "BUG   ": P = 6: RESTORE 3200: GOTO 3060
     IF CMD$ = "G" OR CMD$ = "g" THEN S$ = "POP   ": P = 7: RESTORE 3760: GOTO 3060
     IF CMD$ = "H" OR CMD$ = "h" THEN S$ = "DANDY ": P = 8: RESTORE 4220: GOTO 3060
     IF CMD$ = "I" OR CMD$ = "i" THEN S$ = "SAKURA": P = 9: RESTORE 4920: GOTO 3060
     IF CMD$ = "J" OR CMD$ = "j" THEN S$ = "BLUE  ": P = 10: RESTORE 3400: GOTO 3060
     IF CMD$ = "K" OR CMD$ = "k" THEN S$ = "SCALES": P = 11: RESTORE 4820: GOTO 3060
     GOTO 2740
     DATA 14,1,163,59,166,57,169,52,169,55,170,59,171,61,167,59,163,59,159,60,154,61,156,59,157,57,156,52,159,57,163,59
3060 PRINT " "; CMD$; "-"; S$
     LINE (7, 174)-(313, 184), 1, BF
     READ S$: LOCATE 23, 1 + (40.5 - LEN(S$)) / 2
     PRINT S$: RETURN
     '
3200 DATA "La Cucaracha - Mexican Folk Song"
     RESTORE 3212: GOSUB 5035: PAINT (195, 93), 3, 2: CIRCLE (185, 87), 1, 0: LINE (183, 90)-(185, 88), 0: PAINT (185, 87), 0, 0
3212 DATA 9,21,2,207,93,207,92,205,91,190,91,189,87,188,85,186,84,188,81,186,84,184,84,184,80,184,84,181,87,182,89,183,90,185,90,185,92,184,93,185,95,205,95,207,94,207,93
     DATA 1,2,186,95,184,99,1,2,187,95,187,99,1,2,192,95,190,99,1,2,192,95,194,99,1,2,198,95,197,99,1,2,201,95,202,99,1,2,206,95,204,99,1,2,206,95,208,99
     a$ = "mf t190 ms l16o2dp16 l16dp16 l16dp16 l12gp6. bp6."
     b$ = "l16o2dp16 l16dp16 l16dp16 l12gp6. bp6."
     C$ = "o1l16dp16 dp16 gp8. l16o2 gp16 gp16 f#p16 f#p16 ep16 ep16 l2d."
     d$ = "l16dp16 l16dp16 l16dp16 l12f#p6. ap6."
     e$ = "l16dp16 l16dp16 l16dp16 l12f#p6. ap6."
     f$ = "o1l16ap16 ap16 dp8. o3l8d e d c o2 b a l2g."
     PLAY a$ + b$ + C$ + d$ + e$ + f$: RETURN
     '
3400 DATA "Blue Danube Waltz by J.S.Strauss"
     RESTORE 3406: GOSUB 5035: FOR J = 1 TO 6: READ X, Y: PAINT (X, Y), 1, 2: NEXT J
3406 DATA 3,9,2,192,53,193,60,192,67,186,80,180,86,170,92,165,94,160,95,155,96,140,95,2,2,132,82,130,76,130,72
     DATA 14,2,163,59,166,57,169,52,169,55,170,59,171,61,167,59,163,59,159,60,154,61,156,59,157,57,156,52,159,57,163,59,165,85,156,90,150,94,140,77,167,58,158,58
     a$ = "mf ms t137 o2l6d f# a l6ap6 l6>a ap6 f# f#p6"
     b$ = "o2l6d d f# a l6ap6 l6>a ap6 g gp6"
     C$ = "o2l6c# c# e l6b bp6 l6>b bp6 g gp6"
     d$ = "o2l6c# c# e l6b bp6 l6>b bp6 f# f#p6"
     e$ = "o2l6d d f# a >dp6 >d dp6 <a ap6"
     f$ = "o2l6d d f# a >dp6 >d dp6 <b bp6"
     g$ = "o2l6e e g b l3b.. l6g# a >l3f#.."
     h$ = "t130 l6d <f# l6f#..e b..a dp12 l12d d.p6."
     I$ = "l6a gp6 a gp6 a l3>f#.. l6e <a f#p6 a f#p6 a l3>e.. "
     J$ = "l6d <a gp6 a gp6 a l3>f#.. l6e <a >d e f# l3a l6g l12f# f# l6f# e d"
     PLAY a$ + b$ + C$ + d$ + e$ + f$ + g$ + h$ + I$ + J$: RETURN
     '
3660 DATA "Humoresque by Dvorak"
     GOSUB 5030 'remove crest and top of head
     RESTORE 3667: GOSUB 5035: LINE (149, 35)-(148, 40), 0
3667 DATA 3,11,2,147,3,145,2,145,4,144,5,144,7,145,8,146,7,149,6,151,4,152,2,148,2,147,3,13,2,149,6,145,30,149,6,167,18,145,30,143,32,140,35,139,36,139,38,142,40,145,43,151,40,155,36,162,34
     DATA 11,2,173,29,176,26,178,22,178,18,175,15,173,17,172,15,170,15,164,20,158,22,157,25,145,30
      PAINT (147, 5), 1, 2: PAINT (150, 20), 3, 2: PAINT (160, 30), 1, 2: CIRCLE (153, 17), 4, 2: PAINT (153, 17), 0, 2
     a$ = "mf ms t110 o2l8gp16 l16a l8gp16 l16 a l8bp16 o3l16d l8ep16 l16d l8gp16 l16f# l8ap16 l16g l8f#p16 l16a l8gp16 l16e l8dp16 l16d l8ep16 l16d l8gp16 l16e l8dp16 o2l16b l2a."
     b$ = "o2l8gp16 l16a l8gp16 l16 a l8bp16 o3l16d l8ep16 l16d l8ep16 l16f# l8ap16 l16g l8f#p16 l16a l8gp16 l16e l8dp16 l16d l8gp16 o2l16g l4a o3d o2l2g."
     PLAY a$ + b$: RETURN
     '
3760 DATA "Pop! Goes the Weasel - Anonymous"
     RESTORE 3770: GOSUB 5035: PAINT (225, 85), 1, 2: PAINT (223, 60), 2, 2: PAINT (223, 66), CHR$(&HFF) + CHR$(&H0), 2
     CIRCLE (220, 47), 1, 3: CIRCLE (225, 47), 1, 3: PSET (222, 50), 3
     FOR I = 1 TO 5: READ X1, X2, Y2: LINE (X1, 50)-(X2, Y2), 3: NEXT I
3770 DATA 2,7,2,205,70,205,100,240,100,240,70,232,63,213,63,205,70,240,70, 27,2,213,70,213,69,220,65,221,64,221,55,218,51,217,48,216,48,214,46,214,44,215,43,216,43
     DATA 218,45,220,43,225,43,227,45,229,43,230,43,232,44,232,46,230,47,228,48,227,51,225,55,225,64,226,65,232,69,232,70,219,217,54,218,215,52,218,213,49,225,232,52,226,228,54
     a$ = "MF T90 O2 L16GP16 G AP16 A L18 B O3D O2B L16GP16"
     b$ = "D GP16 G AP16 A L9B. L16GP16"
     C$ = "D L16GP16 G AP16 A L18 B O3D O2B L16GP8"
     d$ = "O3L16E.P16 O2A.P16 O3C O2L9B. l12Gp16."
     e$ = "O3L16GP16 G EP16 L16 G F# A F# Dp16."
     f$ = "O3L16GP16 G EP16 G l9F#. Dp12"
     g$ = "l16cp16 o2b o3cp16 d ep16 f# gp12. e.p12 o2a.p16 o3c o2l9b. gp16"
     PLAY a$ + b$ + C$ + d$ + e$ + f$ + g$: RETURN
     '
3960 DATA"Symphony #40 by Mozart"
     RESTORE 3965: GOSUB 5035: PAINT (215, 60), 1, 2
3965 DATA 5,4,2,205,55,241,40,236,53,194,70,205,55,6,2,210,65,210,96,204,102,210,96,211,102,210,96,216,102,1,2,210,75,223,60,1,2,192,53,225,32,1,2,192,54,225,33
     a$ = "msmft190o3l8e- d l4d  l8e- d l4d l8e- d l4d l4b-p4"
     b$ = "l8b- a l4g l8g f l4e- l8e- d l4c cp4"
     C$ = "l8d c l4c l8d c l4c l8d c l4c ap4 "
     d$ = "l8a g l4g- l8g- e- l4d l8d c o2 l4b- b-p4"
     e$ = "o3l8b- a mll4a o4c o3g- a g dp4"
     f$ = "mso3l8b- a mll4a o4c o3g- a g b-"
     g$ = "l8a g f e- l4d o2f# g a b- o3l8c o2b- l4a g o3dp4"
     h$ = "mlo4l2c# l4dp4 "
     I$ = "mlo4l2c# l4dp4 "
     J$ = "mlo4l2c# l8dp8 c#p8 dp8 C#p8 dp8 "
     PLAY a$ + b$ + C$ + d$ + e$ + f$ + g$ + h$ + I$ + J$: RETURN
     '
4220 DATA "Yankee Doodle - Anonymous "
     GOSUB 5030 'remove crest and top of head
     RESTORE 4226: GOSUB 5035
4226 DATA 4,1,2,133,70,115,36,11,2,125,54,120,55,115,57,105,63,101,66,98,55,93,43,95,45,99,45,105,43,110,41,115,36,11,2,148,48,145,49,141,49,140,48,140,46,142,44,160,34,175,27,180,26,183,26,184,27,183,29
     DATA 6,2,146,41,135,20,144,11,155,5,160,4,167,5,177,26,4,1,0,140,15,152,38,1,0,147,9,159,34,1,0,153,6,165,31,1,0,160,4,172,28
     LINE (148, 40)-(149, 35), 0: PAINT (145, 45), 1, 2: PAINT (180, 27), 1, 2: PAINT (105, 50), 1, 2: PAINT (150, 20), 1, 2: GOSUB 5035
     a$ = "ms mf t120 l8o2 b- b- >c d <b- >d c <f b- b- >c d l4<b- l8ap8"
     b$ = "b- b- >c d e- d c <b- a f g a l4b- l8b-p8"
     C$ = "l8g. l16a l8g f g a b-p8 l8f. l16g l8f e- l4d l8fp8"
     d$ = "l8g. l16a l8g f g a b- g f b- a >c l4<b- l8b-"
     PLAY a$ + b$ + C$ + d$: RETURN
     '
4360 DATA "FUNERAL MARCH OF A MARIONETTE - GOUNOD"
     GOSUB 5030: RESTORE 4368: GOSUB 5035
4368 DATA 5,1,2,131,71,114,55,4,2,168,56,165,54,161,50,158,45,155,39,5,2,170,55,166,52,163,48,160,44,159,42,157,38,14,2,148,42,155,39,160,36,162,30,165,29,170,28,180,26,180,19,175,20,170,21,167,25,162,30,159,31,155,32,149,35
     DATA 10,2,148,40,141,25,140,20,140,11,142,7,145,3,150,1,158,2,163,5,167,10,170,21
     CIRCLE (112, 53), 3, 2: PAINT (112, 53), 3, 2: PAINT (160, 46), 0, 2: PAINT (170, 25), 1, 2: PAINT (155, 20), 1, 2: PAINT (155, 37), 1, 2'paint the costume
     a$ = "t160mf l12 o1msap12 dp6. o2 l6d dc#o1b o2 c# p6 d e p6"
     b$ = " l12o1ap12 dp6. o2 l6d dc#o1b o2 c# p6 d e p6"
     C$ = "o1l12ap12 o2dp6. fp12 l3a l6g fp6 l12ap12 o3l3c l6o2b- ap6 o3l12c#p12 l3e l6d c#o2b-agfe"
     d$ = " o1l12dp6. o2l6d dc#o1b o2l12c#p6. L6d ep6"
     e$ = "o1l12ap12 dp6. o2l6d dc#o1b o2l12c#p6. l6d ep6"
     f$ = "o1l12ap12  o2fp6. ap12 o3l3c o2l6b- a g f e- g b- d c# d ep6  f l3e. l6d"
     PLAY a$ + b$ + C$ + d$ + e$ + f$: RETURN
     '
4540 DATA "STARS AND STRIPES FOREVER - SOUSA "
     RESTORE 4548: GOSUB 5035: FOR U = 1 TO 5: READ X, Y: PAINT (X, Y), (U MOD 3) + 1, 1: NEXT U
4548 DATA 5,8,1,117,60,122,57,127,69,124,55,128,49,123,52,120,47,120,55,117,60,8,1,122,29,126,22,127,17,129,18,133,16,131,21,134,25,129,23,122,29,10,1,175,20,179,18,180,13,181,18,186,22,183,22,185,25,181,23,178,26,178,22,175,20
     DATA 8,1,208,42,205,33,208,38,211,33,212,38,217,39,212,42,208,48,208,42,8,1,199,65,203,61,203,64,206,67,203,68,199,71,198,68,195,65,199,65,123,55,127,23,180,20,210,39,200,67
     a$ = "mft160o3l4d d l8c o2b l4b l8a# b l2b. l8a# b l4b l8a# b o3l4d l8o2b o3d l2c o2l4a."
     b$ = "l8a l4a l8g# a l4a l8g# a l2o3c. l8o2b a l8b l4o3d. l4e. l8e l2o2a."
     C$ = "l4o3d d l8c o2b l4b l8a# b l2b. l8a# b l4b l8a# b o3c o2b a. l16f# l2a l4g. l8g l4g l8f# g l4b- l8a g o3l2g. o2l8g"
     d$ = "a b o3d o2g a b o3d o2d e. l16b.l2a l2g"
     PLAY a$ + b$ + C$ + d$: RETURN
     '
4680 DATA "Mexican Hat Dance - Traditional "
     GOSUB 5030 'remove crest and top of head
     RESTORE 4688: GOSUB 5035: PAINT (155, 10), 1, 2: PAINT (140, 26), 1, 2: PAINT (160, 27), 1, 2
4688 DATA 4,21,2,148,41,145,42,140,42,135,41,133,41,130,40,127,38,126,36,129,32,133,28,139,24,146,20,149,20,149,13,150,8,152,4,155,2,157,2,159,4,163,10,164,13,165,16
     DATA 10,2,164,13,170,12,175,11,185,10,190,10,191,11,192,13,190,17,183,25,180,28,174,30,4,2,191,11,176,18,147,30,131,35,125,36,1,2,150,35,160,33
     a$ = "mf t220 ms o3 l6c fp6 c fp6 c l3f.p6 l6c f g f ep6 f l3g.p6"
     b$ = "o3 l6c ep6 c ep6 c l3e.p6 l6c e f e dp6 e l3f.p6"
     C$ = "l6>c <b >c <a a- a f e f cp6 <a b- >c d e f g a b- gp6"
     d$ = "b- a b- g g- g e e- e cp6 >c <b >c d c <b- a g f"
     PLAY a$ + b$ + C$ + d$: RETURN
     '
4820 DATA "SCALES "
     RESTORE 4830: LINE (205, 10)-(250, 100), 3, BF: FOR I = 1 TO 6: READ Y1, Y2: LINE (220, Y1)-(250, Y2), 0, BF: NEXT I: Y1 = 0: Y2 = 0: FOR J = 1 TO 8: Y1 = Y1 + 10: Y2 = Y2 + 10: LINE (205, Y1 + 10)-(250, Y2 + 10), 0: NEXT J: LINE (205, 10)-(250 _
, 100), 3, B
4830 DATA 17,23,27,33,47,53,57,63,67,73,87,93
     a$ = "mst255l8o1b>cc#dd#eff#gg#aa#b>cc#dd#eff#gg#aa#b>cl2c#"
     b$ = "l8c#c<bb-aa-gg-fee-dd-c<bb-aa-gg-fee-dd-c<bl2b-"
     PLAY a$ + b$: RETURN
     '
4920 DATA "Sakura - Japanese Folk Melody "
     GOSUB 5030: RESTORE 4931: GOSUB 5035: PAINT (155, 15), CHR$(&HFC) + CHR$(&HF), 2
4931 DATA 2,8,2,151,9,125,40,135,39,140,38,147,36,150,35,156,33,160,32,162,31,6,2,174,28,181,26,185,25,190,23,195,20,195,18,151,9
     a$ = "mfms t110 o2l4 a a mll4b.p8 msl4a a mll4b.p8"
     b$ = "mla b >c <b a l8b a l4 f.p8 l4e c e f l8ep8 l8e mlc l4<b.p8"
     C$ = "mso2l4a a mll4b.p8 msl4a a mll4b.p8 c e f a l8b a l4f e."
     PLAY a$ + b$ + C$: RETURN
     '
5030 'REMOVE CREST AND TOP OF HEAD
     PAINT (168, 28), 0, 2: PAINT (150, 30), 0, 2'unpaint crest and top of head
     RESTORE 2120: FOR Q = 1 TO 2: READ J, C, X1, Y1: PSET (X1, Y1), C: FOR I = 1 TO J: READ X2, Y2: LINE -(X2, Y2), 0: NEXT I: NEXT Q: RETURN
     '
5035 READ T: FOR Q = 1 TO T: READ J, C, X1, Y1: PSET (X1, Y1), C: FOR I = 1 TO J: READ X2, Y2: LINE -(X2, Y2), C: NEXT I: NEXT Q: RETURN

