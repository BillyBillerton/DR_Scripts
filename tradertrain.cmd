main:

#var scriptrunning 0

outfit:
put #goto 968
wait 15
if $Outfitting.LearningRate > 30 then goto transition1
match buycloth I could not find
match startoutfit You tap
put tap my cloth
matchwait

buycloth:
	put #goto 32
	wait 5
	put order 8
	pause .5
	put order 8
	pause 1
	put put cloth in my back
	pause 1
	put order 8
	pause 1
	put order 8
	pause 1
	put put cloth in my back
startoutfit:
put .mastercraft

outfitcheck:
	if $scriptrunning = 1 then
	{
		wait 300
		goto outfitcheck
	}
	echo skipped
transition1:
	put #goto 24
	wait 5

carve:
	put #goto 926
	wait 15
	if $Engineering.LearningRate > 30 then goto transition2
	match transition2 I could not find
	matchre carvetest ^You count out (\d+) pieces
	matchwait 10
	goto transition2
carvetest:
	if $1 < 10 then goto transition2
	put .mastercraft

carvecheck:
	if $scriptrunning = 1 then
	{
		wait 300
		goto carvecheck
	}

transition2:
	put #goto 1
	wait 5

climb:
	put #goto 14
	wait 10
	put .climbcross

climbcheck:
	if $scriptrunning = 1 then 
	{
		wait 300
		goto climbcheck
	}

musicalinterlude:
	put e
	pause 1
	put get my bones
	pause 1
	put get my rag
	pause 1
	put clean my bones with my rag
	wait
	pause 2
	put put my rag in my duf bag
	pause 1

play:
	put play scale off
	pause 2
	put ass my bones
	wait
	pause 1
	wait 30
	put ass my bones
	wait
	pause 1
	wait 30
	put ass my bones
	wait
	pause 1
	waitfor You finish playing
	if $Performance.LearningRate < 30 then goto play

musicrecover:
	put put my bone in my duf bag
	wait
	pause 1
	put #goto 171
	wait 15

collect:
	put .collect rock

collectcheck:
	if $scriptrunning = 1 then
	{
		wait 300
		goto collectcheck
	}
	put kick rock
	wait 1
	put kick rock
	wait 1

forage:
	put forage grass
	wait
	pause 1

braid:
	pause 1
	if $Mechanical_Lore.LearningRate < 30 then
	{
	matchre new mistake
	match forage You need to have more
	match braid Roundtime
	put braid my grass
	matchwait
	}
	goto transition4

new:
	put put grass in bucket
	put put rope in bucket
	goto forage
	
transition4:
	put put grass in bucket
	put put rope in bucket
	wait 1
	put #goto 349
	wait 1
	put #goto 14
	wait 5
	
raven:
	put .raven

ravencheck:
		if $scriptrunning = 1 then
	{
		wait 300
		goto ravencheck
	}

transition5:
	put #goto 387
	wait 10

comp:
	put .comp

compcheck:
	if $scriptrunning = 1 then
	{	
		wait 300
		goto compcheck
	}

wait:
	put wait 300
	put blink
	put wait 300
	put blink
	goto outfit