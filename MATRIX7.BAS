SCREEN 7
'VIEW PRINT
RANDOMIZE TIMER
TYPE Matrix
  RowLoc AS INTEGER
  ColLoc AS INTEGER
  Length AS INTEGER
  CurChr AS INTEGER
  StopPt AS INTEGER
  StartP AS INTEGER
  'OldChr AS INTEGER
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
DIM m(30) AS Matrix
DIM i AS INTEGER
mc.ColMax = 80
mc.RowMax = 23
md.ChrMax = 256
md.ChrMin = 32
md.EndCol = 15
md.MidCol = 2
mc.LenMax = 20
mc.LenMin = 5
mc.ColMin = 1
mc.RowMin = 1
WIDTH 80
DO
  FOR i = 1 TO 30
  'SOUND 20000, 5
    IF m(i).RowLoc - m(i).Length <= m(i).StopPt THEN
      IF m(i).RowLoc - m(i).Length >= m(i).StartP AND m(i).StartP >= mc.RowMin THEN
        LOCATE m(i).RowLoc - m(i).Length, m(i).ColLoc
        PRINT CHR$(32)
      END IF
    ELSE
      m(i).StartP = CINT(RND * (mc.RowMax - mc.RowMin)) + mc.RowMin
      m(i).ColLoc = CINT(RND * (mc.ColMax - mc.ColMin)) + mc.ColMin
      m(i).Length = CINT(RND * (mc.LenMax - mc.LenMin)) + mc.LenMin
      m(i).CurChr = 32
      m(i).StopPt = CINT(RND * (mc.RowMax - m(i).StartP)) + m(i).StartP
      m(i).RowLoc = m(i).StartP
    END IF
    IF m(i).RowLoc > m(i).StartP AND m(i).RowLoc <= m(i).StopPt THEN
      LOCATE m(i).RowLoc - 1, m(i).ColLoc
      COLOR md.MidCol
      PRINT CHR$(m(i).CurChr)
    END IF
    IF m(i).RowLoc < m(i).StopPt AND m(i).RowLoc >= mc.RowMin THEN
      LOCATE m(i).RowLoc, m(i).ColLoc
      COLOR md.EndCol
      'm(i).OldChr = m(i).CurChr
      m(i).CurChr = INT(RND * (md.ChrMax - md.ChrMin)) + md.ChrMin
      PRINT CHR$(m(i).CurChr)
    END IF
    m(i).RowLoc = m(i).RowLoc + 1
  NEXT i
LOOP WHILE INKEY$ <> CHR$(27)

