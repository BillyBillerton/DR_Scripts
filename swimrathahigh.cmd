SWIM:
expcheck:
match returnback mind lock
match returnback dazed
match returnback bewilder
match upside Overall state of
put skill Athletics
matchwait

upside:
match upside ...wait
match downside The current drags you down
match goindown Some light filters down from above
match upside but can't seem to make much headway
match upside but can't get anywhere
match upside You slap at the water
match downside A rock protrudes
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue to hum
match orient You can't go
put down
matchwait

goindown:
match goindown ...wait
match downside The current drags you down
match downside You swim down
match goindown but can't seem to make much headway
match goindown but can't get anywhere
match goindown You slap at the water
match downside A rock protrudes
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue
match orient You can't go
put down
matchwait

downside:
match downside ...wait
match goinup You swim up
match downside but can't seem to make much headway
match downside but can't get anywhere
match downside You slap at the water
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue
match orient You can't go
put up
matchwait

goinup:
match goinup ...wait
match downside The current drags you down
match expcheck You swim up
match expcheck The water is cold and salty
match goinup but can't seem to make much headway
match goinup but can't get anywhere
match goinup You slap at the water
match downside A rock protrudes
match orient You can't do that while lying down
match orient You can't swim in that direction
match orient You continue to
match orient You can't go
put up
matchwait

orient:
match upside The water is cold and salty, and deep
match goinup Some light filters down from above
match downside A rock protrudes
put stand
put look
matchwait

returnback:
pause 2
put stand
match returnback Stand up first
match go.guild.1 You swim back up
match go.guild.1 You are already
match returnback ...wait
match returnback type ahead
matchwait

go.guild.1:
put climb edge
match go.back [Eluned's Temple, Devotion Pool]
match returnback stand up first
match orient What were you
matchwait

go.back:
put go arch
pause
put climb step

pause