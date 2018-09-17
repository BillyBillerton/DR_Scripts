match circuit Lake Edge
put look
matchwait
else
goto fail
put look
circuit:
move e
wait
move e
wait
move s
wait
move se
wait
move nw
wait
move w
wait
move n
wait
move w
wait
put app my pouch quick
wait
pause .5
check:
if $Swimming.LearningRate < 31 then
goto circuit
else
exit

fail:
echo done
exit
