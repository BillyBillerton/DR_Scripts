start:
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
put go gate
move n
move n
move w
move s
move climb tree
move go ramp
move dive hole

swim:

move s
wait
pause .5
move w
wait
pause .5
move n
wait
pause .5
move e
wait
pause .5
if $Swimming.LearningRate < 30 then goto swim


out:
move climb embank
move n
move e
move e
move go path


prec:
put stow my fan

collect:

put collect rock
wait
pause .5
put kick rock
gosub stuncheck
if $standing = 0 then put stand
if $Foraging.LearningRate < 30 then goto collect
else goto bforage

stuncheck:
if $stunned = 1 then
{
	wait 10
	goto stuncheck
}
else return



bforage:
	match braid You manage
	put forage vine
	matchwait 2
	goto return

braid:
	echo $Mechanical_Lore.LearningRate
	if $Mechanical_Lore.LearningRate > 32 then
	goto bend
	else
	match bforage You need
	match braid You begin
	match braid isn't usable for anything yet.
	match braid bundling rope
	match bnew lead rope
	match bnew wasted effort
	put braid my vine
	matchwait
bnew:
	put pull my vine
	wait
	pause .5
	put power
	wait
	pause .5
	put drop my rope
	goto bforage

bend:
	put empty left
	put empty right



return:
move go path
move w
move s
move s
move go gate
move u
move u
move w
put quit
put .mainland crossing
waitfor [The Crossing, Hodierna Way]
move nw
move n
move n
move n
put quit