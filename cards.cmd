counter set 0
main:
put card remove %c
counter add 1
put stow card
pause .5
if %c < 150 then goto main