
climb:
put climb prac embras
waitfor well-earned
if $Climbing.LearningRate < 32 then goto climb
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

	if $Mechanical_Lore.LearningRate > 32 then
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
if $Foraging.LearningRate < 33 then
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
move w
put .shardin
waitfor a sturdy bin labeled "Stolen Goods"
put get my crab

juggle:
put juggle my crab
wait
pause .5
if $Perception.LearningRate < 18 then
goto juggle
else goto read4

read4:
put stow my drag
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
put .shardout
waitfor You also see a well in the shadows marked with 
move e
move climb lad
move n
goto climb

