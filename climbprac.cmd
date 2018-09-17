
main:
if $Climbing.LearningRate > 30 then goto end
put climb prac slab
waitfor well-earned break
goto main

end:
put .collecting
exit