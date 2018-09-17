if $roundtime > 0 then
{
	wait
	pause .5
}
if $righthandnoun = "blade" then
put throw %1
else if $lefthandnoun = "blade" then
{
	put swap
	put throw %1
}
else
put get blade
put throw %1 %2