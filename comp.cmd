put #var scriptrunning 1
## If including from another script
## please set %compcon and %componce

var compcon backpack
var comp1 compendium
var comp2 $comp2
var compcalled no
var componce no

##### Compendium!
comp.start:
	var compnum 1
	#if "%humming" != "off" then put stop sing
	pause 0.5
	put open my %compcon
	pause 0.5
	put get my %comp%compnum

	pause
goto comp.humcheck

comp.humcheck:
	if "%compcalled" != "no" then goto comp.study
#	put exp
#	waitfor EXP HELP
	if "%humming" = "off" then goto comp.study
	if $Vocals.LearningRate > 10 then put stop hum
	else put hum $hum
	goto comp.study

comp.study:
	if $Scholarship.LearningRate = 12 || $First_Aid.LearningRate > 10 then goto comp.end
	pause
	matchre comp.study ^\.\.\.wait|^Sorry, you may only type|gradually absorbing more of the knowledge|gradually absorbing the knowledge
	matchre comp.check sudden moment of clarity|difficult time comprehending|but believe that you have discerned all you can from it
	if %compnum = 2 then match comp.end Why do you need to study this chart again?
	else match comp.swap Why do you need to study this chart again?
put study my comp
	matchwait

comp.check:
#	put exp
#	waitfor EXP HELP
	if $Scholarship.LearningRate = 12 || $First_Aid.LearningRate > 10 then goto comp.end
	else goto comp.turn

comp.turn:
	matchre comp.turn ^\.\.\.wait|^Sorry, you may only type
	match comp.turncheck You turn to the
put turn my comp
	matchwait
	
comp.turncheck:
	if "%componce" = "yes" then goto comp.end
	else goto comp.humcheck

comp.swap:
	pause
	put put my %comp1 in my %compcon;get my %comp2
	pause 0.5
	put open my comp
	var compnum 2
	goto comp.humcheck

comp.end:
	pause
	put #var scriptrunning 0
	put put my comp in my %compcon
	if "%compcalled" = "no" then
	{
		put glance
		exit
	}
	else return