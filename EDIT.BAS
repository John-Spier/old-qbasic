'$DYNAMIC
ON ERROR GOTO anerror
CLS
INPUT "File:", file$
OPEN file$ FOR INPUT AS #1
IF theerror = 53 THEN ' If file does not exist creates file
  OPEN file$ FOR APPEND AS #2
  PRINT #2,
  CLOSE #2
  OPEN file$ FOR INPUT AS #1
END IF
WHILE NOT EOF(1)
  a = a + 1
  LINE INPUT #1, zxcv$ ' Counts lines
WEND
CLOSE #1
OPEN file$ FOR INPUT AS #1
REDIM fish$(a)
WHILE NOT EOF(1)
  b = b + 1
  LINE INPUT #1, fish$(b)
WEND
CLOSE #1
DO
  c$ = UCASE$(INKEY$)
  SELECT CASE c$
    CASE "L" ' View text
     INPUT "First line:", d
     INPUT "Second line:", e
     FOR i = d TO e
       PRINT fish$(i)
     NEXT i
    CASE "S" ' Save file
     INPUT "File:", save$
     KILL save$
     OPEN save$ FOR APPEND AS #2
     FOR j = 1 TO a
       PRINT #2, fish$(j)
     NEXT j
     CLOSE #2
    CASE "Q" ' Exit program
     END
    CASE "E" ' Edit line
     INPUT "Line:", f
     INPUT theline$
     fish$(f) = theline$
    CASE "A" ' Append line
     INPUT "Line:", g
     INPUT aline$
     REDIM temp$(a)
     FOR k = 1 TO a
       temp$(k) = fish$(k)
     NEXT k
     a = a + 1
     REDIM fish$(a)
     FOR l = 1 TO g
       fish$(l) = temp$(l)
       fish$(l + 1) = aline$
     NEXT l
     FOR m = g + 1 TO a - 1
       fish$(m + 1) = temp$(m)
     NEXT m
     ERASE temp$
     CASE "N" ' View number of lines
      PRINT UBOUND(fish$)
     CASE "D" ' Delete line
      INPUT "Line:", h
      REDIM temp$(a)
      FOR n = 1 TO a
        temp$(n) = fish$(n)
      NEXT n
      a = a - 1
      REDIM fish$(a)
      FOR o = 1 TO h - 1
        fish$(o) = temp$(o)
      NEXT o
      FOR p = h TO a + 1
        fish$(p) = temp$(p + 1)
      NEXT p
      ERASE temp$
  END SELECT
LOOP
anerror:
theerror = ERR
RESUME NEXT

