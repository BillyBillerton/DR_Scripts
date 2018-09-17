#if_1 then goto start
#else 
#{
#	echo
#	echo No place to put ropes!
#	echo	
#	exit
#}


start:
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
	match new lead rope
	put braid my grass
	matchwait
new:
	put pull my grass
	wait
	pause .5
	put put my rope in bucket
	pause 1
#	put feed my rope to %1
	goto forage

end:
	put put my grass in bucket
	move go gate
	move w
	move w
	move s
	move s
	move w
	move w
	move s
	move w
	move w
	move s
	move s
	move s
	put .climbcross