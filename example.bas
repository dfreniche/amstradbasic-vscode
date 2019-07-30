10 ' Test comment with line number

REM Test comment

ABS(X)
AFTER delay, timer GOSUB line
AND 
ASC(X)
ATN(1)
AUTO
BIN$()
BORDER
BREAK
CALL
CAT
CHAIN
CHAIN MERGE
CHR$()
CINT(10)
CLEAR
CLG
CLOSEIN
CLOSEOUT
CLS#x
CONT
COS(x)
CREAL
DATA
DEF FN
DEFINT
DEFREAL
DEFSTR
DEG
DELETE
DI
DIM
DRAW
DRAWR
EDIT
EI
END
ENT
ENV
EOF
ERASE
ERL
ERR
ERROR
EVERY
EXP()
FIX()
FOR
FRE(0)
GOSUB
GOTO
HEX$ 
HIMEM
IF expression THEN expression ELSE expression
INK number, colour
INKEY number
INKEY$
INP port
INPUT #stream,&prompt&;variable1,variable2...
INTRS(integer, string1, string2)
INT(number)
JOY(joystick number)
KEY keynumber,string
KEY DEF
LEFT$ (src$, n)
LEN(string)
LET
LINE INPUT #stream, quotedstring, string variable
LIST numberrange, stream
LOAD filename, address
LOCATE #stream, x,y
LOG(n)
LOG10(n)
LOWER$(string)
MAX (a,b,c,d,e)
MEMORY &address
MERGE filename
MID$ (string, start, number)
MIN a,b,c,d,e,f etc
MOD
MODE number
MOVE x,y
MOVER x,y
NEW
NEXT variable
ON integer expression GOSUB list of line numbers
ON integer expression GOTO list of line numbers
ON BREAK GOSUB line
ON BREAK STOP
ON ERROR GOTO line
ON SQ (channel) GOSUB line
OPENIN "filename"
OPENOUT "filename"
OR
ORIGIN x,y
OUT &port,integer
PAPER
PEEK &addr
PEN
PI
PLOT x,y,colour
PLOTR
POKE &addr, value
POS(#stream)
PRINT #screen, string
PRINT SPC
PRINT TAB
PRINT USING
RAD
RANDOMIZE
READ
RELEASE sound channel
REM
REMAIN(timer)
RENUM new line, from old line, increment
RESTORE line number
RESUME
RESUME NEXT
RETURN
RIGHT$(source, number)
RND
ROUND number, places
RUN <string>
RUN <line number>
SAVE filename, type, binary
SGN(number)
SIN(angle)
SOUND channel status, tone period, duration, volume, volume envelope, tone envelope, noise period
SPACE$(number)
SPEED INK time1, time2
SPEED KEY delay, repeat
SPEED WRITE integer
SQ channel
SQR(number)
STEP
STOP
STR$(number)
STRING$(integer, character)
SYMBOL
SYMBOL AFTER
TAG #stream
TAGOFF #stream
TAN
TEST(x,y)
TESTR(x-off, y-off)
TIME
TRON
TROFF
TO
UNT(&addr)
UPPER$(string)
VAL
VPOS(#stream)
WAIT port, mask, inversion
WHILE condtion ... expressions ... WEND
WIDTH
WINDOW #stream, left,right,top,bottom
WINDOW SWAP stream1, stream2
WRITE #stream, list
XOR
XPOS
YPOS
ZONE integer


REM Test

if x > 5 then else if 



100 ` INITIALIZE
110 DEFINT a-z
120 energy=100:attack=30:defense=15
130 energyen=90:attacken=20:defenseen=10:a$=""

200 ' PRESENTATION
210 MODE 1:PRINT"RPG GAME"
220 PRINT"PRESS ENTER TO START"
230 INPUT"",a$

300 ' PRINT GAME STATUS
310 CLS
320 PRINT"PLAYER ["energy"](a"attack")(d"defense")"
330 PRINT"ENEMY  ["energyen"](a"attacken")(d"defenseen")"

400 ' PLAYER ACTIONS
410 INPUT"ACTION";a$
420 IF a$="A" THEN energyen=energyen-attack:GOTO 500
430 IF a$="D" THEN energy=energy+defense:GOTO 500
440 GOTO 400

500 ' ENEMY ACTIONS
510 IF RND>0.25 THEN energy=energy-attacken:GOTO 300
520 energyen=energyen+defenseen:GOTO 300
