#This script created by Kraggur and edited for Genie3 by Vapes#

echo [This script brought to you by Kraggur]
echo [Start at Truffenyi's Green]

start:
counter set 0
match there receptacle
match error Obvious
put look
matchwait


there:
move w
move go path
move nw
wait
pause .5
move nw
move sw
move w
move w
move nw
move nw
move nw
move n
move w
move w
move sw
move go path
move nw
move go door
move go arch
move go pool
echo [Eluned's Temple]
pause 5

expcheck:
pause
match report mind lock
match report dazed
match report bewilder
match swim.look Overall state of
put skill Athletics
matchwait

swim.look:
match goup dark and deep
match godown gently froths
match godown The water is cold and salty
match goup bottom of the pool.
put look
matchwait

goup:
match goup ...wait
match expcheck gently froths
move up
matchwait 1
goto swim.look

godown:
match godown ...wait
match goup dark and deep
move down
matchwait 1
goto swim.look

error:
echo [Not starting at Truffenyi's Green]
goto done

report:
echo You swam "%c" laps to get to dazed/mind lock.
echo
echo [Returing to Truffenyi's Green]
pause 10

return:
put climb edge
pause
put go arch
pause
put climb step
pause
move se
move se
move ne
move e
move e
move s
move se
move se
move se
move e
move e
move ne
move se
move se
move e
waitfor Roundtime
pause
move e

done:
echo [Completed]