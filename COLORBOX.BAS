CLS
INPUT "Size:", size%
SCREEN 13
FOR i = 1 TO size% * 16 STEP size%
  m = m + 1
  FOR j = 1 TO size% * 16 STEP size%
    n = n + 1
    COLOR (m * n) - 1
    FOR k = i TO i + size% - 1
      FOR l = j TO j + size% - 1
        PSET (k, l)
      NEXT l
    NEXT k
    SOUND (j + 1) * 19, 1
  NEXT j
  n = 0
  PRINT
NEXT i

