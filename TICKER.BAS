DECLARE SUB drawbox (xa!, ya!, xb!, yb!)
CLS
INPUT "String:", thestring$
INPUT "Box size:", fishend
INPUT "Speed:", thesound
theend = fishend + 2
CLS
drawbox 1, 1, theend, 3
IF (theend - 2) >= LEN(thestring$) THEN
  ticker$ = thestring$ + STRING$((theend - 2) - LEN(thestring$), " ")
ELSE
  bigstring$ = thestring$ + " "
  thestring$ = LEFT$(bigstring$, theend - 2)
END IF
DO
  a$ = INKEY$
  SOUND 32767, thesound
  acount% = (acount% + 1) MOD LEN(thestring$)
  IF acount% = 0 THEN acount% = 1
  IF (theend - 2) >= LEN(bigstring$) THEN
    thefirst$ = LEFT$(ticker$, 1)
    test$ = RIGHT$(ticker$, LEN(ticker$) - 1)
    ticker$ = test$ + thefirst$
  ELSE
    thefirst$ = LEFT$(bigstring$, 1)
    test$ = RIGHT$(bigstring$, LEN(bigstring$) - 1)
    bigstring$ = test$ + thefirst$
    thestring$ = LEFT$(bigstring$, theend - 2)
    ticker$ = thestring$
  END IF
  LOCATE 2, 2
  PRINT ticker$
LOOP UNTIL a$ = CHR$(27)

SUB drawbox (xa, ya, xb, yb)
IF xb > xa AND yb > ya THEN
  LOCATE ya, xa
  PRINT STRING$(xb - xa, 205)
  LOCATE yb, xa
  PRINT STRING$(xb - xa, 205)
  FOR i = ya TO yb
    LOCATE i, xa
    PRINT CHR$(186)
    LOCATE i, xb
    PRINT CHR$(186)
  NEXT i
  LOCATE ya, xa
  PRINT CHR$(201)
  LOCATE yb, xa
  PRINT CHR$(200)
  LOCATE ya, xb
  PRINT CHR$(187)
  LOCATE yb, xb
  PRINT CHR$(188)
END IF
END SUB

