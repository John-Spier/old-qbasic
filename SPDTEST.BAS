CLS
INPUT "Cycles:", a
a = INT(a)
b = TIMER
FOR i = 1 TO a
NEXT i
c = TIMER - b
PRINT a; "cycles completed in"; c; "seconds."

