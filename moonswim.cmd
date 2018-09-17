getthere:
move n
move n
move n
move e
move e
move n
move e
move n
move n
move e
move e
move e
move go gate
move n
move n
move n
move ne
move ne
move n
move go trail
move go tav
move go door
move go pond

main:
counter set 0

swim:
gosub swimsouth
gosub swimsouth
gosub swimsouth
gosub swimsouth
gosub swimsouth
gosub swimsouth
move n
wait
pause .5
move n
wait
pause .5
move n
wait
pause .5
move n
wait
pause .5
move n
wait
pause .5
move n
wait
pause .5
if $Swimming.LearningRate < 30 then goto swim
magic1:
counter set 0
magic:
put prep shadows 8
put charge my armb 7
wait
pause .5
put charge my armb 7
wait
pause .5
put charge my armb 7
wait
pause .5
put focus my armb
wait
pause .5 
put cast
pause .5
if $Primary_Magic.LearningRate > 30 then goto movetoforage
counter add 1
if %c = 5 then goto observe
else goto magic

observe:
put perc planets
wait
pause .5
match daytime foiled
match cloudnight Clouds obscure the sky
match success Roundtime
put observe wolf
matchwait

daytime:
match cloudday Clouds obscure the sky
match successday Roundtime
put observe sun
matchwait

cloudnight:
put prep pg 10
wait 7
put cast
goto observe

cloudday:
put prep pg 10
wait 7
put cast
goto daytime

success:
match no feeble
match no weak
match no fledgling
match yes modest
match no Roundtime
put predict state magic
matchwait

successday:
match no feeble
match no weak
match no fledgling
match yesd modest
match no Roundtime
put predict state offense
matchwait

yes:
pause 10
put predict future self magic
waitfor You see nothing else
pause .5
goto no

yesd:
pause 10
put predict future self offense
waitfor You see
pause .5
goto no

no:
pause 10
put predict anal
wait
pause .5
goto magic1

movetoforage:
put n
put n
move go brew
move go tav
move out
forage:
put collect rock
wait
pause .5
put kick rock

stunned:
if $stunned = 1 then
{
	wait 10
	goto stunned
}
put stand
goto nextforage

nextforage:
if $Foraging.LearningRate < 30 then goto forage

returntocross:

move go trail
move s
move sw
move sw
move s
move s
move s
move go gate
move w
move w
move w
move s
move s
move w
move s
move w
move w
move s
move s
move s
pause 5
put .climbcross

swimsouth:
match return moving against
match swimsouth headway
match swimsouth You work against
put south
matchwait 10
goto swimsouth

return:
return