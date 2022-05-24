DECLARE SUB space ()
DIM SHARED x AS INTEGER
DIM SHARED y AS INTEGER
DIM SHARED move AS INTEGER
DIM SHARED xb AS INTEGER
DIM SHARED yb AS INTEGER
y = 1
x = 1
yb = 23
xb = 80
CLS
LOCATE yb, xb
PRINT CHR$(2)
DO
  a$ = UCASE$(INKEY$)
  same = 0
  SELECT CASE a$
    CASE CHR$(0) + "H"
     move = 0
     space
     IF y - 1 = yb AND x = xb THEN same = 1
     IF y > 1 AND same = 0 THEN y = y - 1
    CASE CHR$(0) + "P"
     move = 0
     space
     IF y + 1 = yb AND x = xb THEN same = 1
     IF y < 25 AND same = 0 THEN y = y + 1
    CASE CHR$(0) + "K"
     move = 0
     space
     IF x - 1 = xb AND y = yb THEN same = 1
     IF x > 1 AND same = 0 THEN x = x - 1
    CASE CHR$(0) + "M"
     move = 0
     space
     IF x + 1 = xb AND y = yb THEN same = 1
     IF x < 80 AND same = 0 THEN x = x + 1
    CASE "W"
     move = 1
     space
     IF yb - 1 = y AND xb = x THEN same = 1
     IF yb > 1 AND same = 0 THEN yb = yb - 1
    CASE "S"
     move = 1
     space
     IF yb + 1 = y AND xb = x THEN same = 1
     IF yb < 25 AND same = 0 THEN yb = yb + 1
    CASE "A"
     move = 1
     space
     IF xb - 1 = x AND yb = y THEN same = 1
     IF xb > 1 AND same = 0 THEN xb = xb - 1
    CASE "D"
     move = 1
     space
     IF xb + 1 = x AND yb = y THEN same = 1
     IF xb < 80 AND same = 0 THEN xb = xb + 1
  END SELECT
  IF move = 0 THEN
    LOCATE y, x
    PRINT CHR$(1)
    move = -1
  ELSEIF move = 1 THEN
    LOCATE yb, xb
    PRINT CHR$(2)
    move = -1
  END IF
LOOP WHILE a$ <> CHR$(27)

SUB space
IF move = 0 THEN
  LOCATE y, x
  PRINT " "
ELSE
  LOCATE yb, xb
  PRINT " "
END IF
END SUB

