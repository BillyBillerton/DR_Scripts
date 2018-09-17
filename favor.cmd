#favorcrossing

match AtBank The hustle of crowds making their way between the secular and relig
match NotAtBank Obvious paths:
match NotAtBank Obvious exits:
put LOOK
MATCHWAIT

NotAtBank:
echo
echo
echo
echo
echo ******************************************************
echo Please start this script outside of the Crossing bank.
echo ******************************************************
echo
echo
exit

AtBank:
echo
echo
echo
echo
echo *************
echo Here we go...
echo *************
echo
echo

move nw
move n
move n
move n
move n
move n
move n
move w
move w
move w
move w
move go bridge
move w
move w
move w
move w
move go gate
move nw
move w
move sw
move sw
move s
move w
move sw
move go path
move sw
move s
move sw
move sw
move se
move up
move up
move nw
move go trail
move go arch
move go stone
goto pray

pray:
pause 1
put kneel
put pray
pause 1
put pray
pause 1
put pray
pause 1
put say %1
pause 1
put stand
pause 1
put get orb
pause 1
put go arch
pause 1
goto puzzle

puzzle:
match plant plant
match sponge sponge
match jug jug
match tinders tinders
match vase vase
match GoOn bubbling pool
match look difficult
put look
matchwait

plant:
match plant shimy
match plant loosen
match open swift breeze moves into the room
put open window
matchwait

open:
put go window
goto puzzle

sponge:
put clean altar
pause 1
put climb stair
pause 1
put go door
pause 1
goto puzzle

jug:
put fill font
pause 1
put climb stair
pause 1
put go door
pause 1
goto puzzle

tinders:
put light candle
pause 1
put climb stair
pause 1
put go door
pause 1
goto puzzle

vase:
put get flower
pause 1
put go path
pause 1
goto puzzle

look:
put look

GoOn:
move e
move go arch
pause 1
move go trail
pause 1
move se
move down
move down
move nw
move ne
move ne
move n
move ne
move go path
move ne
move e
move n
move ne
move ne
move e
move se
move go gate
move e
move e
move e
move e
move e
move e
move e
move e
move e
move s
move s
move s
move s
move s
move s
move se

