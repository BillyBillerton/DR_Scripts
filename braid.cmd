if_1 then goto start
else 
{
	echo
	echo No place to put ropes!
	echo	
	exit
}


start:
put stow right
put stow left
pause .5
put rem my glove
put stow my glove
forage:
	match braid You manage
	put forage grass
	matchwait 2
	goto forage

braid:
	echo $Mechanical_Lore.LearningRate
	if $Mechanical_Lore.LearningRate > 32 then
	goto end
	else
	match forage You need
	match braid You begin
	match braid isn't usable for anything yet.
	match braid bundling rope
	match braid ...wait 
	match new lead rope
	match braid Roundtime
	put braid my grass
	matchwait
new:
	put pull my grass
	wait
	pause 2
	put put my rope in %1
	put feed my rope to %1
	pause 1
	goto forage

end:
	put put my grass in %1
	echo DONE
	if_2 then put quit
	exit