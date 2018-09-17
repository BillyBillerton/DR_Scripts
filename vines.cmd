
forage:
put forage vine
wait
pause .5


braid:

	if $Mechanical_Lore.LearningRate > 32 then
	goto end
	else
	match forage You need
	match braid You begin
	match braid isn't usable for anything yet.
	match braid bundling rope
	match braid lead rope
	match braid heavy rope
	match new mistake
	put braid my vine
	matchwait

new:
wait
pause .5
put pull my vine
wait
pause .5
put put my rope in %1
pause .5
put empty left
pause .5
goto forage

end:
wait
pause .5
put empty right
put empty left
echo vines done
exit