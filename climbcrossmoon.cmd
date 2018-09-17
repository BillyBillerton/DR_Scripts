goto START

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
#put skill climb
#matchwait
	if $Climbing.LearningRate < 30 then goto start
	else exit

NEXTSKILL:
put echo climbing done
exit

START:


CLIMB:
pause
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
move go stair
move south

CLIMB-001:
gosub stamina
match PASS-001 [Outside East Wall, Footpath]
match FAIL-001 You must be standing
match FAIL-001 steepness is intimidating
match FAIL-001 can't seem to find purchase
match FAIL-001 find it hard going.
match FAIL-001 your footing is questionable
match FAIL-001 slip after a few feet
match FAIL-001 A wave of dizziness hits you
match FAIL-001 Struck by vertigo
put climb break
matchwait

PASS-001:
pause
move NoRTH
move gO gate
move WeST
move gO stair
move SoUTH
goto CLIMB-002

FAIL-001:
pause
goto CLIMB-002

CLIMB-002:
gosub stamina
match PASS-002 [Northeast Wilds, Outside Northeast Gate]
match FAIL-002 You must be standing
match FAIL-002 steepness is intimidating
match FAIL-002 can't seem to find purchase
match FAIL-002 find it hard going.
match FAIL-002 your footing is questionable
match FAIL-002 slip after a few feet
match FAIL-002 A wave of dizziness hits you
match FAIL-002 Struck by vertigo
put ClIMB embrasure
matchwait

FAIL-002:
pause
move n
move go stair
move e
move go gate
PASS-002:
move gO footpath
goto CLIMB-01

CLIMB-01:
gosub stamina
SAVE FAIL-01
match PASS-01 [Crossing, East Wall Battlements]
match FAIL-01 You must be standing
match FAIL-01 steepness is intimidating
match FAIL-01 can't seem to find purchase
match FAIL-01 find it hard going.
match FAIL-01 your footing is questionable
match FALLEN slip after a few feet
match FAIL-01 A wave of dizziness hits you
match FAIL-01 Struck by vertigo
put ClIMB wall
matchwait

PASS-01:
pause
move n
move gO stair
move e
move gO gate
move gO footpath
goto FAIL-01

FAIL-01:
pause
move s
move down
move s
move s
move sw
goto CLIMB-02

CLIMB-02:
gosub stamina
SAVE FAIL-02
match PASS-02 [Crossing, East Wall Battlements]
match FAIL-02 You must be standing
match FAIL-02 steepness is intimidating
match FAIL-02 can't seem to find purchase
match FAIL-02 find it hard going.
match FAIL-02 your footing is questionable
match FALLEN slip after a few feet
match FAIL-02 A wave of dizziness hits you
match FAIL-02 Struck by vertigo
put ClIMB wall
matchwait

PASS-02:
pause
move s
move gO stair
move gO gate
move gO bush
move n
goto CLIMB-03

FAIL-02:
pause
move s
goto CLIMB-03

CLIMB-03:
gosub stamina
SAVE FAIL-03
match PASS-03 [Crossing, East Wall Battlements]
match FAIL-03 You must be standing
match FAIL-03 steepness is intimidating
match FAIL-03 can't seem to find purchase
match FAIL-03 find it hard going.
match FAIL-03 your footing is questionable
match FALLEN slip after a few feet
match FAIL-03 A wave of dizziness hits you
match FAIL-03 Struck by vertigo
put ClIMB wall
matchwait

PASS-03:
pause
move s
move gO stair
move gO gate
goto CLIMB-04

FAIL-03:
pause
move s
goto CLIMB-04

CLIMB-04:
gosub stamina
SAVE FAIL-04
match PASS-04 [Crossing, East Gate Battlements]
match FAIL-04 You must be standing
match FAIL-04 steepness is intimidating
match FAIL-04 can't seem to find purchase
match FAIL-04 find it hard going.
match FAIL-04 your footing is questionable
match FALLEN slip after a few feet
match FAIL-04 A wave of dizziness hits you
match FAIL-04 Struck by vertigo
put ClIMB wall
matchwait

