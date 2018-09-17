start:
move go door
move climb stair
move sw
move s
move s
move s
move e
move e
move e
move e
move e
move n
move go shop
put hide
wait
pause .5
put steal ditty bag
wait 
pause .5
put steal ditty bag
wait
pause .5
put wear bag
put put my second ditty bag in my ditty bag
pause .5
put get my pole
put put my pole in my ditty bag
pause .5
put get pole from my pack
put put pole in my ditty bag
move out
move n
move n
move n
move nw
move n
move nw
move n
move nw
move nw
move w
move w
move sw
move w
move sw
move go shop
put hide
wait
pause .5
put steal dracon crystal
wait
pause .5
put steal dracon crystal
wait
pause .5
put put crystal in my bag
pause .5
put put crystal in my bag
move out
move nw
move n
move w
move nw
move n
move n
move nw
move w
move n
move n
move w
move sw
move w
move climb fence
move ne
move climb cliff
move climb cliff
move climb wall
move e
move ne
move e
move e
move e
move se
move e
move se
move e
move e
move e
move e
move n
move go forge
put hide
wait
pause .5
put steal poignard
wait
pause .5
put steal poignard
wait
pause .5
put put poignard in my bag
put put poignard in my bag
pause .5
move out
move nw
move nw
move nw
move n
move nw
move nw
move e
move go shop
put hide
wait
pause .5
put steal sash
wait
pause .5
put steal sash
wait
pause .5
put put sash in my bag
put put sash in my bag
pause .5
move out
move w
move w
move w
move w
move w
move w
move sw
move w
move go shop
#stealing leather here
move out
move w
move nw
move n
move w
move go shop
put hide
wait
pause .5
put steal clippers
wait
pause .5
put steal clippers
wait
pause .5
put put clippers in my bag
put put clippers in my bag
move out
move w
move ne
move nw
move nw
move sw
move s
move go shop
put hide
wait
pause .5
put steal whistle
wait
pause .5
put steal whistle
wait
pause .5
put put whistle in my bag
put put whistle in my bag
pause .5
move out
move n
move ne
move se
move se
move sw
move e
move e
move s
move se
move e
move e
move ne
move e
move e
move e
move e
move sw

sewers:
put go drain
match sewers2 Obvious exits
match run You are engaged
put go open
matchwait

sewers2:
match sewers3 Obvious exits
match run2 You are engaged
put n
matchwait

sewers3:

match sewers4 Obvious exits
match run3 You are engaged
put u
matchwait

sewers4:
match sewers5 Obvious exits
match run4 You are engaged
put nw
matchwait

sewers5:
match sewers6 Obvious exits
match run5 You are engaged
put w
matchwait

sewers6:
match back Obvious exits
match run6 You are engaged
put go crev
matchwait

run:
put retr
goto sewers

run2:
put retr
goto sewers2

run3:
put retr
goto sewers3

run4:
put retr
goto sewers4

run5:
put retr
goto sewers5

run6:
put retr
goto sewers6


back:
move go grat
move sw
move go struc
put hide
wait
pause .5
put steal primer
wait
pause .5
put put primer in my bag
move out
move w
move w
move nw
move nw
move nw
move n
move go shop
put hide
wait
pause .5
put steal simple talisman
wait
pause .5
put steal simple talisman
wait
pause .5
put put my talisman in my bag
put put my talisman in my bag
pause .5
move out
move e
move ne
move ne
move ne
move se
move se
move ne
move go shop
put hide
wait
pause .5
put steal choker
wait
pause .5
put steal choker
wait
pause .5
put put choker in my bag
put put choker in my bag
pause .5
move out
move sw
move se
move e
move s
move go shop
put hide
wait
pause .5
put steal bottle
wait
pause .5
put steal bottle
wait
pause .5
move out
move n
move e
move e
move go shop
put ask chab about cellar
move go door
move go tun
move w
put .bin bottle
pause .5
put .bin bottle
pause .5
put .bin choker
pause .5
put .bin choker
pause .5
put .bin talisman
pause .5
put .bin talisman
pause .5
put .bin primer
pause .5
put .bin whistle
pause .5
put .bin whistle
pause .5
put .bin clippers
pause .5
put .bin clippers
pause .5
put .bin sash
pause .5
put .bin sash
pause .5
put .bin poignard
pause .5
put .bin poignard
pause .5
put .bin crystals
pause .5
put .bin crystals
pause .5
put .bin bag
pause .5
put .bin pole
pause .5
put .bin pole
pause .5
put rem bag
put put bag in bin
pause .5
move e
move n
move go chute
move climb lad
move go grat
move nw
move sw
move w
move go shop
put .ratha bank
echo DONE