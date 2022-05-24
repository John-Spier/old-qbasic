DECLARE SUB redraw (lives)
RANDOMIZE TIMER
CLS
INPUT "Speed (lower numbers are faster):", speed
INPUT "Number hits before game ends:", hits
INPUT "Time to speed up (-1 for no speed up):", faster
CLS
redraw (hits)
DO
  DO
    number = INT(RND * 9) + 1
  LOOP WHILE number = 10
  place = INT(RND * 79) + 1
  move = 1
  y = 1
  DO WHILE move = 1
    SOUND 32767, speed
    a = a + 1
    IF a = faster THEN
      a = 0
      IF speed > 1 THEN speed = speed - .5
    END IF
    redraw (hits)
    y = y + 1
    LOCATE y, place
    PRINT number;
    IF y = 22 THEN
      move = 0
      hits = hits - 1
    END IF
   a$ = INKEY$
   IF VAL(a$) = number THEN
     move = 0
     score = score + 1
   END IF
  LOOP
  redraw (hits)
  IF hits = 0 THEN
    LOCATE 12, 40
    PRINT "GAME OVER"
    SLEEP
    END
  END IF
LOOP

SUB redraw (lives)
SHARED score
CLS
LOCATE 24
PRINT STRING$(80, "-")
LOCATE 25
PRINT "Score: "; score; " Hits left: "; lives
END SUB

