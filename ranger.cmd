
mainloop:
gosub swim
gosub magic
gosub braid
gosub braid
gosub magic
gosub swim
counter set 0
#put get my fan
#gosub fan
#put stow my fan
#pause .5
gosub app
#gosub compen
gosub swim
gosub power
gosub magic
gosub forage
wait
pause .5
goto mainloop







#gosubs
compen:
put get my compen
pause .5
put open compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put study compen
wait
pause .5
put turn my compen
pause .5
put close my compen
pause .5
put stow my compen
pause .5
return

app:
put app my bundle careful
wait
pause .5
return

magic:
if $mana < 10 then return
put prep ease 5
put hide
wait
pause .5
wait 7
put cast
pause .5
goto magic


braid:
match braid2 You manage to find
match forageagain unable to find
match braid2 Roundtime:
put forage grass
matchwait



forageagain:
wait
pause .5
goto braid

braid2:
	match braid You need
	match braid2 You begin
	match braid2 isn't usable for anything yet.
	match braid2 bundling rope
	match braid2 lead rope
	match new mistake
	match new wasted effort
	put braid my grass
	matchwait
new:
	put pull my grass
	pause
	put stow my rope
	pause .5
	put stow my grass
	pause .5
	put stow my grass
	pause .5
	return

fan:
if (%c < 20) then
{
put tap my fan
wait
pause .5
counter add 1
goto fan
}
else return

power:
put power
wait
pause .5
move n
put power
wait
pause .5
move n
put power
wait
pause .5
move e
put power
wait
pause .5
move w
move s
move s
return

forage:
counter set 0
goto forage2

forage2:
if %c < 10 then
{
put collect rock
wait
pause .5
put kick rock
counter add 1
goto forage2
}
else
return

swim:
put climb tree
pause .5
put go ramp
pause .5
put dive hole
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
put climb embank
pause .5
put power
wait
pause .5
put climb tree
pause .5
put go ramp
pause .5
put dive hole
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
put climb embank
return