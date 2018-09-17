var dayconst sun
var nightconst magpie
var time 0
var aug_spellname aus
var ward_spellname psy
IF_1 var ward_spellname col


put stow left
put stow right
pause .5
put get my compen
pause .5
counter set 0
main:
if $bleeding = 1 then
	{
		put tend my tail
		wait
		pause .5
	}
if $mana < 15 then goto observe
put prep %aug_spellname 15
pause .5
put charge my armb 10
wait
pause .5
put charge my armb 10
wait
pause .5
put charge my armb 7
wait
pause .5
put invoke my armb
waitfor You feel fully prepared
pause 1
put cast
pause .5
put prep %ward_spellname 15
pause .5
put charge my armb 10
wait
pause .5
put charge my armb 10
wait
pause .5
put charge my armb 7
wait
pause .5
put invoke my armb
waitfor You feel fully prepared
pause 1
IF_1 put cast %1
else put cast
pause .5
counter add 1
if %c = 5 then goto observe
goto main


observe:
if $Astrology.LearningRate > 32 then goto main
put prep pg
wait 5
put cast

matchre day dawn|morning|mid-morning|late morning|noon|afternoon|mid-afternoon|dusk|midday
matchre night evening|mid-evening|midnight|night|almost dawn|approaching sunrise|sunset
put time
matchwait

day:
var time 1
put observe %dayconst in sky
wait
pause .5
goto predict

night:
var time 0
put observe %nightconst
wait
pause .5
goto predict

predict:
#put get my prism
#pause .5
#put turn my prism
#wait
#pause .5

#put turn my prism
#wait
#pause .5
matchre predictdo .*complete.*
matchre analyze Roundtime
put predict state all
matchwait
pause .5

predictdo:
put get my prism
pause .5
put kneel
pause .5
if %time = 0 then var align defense
if %time = 1 then var align offense
put align %align
wait
pause .5
put raise my prism
#put predict future self 
#put roll my bone at sulli
wait
pause .5
put align survival
wait
pause .5
put raise my prism
wait

put stow my prism
pause .5
put stand
pause 1

analyze:
gosub tend
put predict analyze
wait
pause .5
counter set 0
put perc planets
wait
pause .5
put study my compen
wait
pause .5
put study my compen
wait
pause 1
put turn my compen
goto perc

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

goto main

tend:
	if $bleeding = 1 then
	{
		put tend my tail
		wait
		pause .5
	}
	return