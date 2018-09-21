var dayconst sun
var nightconst magpie
var time 0
var aug_spellname shadows
var augmana 15
var ward_spellname maf
var wardmana 30
var util_spellname pg
var utilmana 30
var shadowlingtimer 4500
var observetimer 300
var origami mask
var origamion yes

if_1 then var collectable %1

timer start

put stow left
put stow right
pause .5

counter set 0
goto shadowling


main:
	if %t > %shadowlingtimer then goto shadowling
	if %t > %observetimer then goto observe
	if %mana < 20 then gosub waitstate
	var timeexpected %t
	math timeexpected add 10
	pause 1

if $Augmentation.LearningRate < 30 then 
{
	put prep %aug_spellname %augmana
	pause 1
	put prep symb	
	pause 1
	put charge my armb 10
	wait
	pause .5	
	put charge my armb 5
	wait
	pause .5
	put invoke my armb
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
	put charge my armb 5
	wait
	pause 1
	put charge my armb 1
	wait
	pause 1
	put invoke my armb
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
	put charge my armb 5
	wait
	pause 1
	put charge my armb 1
	wait
	pause 1
	put invoke my armb
	waitfor You feel fully prepared
	pause 1
	put cast
	pause 1
}

	if %t < %timeexpected then goto waitlist
	goto main
	
	
observe:
	put prep pg
	wait 5
	put cast
	pause 1
	matchre day dawn|morning|mid-morning|late morning|noon|afternoon|mid-afternoon|dusk|midday
	matchre night evening|mid-evening|midnight|night|almost dawn|approaching sunrise|sunset
	put time
	matchwait
	
	day:
		var time 1
		put observe %dayconst in sky
		wait
		pause 1
		counter add 1
		if %counter = 4 then goto predict
		goto main
	
	night:
		var time 0
		put observe %nightconst
		wait
		pause 1
		counter add 1
		if %counter = 4 then goto predict
		goto main
	
	predict:
		put get my prism
		pause .5
		if %time = 0 then var align defense
		if %time = 1 then var align survival
		put align %align
		wait
		pause 1
		put raise my prism
		wait
		pause 1
		put stow my prism
		pause 1
		put predict analyze
		wait
		pause 1
		counter set 0
		var observetimer %t
		math observetimer add 300
		goto main


waitstate:
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
	pause 1
	return


shadowling:
	put prep shadowling 30
	pause 1
	put charge my armb 15
	wait
	pause 1
	put invoke my armb
	wait
	waitfor You feel fully prepared
	put release shadow
	pause 5
	put cast
	pause 1
	put invoke shadowling
	pause 1
	put prep gauge flow 30
	pause 1	
	put charge my armb 15
	wait
	pause 1
	put invoke my armb
	wait
	pause 1
	waitfor You feel fully prepared
	put cast
	pause 1
	var shadowlingtimer 4500
	math shadowlingtimer add %t
	goto main

waitlist:
	gosub waitstate
	if_1 then goto collect
	else goto origamistart

		collect:
			put collect %1
			wait
			pause 1
			put kick %1
			if $standing = 0 then put stand
			pause 1
			if Outdoorsmanship.LearningRate < 30 then goto collect

		if ("%origamion" = "no") then goto compen

		origamistart:
			if $Mechanical_Lore.LearningRate > 30 then goto compen
			match origamibegin You get a sheet
			put pull env
			matchwait 3
			goto newenv
		
		newenv:
			put rem env
			pause 1
			put poke env
			pause 1
			match wearenv You get
			put get env from my haver
			matchwait 3
			goto norigami
		wearenv:
			put wear env
			goto origamistart
		
		origamibegin:
			put get my primer
			put study my %origami instru

		fold:
			wait
			pause 1
			match origamidone You make the final
			put fold my paper
			matchwait 3
			goto fold

		origamidone:
			put exhale my %origami
			pause 1
			goto origamistart
		
		norigami:
			var origamion no


		compen:
			gosub waitstate
			var compencount 0
			put stow left
			pause 1
			put stow right
			pause 1
			put get my compen
			pause 1

		readcompen:
			match turncompen Why do you need
			match turncompen With a sudden moment
			put study compen
			matchwait 5
			goto readcompen
		
		turncompen:
			math compencount add 1
			if %compencount > 4 then 
			{
				put stow my compen
				pause 1
				goto main
			}
			put turn compen
			pause 1
			goto readcompen
			