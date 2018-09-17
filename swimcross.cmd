goto MINDCHECK

WAIT:
pause 60
MINDCHECK:
match SKILLCHECK clear
match WAIT EXP HELP
put mind
matchwait

SKILLCHECK:
#match NEXTSKILL mind lock
#match NEXTSKILL dazed
#match NEXTSKILL bewild
#match START EXP HELP
#put skill swimming
#matchwait
	if $Swimming.LearningRate < 30 then goto START
	else goto swimquit

NEXTSKILL:
put .necrocast1
exit

START:

move north
move north
move north
move east
move east
move north
move east
move east
move north
move north
move east
move east
move go gate
move n
move n
move n
move ne
move ne
move n
move nw
move nw
move n
move n
move ne
move nw
move n
move n
move e
move d
move d
move go gate
move n
move n
move w
move s
move dive hole

swimmingstart:
counter set 0

track:
wait
pause .5
counter add 1
goto move%c

move1:
match track A flowering crabtree
match movepause ...wait
put w
matchwait

move2:
match track Tiny brown pond
match movepause ...wait
put s
matchwait

move3:
match track Creamy white water
match movepause ...wait
put e
matchwait

move4:
match swimcheck Clear water fills
match movepause ...wait
put n
matchwait

move5:
counter subtract 4
goto move%c

movepause:
pause 1
goto move%c

swimcheck:
#match swimquit dazed
#match swimquit mind lock
#match track EXP HELP
#put skill swimming
#matchwait
	if $Swimming.LearningRate < 30 then goto track
	else goto swimquit

swimquit:
SAVE swimquit
match movetotgn [Arthe Dale, Greensward]
match swimquit You must be standing
match swimquit steepness is intimidating
match swimquit can't seem to find purchase
match swimquit find it hard going.
match swimquit your footing is questionable
match swimquit A wave of dizziness hits you
match swimquit Struck by vertigo
match fallen slip after a few feet
put climb embankment
matchwait

movetotgn:
move n
move e
move e
put go path
goto NEXTSKILL

FALLEN:
pause
match STOOD You stand
match STOOD You are already standing
match FALLEN cannot manage to stand.
match FALLEN The weight of all your possessions
match FALLEN ...wait
put StAND
matchwait

STOOD:
goto %s