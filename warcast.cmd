main:
put path focus damage
pause 1
counter set 0
cast:
if $mana < 30 then goto wait
put prep sub 15
pause 1
put charge my coat 10
wait
pause 1
put charge my coat 10
wait
pause 1
put invoke my coat spell
waitfor You feel fully prepared
pause 1
put cast
pause 1
put prep ignite 13
pause 1
put charge my coat 10
wait
pause 1
put charge my coat 10
wait
pause 1
put invoke my coat
waitfor You feel fully prepared
put wield my scim
pause 1
put cast my scim
pause 1
put sheath my scim
pause 1
counter add 1
if %c = 2 then goto power
if %c = 4 then goto read
goto cast


read:
counter set 0
put get my compen
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
pause .5
goto collect


collect:
put collect rock
wait
pause .5
put kick pile
goto summon

summon:
pause .5
put summon adm
wait
pause .5
put summon adm
wait
pause .5
put stand
wait 20
put path focus damage

power:
	matchre cast Ethereal Fissure
	matchre fiss Roundtime
	put power
	matchwait


fiss:
	put prep etf 15
	pause 1
	put charge my coat 15
	wait
	pause .5
	put invoke my coat
	wait
	pause 1
	waitfor You feel fully prepared
	wait 5
	put cast aether
	pause 1
	goto cast

wait:
	put path stop
	pause 1
	put stow left
	pause 1
	put stow right
	pause 1
forage:
	put forage grass
	wait
	pause .5

braid:
	matchre forage You need to have more
	matchre pull mistake
	matchre braid Roundtime
	put braid my grass
	matchwait
	
pull:
	put pull my grass
	wait
	pause .5
	put prep c f
	pause 1
	put gesture my rope
	wait
	pause .5
	goto cast