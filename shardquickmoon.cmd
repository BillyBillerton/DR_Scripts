
climb:
put climb prac embras
waitfor well-earned
if $Climbing.LearningRate < 20 then goto climb
else goto read1

read1:
put get my compen
put open my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put stow my compen
goto vines

vines:
move s
move climb lad
move go gate
move e
move e 
move e
move e
move e
move e
move go gap
move n
move n
move n
move go gate
move nw
move go path 
goto forage

read2:
put get my compen
put open my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put stow my compen
goto collect



forage:
put forage vine
wait
pause .5


braid:

	if $Mechanical_Lore.LearningRate > 20 then
	goto end
	else
	match forage You need
	match braid You begin
	match braid isn't usable for anything yet.
	match braid bundling rope
	match braid lead rope
	match new heavy rope
	match new mistake
	put braid my vine
	matchwait

new:
wait
pause .5
put pull my vine
wait
pause .5
put drop my rope
put drop my vine
pause .5
put stow left
pause .5
put stow right
pause .5
goto forage

end:
wait
pause .5
put stow my vine
goto read2


collect:
put collect rock
wait
pause .5
if $standing = 0 then put stand
put kick rock
if $Foraging.LearningRate < 20 then
goto collect
else
goto read3

read3:
put get my compen
put open my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put stow my compen
goto guild

guild:
move go path
move se
move go gate
move s
move s
move s
move go gap
move w
move w
move w
move w
move w
move w
move go gate
put climb lad
move n
read4:
pause .5
put get my compen
put open my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
pause .5
put study my compen
wait
pause .5
put stow my compen
goto back

back:
put stow left
put stow right
pause .5
counter set 0
cast:
if %c = 0 then put perc xibar
if %c = 1 then put perc yavash
if %c = 2 then put perc katamba
if %c = 3 then put perc transd
if %c = 4 then put perc percep
if %c = 5 then put perc psych
if %c = 6 then put perc stellar
if %c = 7 then put perc moonlight
if %c = 10 then put perc katamba
wait
pause .5
if $mana < 15 then goto climb
put prep psy 9
put charge my armb 8
wait
pause .5
put charge my armb 8
wait
pause .5
#put charge my armb 7
#wait
#pause .5
put focus my armb
wait
pause .5
put cast
counter add 1
if %c = 5 then goto observe
if %c = 10 then goto observe
if %c = 15 then goto climb
goto cast

observe:

put prep pg
wait 5
put cast

matchre day dawn|early morning|mid-morning|late morning|noon|early afternoon|mid-afternoon|late afternoon|dusk
matchre night early evening|mid-evening|late evening|midnight|night|almost dawn
put time
matchwait

day:
put observe %dayconst
wait
pause .5
goto predict

night:
put observe %nightconst
wait
pause .5
goto predict

predict:
put get my bones
pause .5
put kneel
pause .5
put align offense
wait
pause .5
put roll my bone at sulli
wait
pause .5
put align survival
wait
pause .5
put roll my bone at sulli
wait
pause .5
put stow my bone
put stand
pause .5
put predict analyze
wait
pause .5
put perc planets
wait
pause .5
goto cast
