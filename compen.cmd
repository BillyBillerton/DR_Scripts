put stow left
pause .5
put get my compen
put open my compen
pause .5
counter set 0

read:
if $rt > 0 then wait
pause .5
match next Why
match read gradually
match next Roundtime:
match next clarity
put study my compen
matchwait

next:
put turn my compen
counter add 1
if %c < 10 then goto read
else goto done

done:
put close my compen
pause .5
put stow my compen
echo DONE