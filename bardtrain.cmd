var augspell fae
var wardspell gj
var utilspell eye
var augready 1
var wardready 0
var utilready 0
counter set 0
var climbit slab
var hitit  0
var currentspell  %augspell
var song  battle
var style  quiet
if_1
	{
		if %1 = 'aug' then goto main
		if %1 = 'ward' then
			{
				%augready = 0
				%wardready = 1
				%currentspell = %wardspell
			}
		if %1 = 'util' then 
			{
				%augready = 0
				%utilready = 1
				%currentspell = %utilspell
			}
	}
main:
echo in main
gosub adjust
echo out of adjjust
if %c = 1 then
	{	
		echo 1
		put prep %currentspell 6
		waitfor You feel fully prepared
		put cast
	}
gosub power
echo 2
%hitit = 0
if $Arcana.LearningRate < 28 then 
	{
		gosub arcana
	}
echo 3
gosub power
if $Athletics.LearningRate < 28 then 
	{
		gosub climbprac
	}
gosub power
if $Outdoorsmanship.LearningRate < 28 then 
	{
		gosub collect
	}
gosub power
gosub scholarship
gosub power
if %hitit = 0 && %cycspells = 0 then goto perform
goto main

arcana:
	put stow left
	pause .5
	put stow right
	pause .5
	put rem my cam armb
	pause .5
	put charge my cam armb 30
	wait
	pause .5
	put charge my cam armb 15
	wait
	pause .5
	put invoke my armb
	wait
	pause .5
	put wear my cam armb
%hitit = 1
return

climbprac:
	put climb prac %climbit
	waitfor well-earned rest
	%hitit = 1
	return

collect:
	put collect rock
	wait
	pause .5
	put kick rock
	pause .5
	put collect rock
	wait
	pause .5
	put kick rock
%hitit = 1
return

scholarship:
	put get my compen
	put open my compen
	pause .5
	put study my compen
	wait
	pause .5
	put turn my compen
	wait
	pause .5
	put study my compen
	wait
	pause .5
	put turn my compen
	put stow my compen
	return


adjust:
	if $Augmentation.LearningRate > 30 then
		{
			put release cyc
			%currentspell = %wardspell
		}
	if $Warding.LearningRate > 30 then
		{	
			put release cyc
			%currentspell = %utilspell
		}
	if $Utility.LearningRate > 30 then
		{
			put release cyc
			%currentspell = %augspell
		}
	if (($Utility.Learningrate < 30) || ($Augmentation.Learningrate < 30) || ($Warding.Learningrate < 30) && (%c = 0)) then
		{	
			counter set 1
		}
	else
		{
			counter set 0
		}
	echo adjust end
return

power:
if $Attunement.LearningRate < 30 then
	{
		put power
		wait
		pause .5
	}	
	return

perform:
	put stow right
	wait
	pause .5
	put stow left
	wait
	pause .5
	put prep care 5
	waitfor You feel fully prepared
	put cast
	pause .5
	put get my flute
	wait
	pause .5

perform2:
	put play %song %style
	put ass my flute
	wait 35
	put ass my flute
	wait 35
	put ass my flute
	waitfor You finish playing
	put power
	wait
	pause .5
	if $Performing.LearningRate < 30 then goto perform2
	goto performdone

performdone:
	put stop play
	pause .5
	put stow my flute
	pause .5
	put goto main