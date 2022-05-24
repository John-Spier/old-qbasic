DEFINT C-Z
DIM place(4)
a = 5000
RANDOMIZE TIMER
DO
  DO
    yeshorse = 0
    CLS
    COLOR 7
    PRINT "Your Money:"; a
    INPUT "Which horse would you like to bet on"; horse
    INPUT "How much money would you like to bet"; bet
    IF horse > 0 AND horse < 6 THEN yeshorse = 1
    IF yeshorse = 0 THEN PRINT "Invalid choice"
    IF bet > a THEN
      PRINT "You do not have enough money"
      yeshorse = 0
    END IF
    IF bet < 0 THEN
      PRINT "You cannot bet a negative amount of money"
      yeshorse = 0
    END IF
    IF yeshorse = 0 THEN SLEEP
  LOOP WHILE yeshorse = 0
  horse = horse - 1
  a = a - bet
  CLS
  FOR i = 1 TO 5
    COLOR i
    PRINT i
    place(i - 1) = 1
  NEXT i
  win = 0
  DO
    LOCATE move + 1, 2
    PRINT " "
    DO
      move = INT(RND * 5)
    LOOP WHILE move = 5
    LOCATE move + 1, place(move)
    PRINT " "
    place(move) = place(move) + 1
    LOCATE move + 1, place(move)
    COLOR move + 1
    PRINT move + 1
    SOUND (move + 1) * 100, 1
    FOR j = 0 TO 4
      IF place(j) = 80 THEN win = 1
    NEXT j
    IF place(horse) = 80 THEN a = a + (bet * 2)
  LOOP WHILE win = 0
LOOP

