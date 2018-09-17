var climbit slab
var appit pouch
var song hymn.off
var subject target

start:
put stop hum
counter set 0
put stow left
put stow right

get:
put get my lump
pause .5

main:
if $Arcana.LearningRate > 31 then goto climbprep
if %c = 0 then gosub collect
if %c = 2 then gosub power
if %c = 4 then gosub pom
if %c = 6 then gosub power
if %c = 5 then gosub compen
if %c = 7 then gosub app

if $mana < 15 then gosub climbsub
put prep ease 5
pause .5
put charge my lump 8
wait
pause .5
put charge my lump 8
wait
pause .5
put focus my lump
wait
pause .5
put cast
counter add 1
goto main

climbsub:
put climb prac %climbit
waitfor well-earned break.
wait 2
put stop climb
return

collect:
put collect rock
wait
pause .5
put kick pile
if $standing = 0 then put stand
return

compen:
pause .5
put get my compen
put study my compen
wait
pause .5
put turn my compen
put stow my compen
return

pom:
pause .5
put prep pom 14
waitfor You feel fully prepared
put cast
pause .5
if $stunned = 1 then wait 60
if $standing = 0 then put stand
return

app:
pause .5
put app my %appit careful
wait
pause .5
counter set 0
return

power:
pause .5
put power
wait
pause .5
return

climbprep:
put hum %song
pause .5
put stow my lump
climbprac:
put #goto 6
waitfor A flurry of activity surrounds
pause 1
put #goto 288
waitfor In an overgrown indentation
put teach %subject to sulli
goto collecting

collecting:
put collect rock
wait
pause .5
put kick pile
if $standing = 0 then put stand
if $Foraging.LearningRate > 32 then goto hum
goto collecting

swimprep:
put stop hum
put climb slab
pause .5
waitfor The beach deadends at the cliff's face 
put #goto 228
waitfor [Ratha, Rocky Shore]

Forward:
put sw
wait
pause .5
put sw
wait
pause .5
put w
wait
pause .5
put nw
wait
pause .5
put w
wait
pause .5
put power
wait
pause .5

back:
put e
wait
pause .5
put se
wait
pause .5
put e
wait
pause .5
put ne
wait
pause .5
put ne
wait
pause .5
put power
wait
pause .5
if $Swimming.LearningRate < 30 then goto forward
else goto comeback

comeback:
put go gap
pause .5
put #goto 26
waitfor The beach deadends
put climb slab 
goto start

hum:
put hum hymn off
wait 300
if $Arcana.LearningRate < 15 then goto start
goto hum
