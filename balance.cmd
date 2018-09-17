top:
put turn grind
match push keeping it spinning fast.
match top Roundtime:
matchwait

push:
pause 1
put push grind with %1
match brush The grinding has left many nicks and burs in the metal that should be cleaned away.
match done With grinding complete, the metal now needs protection by pouring oil on it.
match top Roundtime:
matchwait

brush:
put get brush
put rub %1 with brush
match done the metal now needs protection by pouring oil on it.
match top Roundtime:
matchwait

done:
put stow brush
put get oil
put pour oil on %1
waitfor Roundtime
put stow oil
echo Done