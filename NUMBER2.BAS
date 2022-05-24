DECLARE FUNCTION rand! (a!, b!)
RANDOMIZE TIMER
CLS
DO
  INPUT "Low number:", one
  INPUT "High number:", two
  one = INT(one)
  two = INT(two)
  IF two < one THEN PRINT "The low number cannot be less than the high number"
LOOP WHILE two < one
CLS
thenum = rand(two, one)
DO
  INPUT yournum
  yournum = INT(yournum)
  IF yournum >= one AND yournum <= two THEN
    IF yournum > thenum THEN PRINT "Guess lower"
    IF yournum < thenum THEN PRINT "Guess higher"
  guess = guess + 1
  ELSE PRINT "Out of range"
  END IF
LOOP UNTIL yournum = thenum
PRINT "You won and took"; guess; "guesses."

FUNCTION rand (a, b)
DO
  test = RND
LOOP UNTIL test <> 0
rand = CINT(test * (a - b) + b)
END FUNCTION

