
DIM SHARED x AS INTEGER
DIM SHARED y AS INTEGER
DIM SHARED move AS INTEGER
SCREEN 13
y = 1
x = 1
CLS
PSET (x, y), 4
DO
  a$ = UCASE$(INKEY$)
  SELECT CASE a$
    CASE CHR$(0) + "H"
     move = 1
     PSET (x, y), 0
     IF y > 0 THEN y = y - 1
    CASE CHR$(0) + "P"
     move = 1
     PSET (x, y), 0
     IF y < 199 THEN y = y + 1
    CASE CHR$(0) + "K"
     move = 1
     PSET (x, y), 0
     IF x > 0 THEN x = x - 1
    CASE CHR$(0) + "M"
     move = 1
     PSET (x, y), 0
     IF x < 319 THEN x = x + 1
  END SELECT
  IF move = 1 THEN PSET (x, y), 4
LOOP WHILE a$ <> CHR$(27)

