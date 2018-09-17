put stow left
pause .5
put stow right
pause .5
put get my hammer
pause .5
put get my tong
pause .5

start:
	match bellows stifled coals
	match shovel more fuel
	match tong soft reworking
	match tong horn of the anvil
	match tub slack tub
	match pound Roundtime:
	put pound ing on anvil with my hammer
	matchwait



pound:

	match bellows stifled coals
	match shovel more fuel
	match tong soft reworking
	match tong horn of the anvil
	match tub slack tub
	match pound Roundtime:
	put pound %1 on anvil with hamm
	matchwait


bellows:
	pause .5
	put stow my tong	
	pause .5
	put get my bellows
	pause .5
	put push my bellows
	wait
	pause .5
	put stow my bellows
	pause .5
	put get my tong
	pause .5
	goto pound
	
shovel:
	pause .5
	put stow my tong	
	pause .5
	put get my shovel
	pause .5
	put push fuel with my shovel
	wait
	pause .5
	put stow my shovel
	pause .5
	put get my tong
	pause .5
	goto pound

tong:
	put turn %1 on anv with my tong
	wait
	pause .5
	goto pound

tub:
	put push tub
	wait
	pause .5
	put stow right
	pause .5
	put stow left
	pause .5
	put get %1