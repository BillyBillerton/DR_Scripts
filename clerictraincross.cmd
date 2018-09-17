action tend my right leg when eval $bleeding = 1
timer start
var omtimer %t
var wardspell ghs
var utilspell res
var song battle
var style quiet
var devcount 0
main:
gosub om
put stow left
pause .5
put stow right
pause .5
var teaching 0
goto cast



cast:
if %teaching = 1 then
	{
		put stop teach
		pause .5
		put poke sulli
		pause .5
	}
if $bleeding = 1 then 
	{
		put tend my right leg
		wait
		pause .5
	}
gosub cyc
if $mana < 15 then gosub recover
pause 1
put prep bene 10
pause 1
put charge my armb 5
wait
pause .5
put charge my armb 5
wait
pause .5
put invoke my armb spell
waitfor You feel fully prepared
put cast
pause 1
counter add 1
put power
wait
pause .5
put prep bene 10
pause 1
put charge my armb 5
wait
pause .5
put charge my armb 5
wait
pause .5
put invoke my armb spell
waitfor You feel fully prepared
put cast
pause 1
counter add 1
put prep bene 10
pause 1
put charge my armb 5
wait
pause .5
put charge my armb 5
wait
pause .5
put invoke my armb spell
waitfor You feel fully prepared
put cast
pause 1
counter add 1
gosub perc
if %c = 6 then gosub compen
if $Augmentation.LearningRate > 33 then 
	{
		put release cyc
		pause .5
		put prep ghs 10
		waitfor You feel fully prepared
		put cast
		pause .5
		put power
		wait
		pause .5
		goto collect
	}
goto cast

collect:
	if $bleeding = 1 then 
	{
		put tend my right leg
		wait
		pause .5
	}
	put collect rock
	wait
	pause .5
	put kick rock
	pause .5
	if $standing = 0 then put stand
	if $Outdoorsmanship.LearningRate > 32 then goto Devotion
	goto collect



Devotion:
	gosub om
	put power
	wait
	pause .5
	put get my mat
	pause .5
	put unroll my mat
	pause .5
	put kneel
	put kiss mat
	wait
	pause .5
#	put rem my chain
#	pause .5
#	put med my chain
#	waitfor You sense that you are as pure
#	put wear chain
#	pause .5
	put stand
	pause .5
	put dance mat
	wait
	pause .5
	put dance mat
	wait
	pause .5
	put dance mat
	wait
	pause .5
	put roll mat
	pause .5
	put stow mat
	pause .5
	put pray meraud
	wait
	pause .5
	put rem badge
	pause .5
	put pray badge
	wait
	pause .5
	put wear badge
	pause 1
	pause .5

commune:
	put power
	wait
	pause .5
	if %devcount = 2 then
	{
	put forage dirt
	wait
	pause .5
	put get my ves
	pause .5
	put commune eluned
	wait 15
#	waitfor You feel fully prepared to seek

	
	put sprinkle ves on akr
	pause .5
	put commune
	pause .5
	math devcount subtract 2
	
	put stow my ves
	wait 3
	}
	math devcount add 1
#	goto powerwalk
bead:
	if $Mechanical_Lore.LearningRate > 30 then goto powerwalk
	put forage stick
	wait
	pause 1
	put get my ves
	pause 1
	put sprinkle ves on my stick
	pause 3
	put prep bless
	wait 5
	put cast my stick
	pause .5
	put stow ves
	pause .5
	put wield my car knife
	pause .5
	
carve:
	put carve my stick with my car knife
	wait
	pause .5
	if $righthandnoun = block then goto shape1
	goto carve

shape1:
	put power
	wait
	pause .5
	put sheath my car knife
	pause .5
#	put get my wolf primer
#	pause .5
#	put open my primer
#	pause .5
#	counter set 1
#study:
#	if $righthandnoun != primer then put get my wolf primer
#	if %c = 6 then goto change
#	matchre change closed!
#	matchre turn ^You have already
#	matchre turn Roundtime	
#	put study my primer
#	matchwait


