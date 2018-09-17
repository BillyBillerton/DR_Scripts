var dayconst sun
var nightconst magpie
var song batt

put stow left
put stow right
pause .5
put get my compen
pause .5
counter set 0
main:
if $Primary_Magic.LearningRate > 32 then goto climbprep
if %c = 0 then put perc xibar
if %c = 2 then put perc yavash
if %c = 4 then put perc katamba
if %c = 6 then put perc transd
if %c = 8 then put perc percep
if %c = 10 then put perc psych
wait
pause .5
if $mana < 15 then goto scrolls
put prep sod 9
put charge my armb 10
wait
pause .5
put charge my armb 10
wait
pause .5
#put charge my armb 7
#wait
#pause .5
put focus my armb
wait
pause .5
put cast
counter add 1
if %c = 10 then goto observe
goto main


observe:
counter set 0
if $Astrology.LearningRate > 30 then goto main
put prep pg
wait 5
put cast

matchre day dawn|morning|mid-morning|late morning|noon|afternoon|mid-afternoon|sunset|dusk|midday
matchre night evening|mid-evening|midnight|night|almost dawn|approaching sunrise
put time
matchwait

day:
put observe %dayconst
wait
pause .5
goto daypredict

night:
put observe %nightconst
wait
pause .5
goto nightpredict

daypredict:
put get my prism
pause .5
put turn my prism
wait
pause .5
put align offense
wait
pause .5
put raise my prism
wait
pause .5
put align survival
wait
pause .5
put turn my prism
wait
pause .5
put raise my prism
wait
pause .5
put stow prism
pause .5
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
put turn my compen
goto main

nightpredict:
put get my bones
pause .5
put kneel
pause .5
put align defense
wait
pause .5
put roll my bones at sulli
wait
pause .5
put align survival
wait
pause .5
put roll my bones at sulli
wait
pause .5
put stow my bones
put stand
pause .5
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
put turn my compen
goto main

climbprep:
put hum %song
put stow my compen
climbprac:

if $Climbing.LearningRate > 30 then goto collecting
put climb prac slide
waitfor well-earned break
put predict ana
goto climbprac

collecting:
put collect rock
wait
pause .5
put kick pile
if $standing = 0 then put stand
if $Foraging.LearningRate > 32 then goto swimprep
goto collecting

swimprep:
put ne
wait
pause .5
put #goto 1
waitfor Tall timbers and rough-hewn stone form a giant gate
pause .5
put #goto fishseller
waitfor The small hut smells overwhelmingly of fish
move out
move go door
move go arch
move go pool

swim:
if $Swimming.LearningRate > 32 then goto swimdone

upside:
match upside ...wait
match downside The current drags you down
match goindown Some light filters down from above
match upside but can't seem to make much headway
match upside but can't get anywhere
match upside You slap at the water
match downside A rock protrudes
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue to hum
match orient You can't go
put down
matchwait

goindown:
match goindown ...wait
match downside The current drags you down
match downside You swim down
match goindown but can't seem to make much headway
match goindown but can't get anywhere
match goindown You slap at the water
match downside A rock protrudes
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue
match orient You can't go
put down
matchwait

downside:
match downside ...wait
match goinup You swim up
match downside but can't seem to make much headway
match downside but can't get anywhere
match downside You slap at the water
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue
match orient You can't go
put up
matchwait

goinup:
match goinup ...wait
match downside The current drags you down
match swim You swim up
match swim The water is cold and salty
match goinup but can't seem to make much headway
match goinup but can't get anywhere
match goinup You slap at the water
match downside A rock protrudes
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue to
match orient You can't go
put up
matchwait

orient:
match upside The water is cold and salty, and deep
match goinup Some light filters down from above
match downside A rock protrudes
put stand
put look
matchwait


swimdone:
put climb edge
pause .5
put #goto 668
waitfor [Ratha, Outside Sur'oson Gate]
pause .5
put #goto 180
waitfor An odd series of rounded stones poke up from the dirt
pause .5
if "$righthand" != "Empty" then put stow right
if "$lefthand" != "Empty" then put stow left


origami:
var origami silverfish
var originstloc backpack
var origcalled yes
var singlefold no

origami.start:
var origexp $origexp
if_1 var origexp %1
	if $Mechanical_Lore.LearningRate > %origexp then goto origami.done
	if "$righthand" != "Empty" then 
	{
		var rightitem $righthand
		put stow right
	}
	if "$lefthand" != "Empty" then
	{
		var leftitem $lefthand
		put stow left
	}

origami.begin:
	matchre origami.begin ...wait 
	matchre origami.pull.envelope You must be either|What were you
	matchre origami.study You get a|You are already holding that
	put get my paper
	matchwait

origami.pull.envelope:
	match origami.pull.envelope ...wait 
	matchre origami.new The envelope is|You must be either|afraid that you
	match origami.study You get a
	match origami.pull.envelope Roundtime
	put pull my env
	matchwait

origami.new:
	pause 0.5
	put poke my env
	waitforre You|What were you referring

origami.get.envelope:
	match origami.get.envelope ...wait 
	match origami.new But that is
	match origami.outof.envelopes What were you
	match origami.wear.envelope You get
	put get env from my thigh bag
	matchwait

origami.outof.envelopes:
	echo **** YOU HAVE RUN OUT OF ENVELOPES, GET MORE ****
	goto origami.done

origami.wear.envelope:
	pause 0.5
	put wear my env
	waitfor You attach
	goto origami.begin

origami.study:
#	put get my primer
#	put open my primer
	match origami.study ...wait 
	match origami.start You need to be holding 
	matchre origami.check.exp You study
	matchre origami.fold You've already started
	match origami.study Roundtime
	put study my ship instru
	matchwait

origami.check.exp:
#	put expe
#	waitfor EXP HELP
	if "$righthand" = "origami primer" then put stow primer
	if $Mechanical_Lore.LearningRate > 32 then goto origami.done
	else goto origami.fold

origami.fold:
	match origami.fold ...wait
	matchre origami.start You must|what
	matchre origami.fold.complete You make the final fold|What were you
	match origami.check.exp Roundtime
	put fold my paper
	matchwait

origami.fold.complete:
	pause
	match origami.fold.complete ...wait 
	matchre origami.fold.complete.2 You drop|tattered remains|You crumple up
	if "$righthandnoun" == "mask" then put drop mask
	else put exhale $righthandnoun
	matchwait
	
	origami.fold.complete.2:
	if "%singlefold" = "yes" then return
	else goto origami.start

origami.done:
	pause
	if "$righthand" != "Empty" then put stow right
	if "$lefthand" != "Empty" then put stow left
	pause 0.5
counter set 0
put get my compen
matchre main You stop
matchre main In the name
put stop hum
matchwait
goto main
	

scrolls:
counter set 0
put stow compen
waitfor You put
scrollget:
match scrollread You get
match scrolldone What were you
put get scroll from my scroll case
matchwait


scrollread:
pause .5
put unroll my scroll
waitfor You unroll
pause .5
put read my scroll
waitfor Roundtime
pause .5
put roll my scroll
waitfor You roll
pause .5
put stow my scroll
waitfor You put
counter add 1
goto scrollget

scrolldone:
put get scroll from my book bag
waitfor You get
pause .5
put put scroll in my scroll case
waitfor You put
pause .5
counter subtract 1
if %c > 1 then goto scrolldone
else goto scrollquit

scrollquit:
put stow left
pause .5
put stow right
pause .5
put get my compen
pause .5
goto main

