CLS
INPUT "Seconds:", a
c = TIMER
DO
  b = b + 1
LOOP UNTIL c + 1 <= TIMER
PRINT b; "cycles completed in"; a; "second(s)."

