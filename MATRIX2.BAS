'SCREEN 12
'CLS
RANDOMIZE TIMER
TYPE Matrix
  RowLoc AS INTEGER
  ColLoc AS INTEGER
  Length AS INTEGER
  CurChr AS INTEGER
END TYPE
TYPE FixedMatrix
  RowMax AS INTEGER
  ColMax AS INTEGER
  LenMax AS INTEGER
  LenMin AS INTEGER
  ColMin AS INTEGER
  RowMin AS INTEGER
END TYPE
TYPE SemiRandomMatrix
  ChrMax AS INTEGER
  ChrMin AS INTEGER
  EndCol AS INTEGER
  MidCol AS INTEGER
END TYPE
DIM mc AS FixedMatrix
DIM md AS SemiRandomMatrix 'array can be used for this
DIM m(10) AS Matrix
DIM i AS INTEGER
mc.ColMax = 79
mc.RowMax = 24
md.ChrMax = 224
md.ChrMin = 32
md.EndCol = 15
md.MidCol = 2
mc.LenMax = 20
mc.LenMin = 5
mc.ColMin = 1
mc.RowMin = 1
DO
  FOR i = 1 TO 10
    IF m(i).Length < 1 OR m(i).RowLoc > mc.RowMax THEN
      m(i).RowLoc = CINT(RND * mc.RowMax) + mc.RowMin
      m(i).ColLoc = CINT(RND * mc.ColMax) + mc.ColMin
      m(i).Length = CINT(RND * mc.LenMax) + mc.LenMin
      m(i).CurChr = 32
    ELSE
      IF m(i).RowLoc > mc.RowMin THEN
        LOCATE m(i).RowLoc - 1, m(i).ColLoc
        COLOR md.MidCol
        PRINT CHR$(m(i).CurChr)
      END IF
      LOCATE m(i).RowLoc, m(i).ColLoc
      COLOR md.EndCol
      m(i).CurChr = INT(RND * md.ChrMax) + md.ChrMin
      PRINT CHR$(m(i).CurChr)
      m(i).Length = m(i).Length - 1
      m(i).RowLoc = m(i).RowLoc + 1
    END IF
  NEXT i
LOOP WHILE INKEY$ <> CHR$(27)

SUB NewMatrix (mat%)

END SUB

