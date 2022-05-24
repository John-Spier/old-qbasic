CLS
SCREEN 13
RANDOMIZE TIMER
DO
  xa = INT(RND * 319 + 1)
  xb = INT(RND * 319 + 1)
  ya = INT(RND * 239 + 1)
  yb = INT(RND * 239 + 1)
  colora = INT(RND * 15 + 1)
  size = INT(RND * 49 + 1)
  thetype = CINT(RND)
  SELECT CASE thetype
    CASE 0
     LINE (xa, ya)-(xb, yb), colora, BF
    CASE 1
     CIRCLE (xa, ya), size, colora
     PAINT (xa, ya), colora, colora
  END SELECT
  DO
    sound1 = INT(RND * 32767 + 1)
  LOOP WHILE sound1 < 37
  SOUND sound1, .1
LOOP WHILE INKEY$ <> CHR$(27)

