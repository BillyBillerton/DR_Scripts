counter set 0
var attack
goto hide
execute:
if $hidden = 0 then
{
	put hide
	wait
	pause .5
}
match wait ...wait
match hide [You're
match advance You aren't close enough
put %attack
matchwait

advance:
put ad %2
waitfor You close to melee range
goto execute



wait:
pause $rt
goto execute

hide:
put hide
wait
pause .5
goto attack

attack:

if %c = 0 then %attack = %3 lunge %1
	
if %c = 1 then %attack = %3 thrust %1

if %c = 2 then %attack = %3 jab %1
counter add 1
if %c = 3 then counter set 0
goto execute