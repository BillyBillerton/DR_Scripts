put stow left
put stow right
pause .5
put get my %1
juggle:
put juggle my %1
wait
pause .5
put hide
if $Perception.LearningRate < 33 then
goto juggle
else exit