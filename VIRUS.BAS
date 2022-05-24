DECLARE SUB dots ()
SCREEN 12
SCREEN 0
PRINT "You might have viruses on your computer!"
PRINT "Fish Antivirus is scanning for viruses";
dots
DO
  CLS
  COLOR 4, 0
  PRINT "1 virus detected."
  INPUT "Delete it(Y/N)?", A$
  Z$ = UCASE$(A$)
  SELECT CASE Z$
    CASE "Y"
     PRINT "Deleting virus";
     dots
     PRINT "Deletion Failed!"
     SLEEP 3
     EXIT DO
    CASE "N"
    SLEEP 1
    EXIT DO
    CASE ELSE
    PRINT "Invalid choice"
    SLEEP
  END SELECT
LOOP
CLS
PRINT "SYSTEM CONDITION: CRITICAL"
SLEEP 2
PRINT "Virus taking over!"
SLEEP 2
CLS
COLOR 2, 0
PRINT "Formatting hard drive";
dots
PRINT "Finished!"
SLEEP 2
COLOR 4, 0
PRINT "WARNING! SHUT DOWN COMPUTER IMMEDIATELY TO AVOID FIRE!"
SLEEP 3
CLS
'WIDTH 40
RANDOMIZE TIMER
DO
  color1 = INT(RND * 15 + 1)
  color2 = INT(RND * 15 + 1)
  COLOR color1, color2
  PRINT "VIRUS";
  DO
    sound1 = INT(RND * 32767 + 1)
  LOOP WHILE sound1 < 37
  SOUND sound1, .1
LOOP WHILE INKEY$ <> CHR$(27)

SUB dots
FOR i = 1 TO 3
SLEEP 5
PRINT ".";
NEXT i
END SUB

