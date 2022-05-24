CLS
INPUT "String to reverse:", forward$
FOR i = LEN(forward$) TO 1 STEP -1
  reverse$ = reverse$ + MID$(forward$, i, 1)
NEXT i
PRINT reverse$

