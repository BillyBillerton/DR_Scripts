swim:
move n
wait
pause .5
move s
wait
pause .5
put s
wait
pause .5
#goto compen
goto magic

compen:
match swim You begin
match swim You continue
match nextpage Why
match swim clarity
put study compen
matchwait


nextpage:
put turn my compen
goto compen


magic:

put prep shad 7
put charge my armb 7
wait
pause .5
put charge my armb 7
wait
pause .5
put charge my armb 7
wait
pause .5
put focus my armb
wait
pause .5
put cast

goto swim