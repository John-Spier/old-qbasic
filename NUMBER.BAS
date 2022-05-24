CLS
RANDOMIZE TIMER
PRINT "(1) Game 1- 100"
PRINT "(2) Game 2- 1000"
PRINT "(3) Game 3- 10000"
DO
  A$ = INKEY$
  SELECT CASE A$
    CASE "1"
     number = INT(RND * 99) + 1
     range = 101
     EXIT DO
    CASE "2"
     number = INT(RND * 999) + 1
     range = 1001
     EXIT DO
    CASE "3"
     number = INT(RND * 9999) + 1
     range = 10001
     EXIT DO
  END SELECT
LOOP
guess = 0
CLS
DO
  INPUT Fish
  IF Fish < range THEN
    IF Fish > 0 THEN
      IF Fish < number THEN
        PRINT "Higher"
      END IF
      IF Fish > number THEN
        PRINT "Lower"
      END IF
    END IF
  END IF
  guess = guess + 1
LOOP WHILE Fish <> number
PRINT "You won and took"; guess; "guesses."






