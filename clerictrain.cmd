var wardspell ghs
var utilspell res
var song polka
var style quiet
main:
put stow left
pause .5
put stow right
pause .5
#put rem my armb
goto cast



cast:

gosub cyc
if $mana < 15 then gosub recover
put prep bene 15
put charge my armb 8
wait
pause .5
put charge my armb 8
wait
pause .5
put invoke my armb
waitfor You feel fully prepared
put cast
pause 1
counter add 1
put prep bene 15
put charge my armb 8
wait
pause .5
put charge my armb 8
wait
pause .5
put invoke my armb
waitfor You feel fully prepared
put cast
pause 1
counter add 1
put prep bene 15
put charge my armb 8
wait
pause .5
put charge my armb 8
wait
pause .5
put invoke my armb
waitfor You feel fully prepared
put cast
pause 1
counter add 1
if %c = 3 then gosub perc
if %c = 6 then gosub perc
if %c = 6 then gosub compen
if $Augmentation.LearningRate > 30 then 
	{
#		put wear my armb
		goto collect
	}
goto cast
collect:
	put collect rock
	wait
	pause .5
	put kick rock
	pause .5
	if $standing = 0 then put stand
	if $Outdoorsmanship.LearningRate > 32 then goto athletic
	goto collect



athletics:
	put #goto 9
	waitfor Lezeni
	pause 5
	put #goto 123
	waitfor The ledge widens slightly
	pause 5
	put #goto 86
	waitfor Smooth mother-of-pearl walls
	pause 5
	put goto 296
	waitfor A black alabaster altar
Devotion:
#	put kneel
#	put kiss altar
#	wait
#	pause .5
#	put rem my chain
#	pause .5
#	put med my chain
#	waitfor You sense that you are as pure
#	put wear chain
#	pause .5
#	put stand
#	pause .5
#	put dance
#	wait
#	pause .5
#	put dance
#	wait
#	pause .5
#	put dance
#	wait
#	pause .5
#	put get water from my ves
#	pause .5
#	put clean altar with my water
#	wait 30
#	put put water in my ves
#	pause .5
	put pray meraud
	wait
	pause .5
	put rem my badge
	pause .5
	put pray badge
	wait
	pause .5
	put wear my badge
	pause .5
	put get my mat
	pause .5
	put unroll my mat
	pause .5
	put kneel mat
	pause .5
	put kiss mat
	wait
	pause .5
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
	put roll my mat
	pause .5
	put stow mat
	pause .5
#	put s
#	pause .5
#	put out
#	pause .5

commune:
	put forage dirt
	wait
	pause .5
	put get my ves
	pause .5
	put commune eluned
	wait 3
	put sprinkle ves on akroun
	pause .5
	put commune tamsine
	wait 5
	pause .5
bead:
	put forage stick
	wait
	pause .5
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
	put sheath my car knife
	pause .5
	goto shapeprep
	put get my wolf primer
	pause .5
	put open my primer
	pause .5
study:
	matchre change closed!
	matchre change ^You have already
	matchre turn Roundtime	
	put study my primer
	matchwait


turn:
	put turn my primer
	goto study
change:
	put close my primer
	pause .5
	put stow my primer
	pause .5
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
	put stow my shape
	pause .5	
	
play1:
	put release cyc
	pause .5
	put prep care 5
	wait 15
	put cast
	pause .5
	put stow left
	pause .5
	put stow right
	pause .5
	put get my stamping stick
	pause .5
play2:
	put play %song %style
	pause 15
	put ass my stamping stick
	pause 45
	put ass stamping stick
	waitfor You finish playing 
	if $Performing.LearningRate < 30 then goto play2
	
returntostart:
	put stow my stamping stick
	pause .5
	put release cyc
	pause .5
	goto cast	
	put #goto 414
	waitfor Gentle terraces
	put #goto 63
	waitfor The ground is soft underfoot
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
		}

	else if $Warding.LearningRate < 30 then 
		{
			put release cyc
			put prep %wardspell 10
		}
	else return
	waitfor You feel fully prepared
	pause .5
	put cast
	return

compen:
	put wear my armb
	pause .5
	put get my compen
	pause .5
#	put open my compen
	pause .5
	put read my compen
	wait
	pause .5
#	put turn my compen
#	pause .5
	put read my compen
	wait
	pause .5
	put turn my compen
	pause .5
#	put close my compen
	pause .5
	put stow my compen
	counter set 0
	pause .5
#	put rem my armb
	return

