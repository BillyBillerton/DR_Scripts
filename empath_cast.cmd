var time 0
var aug_spellname refresh
var augmana 6
var ward_spellname ic
var wardmana 1
var util_spellname bs	
var utilmana 10

put stow left
put stow right
pause .5

main:
if $Augmentation.LearningRate < 30 then 
{
	put prep %aug_spellname %augmana
	pause 1
	put prep symb	
	pause 1
	put charge my cambrinth.armband 10
	wait
	pause .5	
	put charge my cambrint.armband 5
	wait
	pause .5
	put invoke my cambrint.armband
	waitfor You feel fully prepared
	pause 1
	put cast
	pause 1
}

if $Warding.LearningRate < 30 then
{
	put prep %ward_spellname %wardmana
	pause 1
	put prep symb
	pause 1
	put charge my cambrint.armband 5
	wait
	pause 1
	put charge my cambrint.armband 1
	wait
	pause 1
	put invoke my cambrint.armband
	pause 1
	waitfor You feel fully prepared
	put cast
	pause 1
}

if $Utility.LearningRate < 30 then
{
	put prep %util_spellname %utilmana
	pause 1
	put prep symb
	pause 1
	put charge my cambrint.armband 5
	wait
	pause 1
	put charge my cambrint.armband 1
	wait
	pause 1
	put invoke my cambrint.armband
	waitfor You feel fully prepared
	pause 1
	put cast
	pause 1
}
goto main