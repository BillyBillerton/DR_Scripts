var time 0
var aug_spellname gol
var augmana 11
var ward_spellname ic
var wardmana 10
var util_spellname bs	
var utilmana 12

put stow left
put stow right
pause .5

main:
if $Augmentation.LearningRate < 30 then 
{
	put prep %aug_spellname %augmana
	pause 1
	waitfor You feel fully prepared
	pause 1
	put cast
	pause 1
}

if $Warding.LearningRate < 30 then
{
	put prep %ward_spellname %wardmana
	pause 1
	waitfor You feel fully prepared
	put cast
	pause 1
}

if $Utility.LearningRate < 30 then
{
	put prep %util_spellname %utilmana
	waitfor You feel fully prepared
	pause 1
	put cast
	pause 1
}
goto main