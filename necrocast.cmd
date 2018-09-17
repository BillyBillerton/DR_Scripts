put stow left
put stow right
pause .5
counter set 0
#matchre get Remove what
#matchre main You remove
#put rem my armband
#matchwait
get:
put get my orb
pause .5
main:
if $mana < 15 then goto waitscript
put prep sw 5
put charge my orb 10
wait
pause .5
put charge my orb 10
wait
pause .5
#put charge my cam.ring 1
#wait
#pause .5
put focus my orb
wait
pause .5
put cast
counter add 1
pause .5
if %c = 1 then goto fiss
if %c = 4 then goto compen
if %c = 3 then goto power
if %c = 2 then goto collect
goto main

compen:
wait
pause .5
put get my compen
put open my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
put stow my compen
pause .5
counter set 0
goto main


collect:
put collect rock
wait
pause .5
put kick rock
gosub stuncheck
if $standing = 0 then put stand
goto main

stuncheck:
if $stunned = 1 then
{
	wait 10
	goto stuncheck
}
else return

waitscript:
pause 60
goto main

power:
put power
wait
pause .5
goto main

fiss:
pause .5
put prep fiss 10
wait 10
#put harn 8
#wait
#pause .5
#put harn 8
#wait
#pause .5
waitfor You feel fully
put cast fire
pause .5
goto main