counter set 0
main:
if $prone = 1 then put stand
move d
wait
pause .5
if $prone = 1 then put stand
move d 
wait
pause .5
if $prone = 1 then put stand
move up
wait
pause .5
if $prone = 1 then put stand
move up
wait
pause .5
gosub perc
if $Swimming.LearningRate < 33 then goto main
else exit


perc:
if %c = 0 then put perc xibar
if %c = 1 then put perc yavash
if %c = 2 then put perc katamba
if %c = 3 then put perc transd
if %c = 4 then put perc percep
if %c = 5 then put perc psych
wait
pause .5
counter add 1
if %c = 6 then counter set 0
return