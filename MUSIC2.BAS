ON ERROR GOTO anerror
DO
  theerror = 500
  nofile = 0
  CLS
  INPUT "File:", file$
  OPEN file$ FOR INPUT AS #1
  IF theerror = 53 THEN
    PRINT "The file "; file$; " does not exist."
    nofile = 1
  END IF
  IF nofile <> 1 THEN
    b = 0
    DO WHILE NOT EOF(1)
      INPUT #1, music$
      b = b + 1
      IF b / 2 = INT(b / 2) THEN
        PLAY music$
      ELSE
        PRINT music$
      END IF
    LOOP
  END IF
  CLOSE #1
  PRINT "Another file(Y/N)?"
  DO
    yes = 0
    a$ = UCASE$(INKEY$)
    IF a$ = "Y" OR a$ = "N" THEN yes = 1
  LOOP WHILE yes = 0
LOOP WHILE a$ = "Y"
END
anerror:
theerror = ERR
RESUME NEXT

