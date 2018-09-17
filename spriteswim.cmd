matchre forward Below the shadow of
matchre back Snagged upon the large
matchre done Obvious paths:

forward:
put #goto 7
waitfor Snagged upon the large jagged rocks
wait
pause .5
put power
wait
pause .5

back:
put #goto 2
waitfor Below the shadow of the rickety buildings 
wait
pause .5
put power
wait
pause .5
if $Swimming.LearningRate < 30 then goto forward

done:
echo Wrong starting location.
exit