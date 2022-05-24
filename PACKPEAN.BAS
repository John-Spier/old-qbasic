DECLARE SUB reprint ()
DECLARE SUB space ()
DIM SHARED x AS INTEGER
DIM SHARED y AS INTEGER
DIM SHARED move AS INTEGER
DIM SHARED xb AS INTEGER
DIM SHARED yb AS INTEGER
DIM SHARED health1 AS INTEGER
DIM SHARED health2 AS INTEGER
DIM SHARED power1 AS INTEGER
DIM SHARED power2 AS INTEGER
DIM SHARED name1 AS STRING
DIM SHARED name2 AS STRING
health1 = 100
health2 = 100
CLS
PRINT "Attack Of The Packing Peanuts: The Game"
name1 = "Harry Potter"
name2 = "Skeleton Man"
PLAY "o1t200e<fg>t50o2 cdc o1t200e<fg>t50o2 edc"
CLS
reprint
LOCATE 23, 1
PRINT STRING$(80, "-")
x = 1
y = 22
xb = 80
yb = 22
LOCATE 22, 80
PRINT CHR$(2)
LOCATE 22, 1
PRINT CHR$(1)
DO
  a$ = UCASE$(INKEY$)
  SELECT CASE a$
    CASE CHR$(0) + "K"
     move = 0
     space
     IF x > 1 THEN x = x - 1
    CASE CHR$(0) + "M"
     move = 0
     space
     IF x < xb - 1 THEN x = x + 1
    CASE "A"
     move = 1
     space
     IF xb > x + 1 THEN xb = xb - 1
    CASE "D"
     move = 1
     space
     IF xb < 80 THEN xb = xb + 1
    CASE "0"
     power1 = power1 + 1
     reprint
    CASE "1"
     IF x + 1 = xb THEN
       health2 = health2 - power1
       power1 = 0
     END IF
     reprint
    CASE "2"
     IF x + 1 = xb THEN
       power2 = power2 - power1
       power1 = 0
     END IF
     reprint
    CASE "3"
     health1 = health1 + power1
     power1 = 0
     reprint
    CASE "F"
     power2 = power2 + 1
     reprint
    CASE "W"
     IF xb - 1 = x THEN
       health1 = health1 - power2
       power2 = 0
     END IF
     reprint
    CASE "S"
     IF xb - 1 = x THEN
       power1 = power1 - power2
       power2 = 0
     END IF
     reprint
    CASE "X"
     health2 = health2 + power2
     power2 = 0
     reprint
  END SELECT
  IF move = 0 THEN
    LOCATE y, x
    PRINT CHR$(1)
  ELSE
    LOCATE yb, xb
    PRINT CHR$(2)
  END IF
LOOP WHILE a$ <> CHR$(27) AND health2 > 0 AND health1 > 0
LOCATE 12, 32
IF health2 < 1 THEN
  PRINT name1; " wins!"
  LOCATE yb, xb
  PRINT "X"
  SOUND 700, 15
  SLEEP 2
ELSEIF health1 < 1 THEN
  PRINT name2; " wins!"
  LOCATE y, x
  PRINT "X"
  SOUND 1000, 15
  SLEEP 2
END IF

SUB reprint
LOCATE 1, 1
PRINT name1; "'s health:"; health1; name1; "'s power:"; power1; "   "
PRINT name2; "'s health:"; health2; name2; "'s power:"; power2; "   "
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