#turn:
#	put turn my primer
#	counter add 1
#	goto study
change:
#	put power
#	wait
#	pause .5
#	put close my primer
#	pause .5
#	put stow my primer
#	pause .5
	goto shapeprep

shapeprep:
	put get my shaper
	pause .5
shape:	
	put shape my block to wolf
	wait
	pause .5
	if $righthandnoun = block then goto shape
	if $righthandnoun = bead then goto beaddone

beaddone:
	put put my bead on my chain
	pause .5
	put stow left
	pause .5	
	put stow right
	pause 1
#	goto play1
	
powerwalk:
#	goto play1
	if $bleeding = 1 then 
	{
		put tend my right leg
		wait
		pause .5
	}
	put power
	wait
	pause .5
	put climb stile
	pause .5
	put power
	wait
	pause .5
	put n
	wait
	pause .5
	put ne
	pause .5
	put power
	wait
	pause .5
	put ne
	pause .5
	put power
	wait
	pause .5
	put e
	pause .5
	put power
	wait
	pause .5
	put se
	pause .5
	put power
	wait
	pause .5
	put se
	pause .5
	put power
	wait
	pause .5
	put s
	pause .5
	put power
	wait
	pause .5
	put s
	pause .5
	put power
	wait
	pause .5
	put s
	pause .5
	put power
	wait
	pause .5
	put w
	pause .5
	put power
	wait
	pause .5
	put w
	pause .5
	put power
	wait
	pause .5
	put #goto 485
	wait 3
	put stow left
	pause .5
	put stow right
	pause .5
	put get my stamping stick
	pause .5
	put teach athlet to sul
	pause .5
	var teaching 1
play1:
	put power
	wait
	pause 1
	put get my stamping stick
	pause 1
	put get my cloth
	pause 1
	put clean my stamping stick with my cloth
	wait
	pause 1
	put stow my cloth
	pause 1
	goto play2


play2:
	put power
	wait
	pause .5
	gosub om
	put play %song %style
	pause .5
	put ass my stamping stick
	pause 30
	put ass my stamping stick
	pause 30
	put ass my stamping stick
	waitfor You finish playing 
	if $Performance.LearningRate < 30 then goto play2
	
play3:
	put stow my stamping stick
	pause .5

returntostart:
	if $Augmentation.LearningRate > 30 then 
		{
			if $bleeding = 1 then 
	{
		put tend my right leg
		wait
		pause .5
	}
			gosub cyc
			wait 290
			gosub perc
			gosub om
			goto returntostart
		}
	goto main



	
	
#gosubs
perc:
	put power
	wait
	pause .5
	put pray meraud
	wait
	pause .5
	return

cyc:
	if $Utility.LearningRate < 30 then 
		{
			put release cyc
			pause .5
			put prep %utilspell 7
			waitfor You feel fully prepared
			put cast
		}

	else if $Warding.LearningRate < 30 then 
		{
			put release cyc
			put prep %wardspell 10
			waitfor You feel fully prepared
			put cast
		}
	else return
	
	return

compen:
	pause .5
	put get my compen
	pause .5
	put open my compen
	pause .5
	put study my compen
	wait
	pause .5
	put study my compen
	wait
	pause .5
	put turn my compen
	pause .5
	put study my compen
	wait
	pause .5
	put study my compen
	wait
	pause .5
	put turn my compen
	pause .5
	put close my compen
	pause .5
	put stow my compen
	counter set 0
	pause .5
	return

recover:
	pause 120

ret:
	put ret
	wait
	put ret
	wait
	return

om:
	if %omtimer > %t then return
	if $mana < 20 then wait 30
	put prep om 20
	pause 1
	put charge my armb 10
	wait
	pause 1
	put charge my armb 10
	wait
	pause 1
	put charge my armb 10
	wait
	pause 1
	put invoke my armb spell
	wait
	pause 7
	put cast my orb
	wait
	pause 1
	var omtimer %t
	math omtimer add 420
	return