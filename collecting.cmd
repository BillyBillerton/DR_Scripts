
main:
put collect rock
wait
pause .5
put kick pile
if $standing = 0 then put stand
if Foraging.LearningRate > 32 then goto end
goto main

end:
