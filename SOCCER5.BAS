DECLARE SUB drawbox (xone!, yone!, xtwo!, ytwo!)
DECLARE SUB start ()
DECLARE SUB goal (side!)
DECLARE SUB space ()
DIM SHARED x AS INTEGER
DIM SHARED y AS INTEGER
DIM SHARED move AS INTEGER
DIM SHARED xb AS INTEGER
DIM SHARED yb AS INTEGER
DIM SHARED score1 AS INTEGER
DIM SHARED score2 AS INTEGER
DIM SHARED xa AS INTEGER
DIM SHARED ya AS INTEGER
start
DO
  a$ = UCASE$(INKEY$)
  same = 0
  SELECT CASE a$
    CASE CHR$(0) + "H"
     move = 0
     space
     IF y - 1 = yb AND x = xb THEN same = 1
     IF y > 2 AND same = 0 THEN y = y - 1
    CASE CHR$(0) + "P"
     move = 0
     space
     IF y + 1 = yb AND x = xb THEN same = 1
     IF y < 22 AND same = 0 THEN y = y + 1
    CASE CHR$(0) + "K"
     move = 0
     space
     IF x - 1 = xb AND y = yb THEN same = 1
     IF x > 2 AND same = 0 THEN x = x - 1
    CASE CHR$(0) + "M"
     move = 0
     space
     IF x + 1 = xb AND y = yb THEN same = 1
     IF x < 79 AND same = 0 THEN x = x + 1
    CASE "W"
     move = 1
     space
     IF yb - 1 = y AND xb = x THEN same = 1
     IF yb > 2 AND same = 0 THEN yb = yb - 1
    CASE "S"
     move = 1
     space
     IF yb + 1 = y AND xb = x THEN same = 1
     IF yb < 22 AND same = 0 THEN yb = yb + 1
    CASE "A"
     move = 1
     space
     IF xb - 1 = x AND yb = y THEN same = 1
     IF xb > 2 AND same = 0 THEN xb = xb - 1
    CASE "D"
     move = 1
     space
     IF xb + 1 = x AND yb = y THEN same = 1
     IF xb < 79 AND same = 0 THEN xb = xb + 1
    CASE "0"
     IF ball = 1 AND kick = 1 THEN
       bmov = 1
       kick = 0
       xa = x + 1
       ya = y
       LOCATE ya, xa
       PRINT "o"
     END IF
    CASE "F"
     IF ball = -1 AND kick = 1 THEN
       bmov = 1
       kick = 0
       xa = xb - 1
       ya = yb
       LOCATE ya, xa
       PRINT "o"
     END IF
  END SELECT
  IF move = 0 THEN
    LOCATE y, x
    PRINT CHR$(1)
  ELSE
    LOCATE yb, xb
    PRINT CHR$(2)
  END IF
  IF xa = x AND ya = y THEN
    ball = 1
    kick = 1
    bmov = 0
    xa = 81
    LOCATE y, x
    PRINT CHR$(1)
  END IF
  IF xa = xb AND ya = yb THEN
    ball = -1
    kick = 1
    bmov = 0
    xa = 81
    LOCATE yb, xb
    PRINT CHR$(2)
  END IF
  IF xa - 1 = 1 OR xa = 1 THEN
    IF ya > 5 AND ya < 19 THEN
      score2 = score2 + 1
      start
      bmov = 0
      ball = 0
      kick = 0
    ELSE
      IF xa = 1 THEN xa = xa - 1
      bmov = 0
    END IF
  END IF
  IF xa = 79 OR xa = 80 THEN
    IF ya > 5 AND ya < 19 THEN
      score1 = score1 + 1
      start
      bmov = 0
      ball = 0
      kick = 0
    ELSE
      IF xa = 80 THEN xa = 79
      bmov = 0
    END IF
  END IF
  IF bmov = 1 THEN
    LOCATE ya, xa
    PRINT " "
    xa = xa + ball
    LOCATE ya, xa
    PRINT "o"
    SOUND 32767, 1
  END IF
LOOP WHILE a$ <> CHR$(27)

SUB drawbox (xone, yone, xtwo, ytwo)
IF xtwo > xone AND ytwo > yone THEN
  LOCATE yone, xone
  PRINT STRING$(xtwo - xone, 205)
  LOCATE ytwo, xone
  PRINT STRING$(xtwo - xone, 205)
  FOR i = yone TO ytwo
    LOCATE i, xone
    PRINT CHR$(186)
    LOCATE i, xtwo
    PRINT CHR$(186)
  NEXT i
  LOCATE yone, xone
  PRINT CHR$(201)
  LOCATE ytwo, xone
  PRINT CHR$(200)
  LOCATE yone, xtwo
  PRINT CHR$(187)
  LOCATE ytwo, xtwo
  PRINT CHR$(188)
END IF
END SUB

SUB goal (side)
FOR j = 2 TO 22
  LOCATE j, side
  PRINT CHR$(186)
NEXT j
FOR i = 6 TO 18
  LOCATE i, side
  PRINT CHR$(219)
NEXT i
END SUB

SUB space
IF move = 0 THEN
  LOCATE y, x
  PRINT " "
ELSE
  LOCATE yb, xb
  PRINT " "
END IF
END SUB

SUB start

CLS
drawbox 1, 1, 80, 23
goal (1)
goal (80)


x = 40
y = 12
xb = 42
yb = 12
xa = 41
ya = 12
LOCATE 24
PRINT score1; "-"; score2;
LOCATE 12, 42
PRINT CHR$(2)
LOCATE 12, 41
PRINT "o"
LOCATE 12, 40
PRINT CHR$(1)
END SUB

