put #class arrive off
put #class rp on
put #class combat off
send demeanor reserved
waitforre ^You adopt a reserved demeanor
put avoid !drag
waitforre ^You're now avoiding
put avoid !hold
waitforre ^You're now avoiding
put avoid !join
waitforre ^You're now avoiding

to:
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
move go path
move west
move west
move northwest
move west
move west
move northwest
move west
move west
move southwest
move west
move west
move northwest
move northwest
move west
move west
move northwest
move west
move west
move go shallow brook

swim:
send swim north
pause
send swim northeast
pause
send swim northwest
pause
send swim southwest
pause
send swim southeast
pause
send swim south
pause
send swim west
pause
send swim east
pause

skill.check:
if $Swimming.LearningRate > 33 then
goto back
else
goto swim

back:
send echo
send echo YOU ARE MIND LOCKED IN SWIMMING. NOW RETURNING TO CROSSING'S WESTERN GATE.
send echo

move swim east
move east
move east
move southeast
move east
move east
move southeast
move southeast
move east
move east
move northeast
move east
move east
move southeast
move east
move east
move southeast
move east
move east
move go well-worn path

put #class arrive on
put avoid drag
waitforre ^You're now allowing
put avoid hold
waitforre ^You're now allowing
put avoid join
waitforre ^You're now allowing
put .collectbraid