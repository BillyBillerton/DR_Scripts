send time
waitforre ^It is currently
pause .5

evalmath MONTHFACTOR $month-1
evalmath DAYFACTOR %MONTHFACTOR*40
evalmath MONTHDAY $yearday-%DAYFACTOR
math MONTHDAY add 1
put #var GameDate %MONTHDAY $monthname $year

AnduSet:
if %MONTHDAY >= 1 && %MONTHDAY <= 4 then
{
put #var andu 1
put #var anduname Kertandu
}
if %MONTHDAY >= 5 && %MONTHDAY <= 8 then
{
put #var andu 2
put #var anduname Hodandu
}
if %MONTHDAY >= 9 && %MONTHDAY <= 12 then
{
put #var andu 3
put #var anduname Evandu
}
if %MONTHDAY >= 13 && %MONTHDAY <= 16 then
{
put #var andu 4
put #var anduname Truffandu
}
if %MONTHDAY >= 17 && %MONTHDAY <= 20 then
{
put #var andu 5
put #var anduname Havrandu
}
if %MONTHDAY >= 21 && %MONTHDAY <= 24 then
{
put #var andu 6
put #var anduname Elandu
}
if %MONTHDAY >= 25 && %MONTHDAY <= 28 then
{
put #var andu 7
put #var anduname Chandu
}
if %MONTHDAY >= 29 && %MONTHDAY <= 32 then
{
put #var andu 8
put #var anduname Glythandu
}
if %MONTHDAY >= 33 && %MONTHDAY <= 36 then
{
put #var andu 9
put #var anduname Faeandu
}
if %MONTHDAY >= 37 && %MONTHDAY <= 40 then
{
put #var andu 10
put #var anduname Tamsandu
}

Output:
echo
echo year:		$year ($yearname)
echo season:		$Time.season
echo month:		$month ($monthname)
echo andu/week:	$andu ($anduname)
echo day of month:	%MONTHDAY ($Time.timeOfDay)
echo day of year:	$yearday
echo
echo calendar date:	$anduname, $GameDate ($date)
echo
put #var save
put #parse GAMETIME SCRIPT DONE