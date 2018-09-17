put stow left
put stow right
pause .5
put rem my cam.ring
pause .5
counter set 0
main:
if $Arcana.LearningRate > 30 then goto nextskill
if $mana < 15 then gosub waitscript
put prep ease 5
put charge my cam.ring 1
wait
pause .5
put charge my cam.ring 1
wait
pause .5
#put charge my cam.ring 1
#wait
#pause .5
put focus my cam.ring
wait
pause .5
put cast
counter add 1
if %c = 3 then goto power
if %c = 2 then goto collect
if %c = 1 then goto hunt
goto main

compen:
put perform cut
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
goto collect


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
return

power:
put power
wait
pause .5
counter set 0
goto main

hunt:
put hunt
wait
pause 1
goto main

nextskill:
put wear my cam.ring
move s
move s
move go gate
move u
move u
move w
move s
move s
move se
move sw
move s
move s
move se
move se
move s
move sw
move sw
move s
move s
move s
put .braid1