put stow left
put stow right
put get my fan
start:
if $Arcana.LearningRate < 33 then
goto mid
else goto end

mid:
put tap my fan
wait
pause .5
goto start

end:
exit