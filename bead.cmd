var beadtype %1
var container case
put stow left
pause .5
put stow right
pause .5
main:
	put get my %1 primer from my case
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
	put put my primer in my %container
	pause .5
	goto shapeprep

shapeprep:
	put get my block
	pause .5
	put get my shaper
	pause .5
shape:	
	put shape my block to %1
	wait
	pause .5
	if $righthandnoun = block then goto shape
	if $righthand = "%1 bead" then goto done

done:
	put stow my bead
	pause .5
	put put my shaper in my %container
	pause .5
	
