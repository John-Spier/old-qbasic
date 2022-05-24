CLS
INPUT "Size:", size%
SCREEN 12
FOR i = 1 TO size% * 4 STEP size%
  FOR j = 1 TO size% * 4 STEP size%
    n = n + 1
    COLOR n - 1
    FOR k = i TO i + size% - 1
      FOR l = j TO j + size% - 1
        PSET (l, k)
      NEXT l
    NEXT k
    SOUND (j + 1) * 19, 1
  NEXT j
  PRINT
NEXT i

