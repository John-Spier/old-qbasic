SCREEN 13
FOR j = 1 TO 150
  FOR i = 0 TO 255
    PSET (i + 1, j), i
    'SOUND (i + 2) * 20, .125
  NEXT i
NEXT j

