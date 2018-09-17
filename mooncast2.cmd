var dayconst sun
var nightconst panther

put stow left
put stow right
pause .5
put get my compen
pause .5
counter set 0
main:
if $Arcana.LearningRate > 32 then goto end
if %c = 0 then put perc xibar
if %c = 2 then put perc yavash
if %c = 4 then put perc katamba
if %c = 6 then put perc transd
if %c = 8 then put perc percep
if %c = 10 then put perc psych
wait
pause .5
if $mana < 15 then goto observe
put prep psy 8
put charge my armb 9
wait
pause .5
put charge my armb 9
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

put prep pg
wait 5
put cast

matchre day dawn|morning|mid-morning|late morning|noon|afternoon|mid-afternoon|sunset|dusk
matchre night evening|mid-evening|midnight|night|almost dawn|approaching sunrise
put time
matchwait

day:
put observe %dayconst
wait
pause .5
goto predict

night:
put observe %nightconst
wait
pause .5
goto predict

predict:
put get my bones
pause .5
put kneel
pause .5
put align offense
wait
pause .5
put roll my bone at sulli
wait
pause .5
put align survival
wait
pause .5
put roll my bone at sulli
wait
pause .5
put stow my bone
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

end:
put stow my compen
put .climbprac
exit