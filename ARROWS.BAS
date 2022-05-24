DECLARE SUB space ()
DIM SHARED x AS INTEGER
DIM SHARED y AS INTEGER
DIM SHARED move AS INTEGER
y = 1
x = 1
CLS
LOCATE y, x
PRINT CHR$(1)
DO
  a$ = UCASE$(INKEY$)
  SELECT CASE a$
    CASE CHR$(0) + "H"
     move = 1
     space
     IF y > 1 THEN y = y - 1
    CASE CHR$(0) + "P"
     move = 1
     space
     IF y < 25 THEN y = y + 1
    CASE CHR$(0) + "K"
     move = 1
     space
     IF x > 1 THEN x = x - 1
    CASE CHR$(0) + "M"
     move = 1
     space
     IF x < 80 THEN x = x + 1
  END SELECT
  IF move = 1 THEN
    LOCATE y, x
    PRINT CHR$(1)
  END IF
LOOP WHILE a$ <> CHR$(27)

SUB space
  LOCATE y, x
  PRINT " "
END SUB

