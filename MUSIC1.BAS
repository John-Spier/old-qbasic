ON ERROR GOTO anerror
'file$ = COMMAND$
'DO
  theerror = 500
  nofile = 0
  CLS
  IF file$ = "" THEN INPUT "File:", file$
  OPEN file$ FOR INPUT AS #1
  IF theerror = 53 THEN
    PRINT "The file "; file$; " does not exist."
    nofile = 1
  END IF
  IF nofile <> 1 THEN
    DO WHILE NOT EOF(1)
      LINE INPUT #1, music$
      PLAY music$
    LOOP
  END IF
  CLOSE #1
'  PRINT "Another file(Y/N)?"
'  DO
'    yes = 0
'    a$ = UCASE$(INKEY$)
'    IF a$ = "Y" OR a$ = "N" THEN yes = 1
'  LOOP WHILE yes = 0
'LOOP WHILE a$ = "Y"
END
anerror:
theerror = ERR
RESUME NEXT

