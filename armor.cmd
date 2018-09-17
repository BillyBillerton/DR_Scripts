
if_1
goto on
else
goto off 
on:
put get my shirt
put wear my shirt
pause .5
put get my helm
put wear my helm
pause .5
put get my glove
put wear my glove
pause .5
put get my greave
put wear my greav
pause .5
put get my mask
put wear my mask
pause .5
put get my shield
put wear my shield
echo SHIELDS UP
exit

off:
put rem my shirt
put stow my shirt
pause .5
put rem my helm
put stow my helm
pause .5
put rem my mask
put stow my mask
pause .5
put rem my glove
put stow my glove
pause .5
put rem my greav
put stow my greav
pause .5
put rem my shield
put stow my shield
echo NAKED
exit
