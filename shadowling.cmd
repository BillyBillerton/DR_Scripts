
main:

put prep shadowling
pause 3
put cast
put perc shadowling
wait
pause .5
put hide
wait
pause .5
put stalk shadowling
wait
pause .5
put unhide
put release shadowling
wait 5
pause .5
if_1 then 
{
	put collect rock
	wait
	pause 1
	put kick rock
}
goto main