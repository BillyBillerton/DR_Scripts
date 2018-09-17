var song folk
var style quiet
var instrument bones
var utilspell care
var augspell fae
var wardspell gj
counter set 1
var currentspell %augspell

climbing:
gosub adjust
gosub spell
var skill scholarship
put .climbcross
check:
	if $scriptrunning = 1 then 
	{
		wait 300
		goto check
	}
	pause 2
	goto %skill

scholarship:
	
	gosub adjust
	gosub spell
	var skill performance
	put .raven
	pause 2
	goto check

performance:
	put #goto 501
	pause 10
	put get my bones
	
playing:
	gosub adjust
	gosub spell
	put play %song %style
	pause 2
	put ass my %instrument
	wait 45
	put ass my %instrument
	waitfor You finish playing
	put stop play
	pause 2
	if $Performance.LearningRate < 30 then goto playing

	put stow my bone
	pause 2

rune:
	gosub adjust
	gosub spell
	put get my rune
	pause 2

focus:
	put focus my rune
	wait
	pause 2
	if $Arcana.LearningRate = 0 then goto outdoors
	if $Arcana.LearningRate < 32 then goto focus
	
outdoors:
	put stow my rune
	wait 2
	put #goto 260
	wait 5

collect:
	put collect rock
	wait
	pause 2
	put kick rock
	if $standing = 0 then put stand
	pause 1
	if $Outdoorsmanship.LearningRate < 32 then goto collect


getgrass:
	put forage grass
	wait
	pause 1

braid:
	match newrope mistake
	match getgrass You need to have more
	match braid Roundtime
	put braid my grass
	matchwait

newrope:
	put pull my grass
	pause 1
	put put my rope in turtle
	pause 1
	gosub adjust
	gosub spell
	if $Mechanical_Lore.LearningRate < 30 then goto getgrass


loop:
	put #goto 14
	wait 10
	goto climbing


	
adjust:
	counter set 0
	pause .5
	if ($Augmentation.LearningRate < 30 && "%currentspell" !=  "%augspell") then
		{
			put release cyc
			pause .5
			%currentspell = %augspell
			counter set 1
			return
		}
	if ($Warding.LearningRate < 30 && "%currentspell" !=  "%wardspell") then
		{	
			put release cyc
			pause .5
			%currentspell = %wardspell
			counter set 1
			return
		}
	if ($Utility.LearningRate < 30 && "%currentspell" !=  "%utilspell") then
		{
			put release cyc
			pause .5
			%currentspell = %utilspell
			counter set 1
			return
		}
	return

spell:
	if %c = 1 then
	{
		put release cyc
		wait 2
		put prep %currentspell 6
		waitfor You feel fully prepared
		put cast
	}
	if $Attunement.LearningRate < 30 then
	{
	 	put power
		wait
		pause 2
	}
	return