
put rem my cam ring

main:
put charge my cam ring 1
wait
pause .5
put invoke my cam ring
wait 1
pause .5
waitfor Your cambrinth ring thrums
if $Arcana.LearningRate < 32 then goto main
put wear my cam ring