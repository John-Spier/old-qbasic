'$DYNAMIC
ON ERROR GOTO anerror
CLS
IF COMMAND$ = "" THEN
  INPUT "File:", file$
ELSE
  file$ = COMMAND$
END IF
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
  C$ = UCASE$(INKEY$)
  SELECT CASE C$
    CASE "L" ' View text
     PRINT "L"
     INPUT "First line:", d
     IF d = 0 THEN d = 1
     INPUT "Second line:", e
     IF e = 0 THEN e = UBOUND(fish$)
     FOR i = d TO e
       PRINT fish$(i)
     NEXT i
    CASE "S" ' Save file
     PRINT "S"
     INPUT "File:", save$
     IF save$ = "" THEN save$ = file$
     KILL save$
     OPEN save$ FOR APPEND AS #2
     FOR j = 1 TO a
       PRINT #2, fish$(j)
     NEXT j
     CLOSE #2
     file$ = save$
    CASE "Q" ' Exit program
     PRINT "Q"
     END
    CASE "E" ' Edit line
     PRINT "E"
     INPUT "Line:", f
     INPUT theline$
     fish$(f) = theline$
    CASE "A" ' Append line
     PRINT "A"
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
      PRINT "N:"; UBOUND(fish$)
     CASE "D" ' Delete line
      PRINT "D"
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

