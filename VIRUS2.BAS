CLS
COLOR 12
PRINT "Fish's Any Software Activator 1.0"
PRINT
INPUT "Program to activate:", qazwsx$
PRINT "Searching..."
SLEEP 2
CLS
FOR i = 1 TO 100
  FILES
NEXT i
PRINT "Found!"
PRINT "Activating..."
SLEEP 10
PRINT "Activation Failed! (The program might have a virus)"
PRINT "Scanning for viruses..."
SLEEP 5
PRINT "1 virus found."
PRINT "Deleting virus..."
SLEEP 3
PRINT "Deletion Failed!"
SLEEP 2
COLOR 2, 7
CLS
PRINT "INSTALLING VIRUS..."
FOR i = 0 TO 100 STEP 5
  SLEEP 1
  LOCATE 2, 1
  PRINT MID$(STR$(i), 2); "%"
NEXT i
CLS
SCREEN 13
RANDOMIZE TIMER
DO
  a = (a + 1) MOD 80
  xa = INT(RND * 319 + 1)
  xb = INT(RND * 89) + xa
  ya = INT(RND * 239 + 1)
  yb = INT(RND * 89) + ya
  colora = INT(RND * 255 + 1)
  size = INT(RND * 49 + 1)
  thetype = CINT(RND)
  SELECT CASE thetype
    CASE 0
     LINE (xa, ya)-(xb, yb), colora, BF
    CASE 1
     CIRCLE (xa, ya), size, colora
     PAINT (xa, ya), colora, colora
  END SELECT
  sound1 = INT(RND * 300) + 40
  SOUND sound1, .75
  IF a = 0 THEN
    LOCATE 13, 16
    PRINT "INFECTED"
  END IF
LOOP WHILE INKEY$ <> CHR$(27)

