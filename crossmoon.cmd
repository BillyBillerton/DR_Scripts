main:
if $Climbing.LearningRate < 30 then goto climb
put .movetobrook
waitfor You also see a pool filled with swirling
put .mooncast2
waitfor mooncast done
put .collect rock
waitfor collect done
put .vines
waitfor vines done
put .returntocross
waitfor Town Green North
goto main

climb:
put .climbcross2
waitfor climbing done
goto main