PASS-04:
pause
goto CLIMB-05

FAIL-04:
pause
move gO gate
move gO stair
goto CLIMB-05

CLIMB-05:
gosub stamina
SAVE FAIL-05
match PASS-05 [Eastern Tier, Outside Gate]
match FAIL-05 You must be standing
match FAIL-05 steepness is intimidating
match FAIL-05 can't seem to find purchase
match FAIL-05 find it hard going.
match FAIL-05 your footing is questionable
match FALLEN slip after a few feet
match FAIL-05 A wave of dizziness hits you
match FAIL-05 Struck by vertigo
put ClIMB embrasure
matchwait

PASS-05:
pause
move gO gate
move gO stair

FAIL-05:
pause
move n
goto CLIMB-06

CLIMB-06:
gosub stamina
SAVE FAIL-06
match PASS-06 [Outside East Wall, Footpath]
match FAIL-06 You must be standing
match FAIL-06 steepness is intimidating
match FAIL-06 can't seem to find purchase
match FAIL-06 find it hard going.
match FAIL-06 your footing is questionable
match FALLEN slip after a few feet
match FAIL-06 A wave of dizziness hits you
match FAIL-06 Struck by vertigo
put ClIMB break
matchwait

PASS-06:
pause
move s
move gO gate
move gO stair
move n
goto CLIMB-07

FAIL-06:
pause
goto CLIMB-07

CLIMB-07:
gosub stamina
SAVE FAIL-07
match PASS-07 [Outside East Wall, Footpath]
match FAIL-07 You must be standing
match FAIL-07 steepness is intimidating
match FAIL-07 can't seem to find purchase
match FAIL-07 find it hard going.
match FAIL-07 your footing is questionable
match FALLEN slip after a few feet
match FAIL-07 A wave of dizziness hits you
match FAIL-07 Struck by vertigo
put ClIMB embrasure
matchwait

PASS-07:
pause
move s
move s
move gO gate
goto TRAVEL-08

FAIL-07:
pause
move s
move gO stair
goto TRAVEL-08

TRAVEL-08:
pause
move w
move w
move w
move w
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
move gO bridge
move w
move w
move w
move w
move gO stair
move s

CLIMB-08:
gosub stamina
SAVE FAIL-08
match PASS-08 [Mycthengelde, Flatlands]
match FAIL-08 You must be standing
match FAIL-08 steepness is intimidating
match FAIL-08 can't seem to find purchase
match FAIL-08 find it hard going.
match FAIL-08 your footing is questionable
match FALLEN slip after a few feet
match FAIL-08 A wave of dizziness hits you
match FAIL-08 Struck by vertigo
put ClIMB embrasure
matchwait

PASS-08:
pause
goto CLIMB-09

FAIL-08:
pause
move n
move go stair
move go gate
move nw
goto CLIMB-09

CLIMB-09:
gosub stamina
SAVE FAIL-09
match PASS-09 [Crossing, West Wall Battlements]
match FAIL-09 You must be standing
match FAIL-09 steepness is intimidating
match FAIL-09 can't seem to find purchase
match FAIL-09 find it hard going.
match FAIL-09 your footing is questionable
match FALLEN slip after a few feet
match FAIL-09 A wave of dizziness hits you
match FAIL-09 Struck by vertigo
put ClIMB wall
matchwait

PASS-09:
pause
move n
goto CLIMB-10

FAIL-09:
pause
move se
move gO gate
move gO stair
goto CLIMB-10

CLIMB-10:
gosub stamina
SAVE FAIL-10
match PASS-10 [Mycthengelde, Flatlands]
match FAIL-10 You must be standing
match FAIL-10 steepness is intimidating
match FAIL-10 can't seem to find purchase
match FAIL-10 find it hard going.
match FAIL-10 your footing is questionable
match FALLEN slip after a few feet
match FAIL-10 A wave of dizziness hits you
match FAIL-10 Struck by vertigo
put ClIMB embrasure
matchwait

