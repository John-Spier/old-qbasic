'SCREEN 12
'SCREEN 0
CLS
COLOR 2
RANDOMIZE TIMER
DO
  place = INT(RND * 79) + 1
  theend = INT(RND * 15) + 10
  length = INT(RND * 5) + 5
  FOR i = 1 TO theend
    LOCATE i, place
    PRINT CHR$(INT(RND * 94) + 32)
    SOUND INT(RND * 32700) + 37, .5
    IF i > length THEN
      LOCATE i - length, place
      PRINT CHR$(32)
    END IF
  NEXT i
LOOP WHILE INKEY$ <> CHR$(27)

