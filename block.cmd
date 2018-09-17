counter set 0
put stow left
pause .5
put stow right
pause .5

start:
put forage stick
wait
pause 1

put get my ves
pause .5
put sprinkle ves on my stick
pause .5
put stow ves
pause .5
put get knife from my case
pause .5
put prep bless
pause 5
put cast my stick
pause 1

carve:
put carve my stick with my knife
wait
pause .5
if "$righthandnoun" != "block" then goto carve


finish:
counter add 1
put put my knife in my case
pause .5
put stow my block
pause .5
if_1 then if %c < %1 then goto start