PASS-10:
pause
move gO gate
move gO stair
FAIL-10:
pause
move e
goto CLIMB-11

CLIMB-11:
gosub stamina
SAVE FAIL-11
match PASS-11 [Northwall Trail, Wooded Grove]
match FAIL-11 You must be standing
match FAIL-11 steepness is intimidating
match FAIL-11 can't seem to find purchase
match FAIL-11 find it hard going.
match FAIL-11 your footing is questionable
match FALLEN slip after a few feet
match FAIL-11 A wave of dizziness hits you
match FAIL-11 Struck by vertigo
put ClIMB break
matchwait

PASS-11:
pause
move s
move gO gate
move gO stair
move e
goto CLIMB-12

FAIL-11:
pause
goto CLIMB-12

CLIMB-12:
gosub stamina
SAVE FAIL-12
match PASS-12 [Northwall Trail, Wooded Grove]
match FAIL-12 You must be standing
match FAIL-12 steepness is intimidating
match FAIL-12 can't seem to find purchase
match FAIL-12 find it hard going.
match FAIL-12 your footing is questionable
match FALLEN slip after a few feet
match FAIL-12 A wave of dizziness hits you
match FAIL-12 Struck by vertigo
put ClIMB embrasure
matchwait

PASS-12:
pause
goto CLIMB-13

FAIL-12:
pause
move w
move gO stair
move gO gate
move gO trail
move ne
goto CLIMB-13

CLIMB-13:
gosub stamina
SAVE FAIL-13
match PASS-13 [Crossing, North Wall Battlements]
match FAIL-13 You must be standing
match FAIL-13 steepness is intimidating
match FAIL-13 can't seem to find purchase
match FAIL-13 find it hard going.
match FAIL-13 your footing is questionable
match FALLEN slip after a few feet
match FAIL-13 A wave of dizziness hits you
match FAIL-13 Struck by vertigo
put ClIMB wall
matchwait

PASS-13:
pause
move w
move gO stair
move gO gate
move gO trail
goto CLIMB-14

FAIL-13:
pause
move sw
goto CLIMB-14

CLIMB-14:
gosub stamina
SAVE FAIL-14
match PASS-14 [Crossing, North Wall Battlements]
match FAIL-14 You must be standing
match FAIL-14 steepness is intimidating
match FAIL-14 can't seem to find purchase
match FAIL-14 find it hard going.
match FAIL-14 your footing is questionable
match FALLEN slip after a few feet
match FAIL-14 A wave of dizziness hits you
match FAIL-14 Struck by vertigo
put ClIMB wall
matchwait

PASS-14:
pause
move w
move gO stair
move gO gate
goto CLIMB-15

FAIL-14:
pause
move s
goto CLIMB-15

CLIMB-15:
gosub stamina
SAVE FAIL-15
match PASS-15 [Crossing, West Gate Battlements]
match FAIL-15 You must be standing
match FAIL-15 steepness is intimidating
match FAIL-15 can't seem to find purchase
match FAIL-15 find it hard going.
match FAIL-15 your footing is questionable
match FALLEN slip after a few feet
match FAIL-15 A wave of dizziness hits you
match FAIL-15 Struck by vertigo
put ClIMB wall
matchwait

PASS-15:
pause
move gO stair
goto TRAVEL-15

FAIL-15:
pause
move gO gate
goto TRAVEL-15

TRAVEL-15:
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
pause
#put skill climb
#match climb EXP HELP
#match climbquit mind lock
#match climbquit dazed
#match climbquit bewilder
#matchwait
	if $Climbing.LearningRate < 30 then goto CLIMB
	else goto climbquit

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

stamina:
if $stamina < 100 then
{
pause 2.5
goto stamina
}
else return

climbquit:
goto NEXTSKILL