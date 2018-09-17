put stow left
pause .5
put stow right
pause .5
put get my rod
pause .5
stir:
	match shovel the fire dies down
	match turn clumps of molten metal
	match bellows unable to consume
	match done ingot mold
	match stir Roundtime
	put stir cruc with my rod
	matchwait

shovel:
	put get my shovel
	pause .5
	put push fuel with my shovel
	wait
	pause .5
	put stow my shovel
	pause .5
	goto stir

bellows:
	put get my bellows
	pause .5
	put push bellows
	wait
	pause .5
	put stow my bellows
	pause .5
	goto stir

turn:
	put turn cruc
	wait
	pause .5
	goto stir

done:
	put stow rod
	echo DONE
