counter set 0

get:
match read You get
match done What were you
put get scroll from my scroll case
matchwait


read:
pause .5
put unroll my scroll
pause .5
put read my scroll
pause .5
put roll my scroll
pause .5
put stow my scroll
counter add 1
goto get

done:
put get scroll from my back
pause .5
put put scroll in my scroll case
pause .5
counter subtract 1
if %c > 0 then goto done
