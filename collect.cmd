put #var scriptrunning 1
collect:
put collect %1
wait
pause .5
put kick %1
if $Outdoorsmanship.LearningRate < 33 then goto collect
echo collect done
put #var scriptrunning 0
exit