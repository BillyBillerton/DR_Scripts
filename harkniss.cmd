var percsong wed
var stringsong jig
var windsong jig
var song %percsong
var percinst zill
var stringinst cittern
var windinst ocarina
var inst %percinst
var current perc
var hum battle

main1:
	echo Percussion!
	counter set 0
	if $Percussions.LearningRate > 30 then goto main2
	counter add 1
	var song %percsong
	var inst %percinst
	echo %c
	goto play1

main2:
	echo Strings!
	if $Strings.LearningRate > 30 then goto main3
	counter add 1
	var current string
	var song %stringsong
	var inst %stringinst
	echo %c
	goto play1

main3:
	echo Winds!
	if $Winds.LearningRate > 30 then goto main4
	counter add 1
	echo %c
	var current wind
	var song %windsong
	var inst %windinst
	goto play1

main4:
if %c > 0 then goto main1
put stow left
put stow right
pause .5
put get my compendium
put open my compendium
pause .5
counter set 0
put hum battle

main5:
if %c = 10 then goto main6
put study my compen
wait
pause .5
put turn my compen
counter add 1
goto main5

main6:
put stow my compen
#put #goto 2
#waitfor Sturdy oak planks stretch eastward
put #goto 85
waitfor Gentle terraces of tilled 
put #goto 124
waitfor 
put poke sulli
put chant fae

play1:
put stow left
pause .5
put stow right
pause .5
put get my %inst
pause .5
put ass my %inst
wait
pause .5
put get my cloth
put clean my %inst with my cloth
wait
pause .5
put stow my cloth

play2:
put power
wait
pause .5
echo %current
put play %song
#if %current = 'perc' then goto study
put ass my %inst
wait
pause .5
put collect rock
wait
pause .5
put kick pile
pause .5
put collect rock
wait
pause .5
put kick pile
put recall holiday sho
wait
pause .5
put recall holiday lormandu
wait
pause .5
waitfor You finish playing
if %inst = %percinst then goto main2
if %inst = %stringinst then goto main3
if %inst = %windinst then goto main4
#percxpcheck:
#if $Percussions.LearningRate < 30 then goto play2
#else goto main2
#stringxpcheck:
#if $Strings.LearningRate < 30 then goto play2
#else goto main3
#windxpcheck:
#if $Winds.LearningRate < 30 then goto play2
#else goto main4
study:
put get my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
put study my compen
wait
pause .5
put stow my compen
pause .5
return
