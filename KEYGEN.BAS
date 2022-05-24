DECLARE FUNCTION OffKey$ ()
DECLARE FUNCTION NormalKey$ ()
DECLARE FUNCTION OEMKey$ ()
DECLARE FUNCTION FiveDigitPart$ ()
DECLARE FUNCTION DatePart$ ()
DECLARE FUNCTION SumPart$ (oem%)
DECLARE FUNCTION RandPart$ (office%)
RANDOMIZE TIMER
PRINT "OEM Key: " + OEMKey$
PRINT "Office 97 Key: " + OffKey$
PRINT "Non-OEM Key: " + NormalKey$

FUNCTION DatePart$
DIM year AS INTEGER
DIM day AS INTEGER
DIM yearzero AS STRING
DIM dayzero AS STRING
year = (CINT(RND * 8) + 95) MOD 100
day = CINT(RND * 365) + 1
IF year < 10 THEN yearzero = "0"
IF day < 100 THEN dayzero = "0"
IF day < 10 THEN dayzero = "00"
DatePart$ = dayzero + LTRIM$(STR$(day)) + yearzero + LTRIM$(STR$(year))
END FUNCTION

FUNCTION FiveDigitPart$
DIM fivedp AS LONG
DIM fivezero AS STRING
DIM i AS INTEGER
fivedp = CLNG(RND * 99999)
FOR i = 1 TO 4
    IF fivedp < 10 ^ i THEN fivezero = fivezero + "0"
NEXT
FiveDigitPart$ = fivezero + LTRIM$(STR$(fivedp))
END FUNCTION

FUNCTION NormalKey$
NormalKey$ = RandPart(0) + "-" + SumPart(0)
END FUNCTION

FUNCTION OEMKey$
OEMKey$ = DatePart$ + "-OEM-" + SumPart$(1) + "-" + FiveDigitPart$
END FUNCTION

FUNCTION OffKey$
OffKey$ = RandPart$(1) + "-" + SumPart(0)
END FUNCTION

FUNCTION RandPart$ (office%)
DIM randseg AS INTEGER
DIM randzero AS STRING
DO
    randseg = CINT(RND * 999)
LOOP WHILE randseg = 333 OR randseg = 444 OR randseg = 555 OR randseg = 666 OR randseg = 777 OR randseg = 888 OR randseg = 999
IF randseg < 100 THEN randzero = "0"
IF randseg < 10 THEN randzero = "00"
IF office% >= 1 THEN
    office% = (randseg MOD 10) + CINT(RND) + 1
    randseg = (randseg * 10) + (office% MOD 10)
END IF
RandPart$ = randzero + LTRIM$(STR$(randseg))
END FUNCTION

FUNCTION SumPart$ (oem%)
DIM digitseq(7) AS INTEGER
DIM i AS INTEGER
DIM seqsum AS INTEGER
DIM seqzero AS STRING
IF oem% > 0 THEN
    oem% = 2
    
ELSE oem% = 1
END IF
seqsum = 0
digitseq(1) = 0
FOR i = oem% TO 6
    digitseq(i) = CINT(RND * 9)
    seqsum = seqsum + digitseq(i)
NEXT
digitseq(7) = 7 - (seqsum MOD 7)
seqzero = ""
FOR i = 1 TO 7
    seqzero = seqzero + LTRIM$(STR$(digitseq(i)))
NEXT
SumPart$ = seqzero
END FUNCTION

