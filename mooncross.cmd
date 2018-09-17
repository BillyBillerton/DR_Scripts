var moon %1

start:
gosub movetobrook
#gosub app
gosub observation
gosub perc
counter set 0
gosub swim
#gosub app
counter set 0
put get my compen
put open my compen
gosub compen
put close my compen
pause .5
put stow my compen
gosub observation
counter set 0
gosub forage
#gosub app
gosub perc
gosub observation
counter set 0
gosub magic
gosub observation
gosub braid
put stow left
pause .5
put stow right
pause .5
gosub predict
gosub brooktogate
gosub end

#GOSUBS
predict:
put predict future self offense
waitfor You see nothing else
put predict future self lore
waitfor You see nothing else

app:
put app my bund careful
wait
pause .5
return

climbcross:



observation:
match obs2 not visible
match obs2 fruitless
match return Roundtime:
put observe sun
matchwait


return:
wait
pause .5
put predict analyze
wait
pause .5
return

obs2:
put observe heart
wait
pause .5
goto return



compen:
put study compen
wait
pause .5
put turn my compen
counter add 1
if %c = 3 then return
else goto compen

movetobrook:
move n
move n
move n
move w
move w
move w
move w
move go bridge
move w
move w
move w
move w
move go gate
move go path
move w
move w
move nw
move w
move w
move nw
move w
move w
move sw
move w
move w
move nw
move nw
move w
move w
move nw
move w
move w
move go brook
return

swim:
wait
pause .5
move n
wait
pause .5
move ne
wait
pause .5
move nw
wait
pause .5
move sw
wait
pause .5
move se
wait
pause .5
move s
wait
pause .5
counter add 1
if %c = 5 then return
else goto swim

forage:
move n
wait
pause .5
move ne
wait
pause .5
move nw
wait
pause .5
move go clearing
wait
pause .5
goto forage2

forage2:
put collect rock
wait
pause .5
put kick rock
gosub stuncheck
if $standing = 0 then put stand
counter add 1
if %c = 4 then return
else goto forage2

stuncheck:
if $stunned = 1 then
{
	wait 10
	goto stuncheck
}
else return

magic:
counter set 0
magic2:
if $mana < 15 then return
put prep shadows 7
put charge armb 7
wait
pause .5
put charge armb 7
wait
pause .5
put charge armb 7
wait
pause .5
put focus my armb
wait
pause .5
put cast
counter add 1
if %c = 4 then return
goto magic2


perc:
put perc psy
wait
pause .5
put perc transd
wait
pause .5
put perc moonlight manip
wait
pause .5
put perc percep
wait
pause .5
put perc stellar
wait
pause .5
put perc yavash
wait
pause .5
put perc xibar
wait
pause .5
put perc katamba
wait
pause .5
put perc planets
wait
pause .5
put perc self
wait
pause .5
return

brooktogate:
move go pool
move sw
move se
move s
move e
move e
move e
move se
move e
move e
move se
move se
move e
move e
move ne
move e
move e
move se
move e
move e
move se
move e
move e
move go path
move go gate
move e
move e
move e
move e
move e
move e
move e
move e
move e
move e
move e
move w
move w
move s
move s
move s
return

getgrass:
put hunt
wait
pause .5
put forage vine
wait
pause .5

braid:
	counter add 1
	if %c = 6 then return
	else
	match getgrass You need
	match braid You begin
	match braid isn't usable for anything yet.
	match braid bundling rope
	match braid lead rope
	match new mistake
	put braid my vine
	matchwait

new:
put put my vine in backpack
put put my vine in backpack
pause .5
goto getgrass

end:
put .climbcross