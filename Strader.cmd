
#################################################
#Genie Pro Ilithi Trader Script version 1.0
#Written by Dasffion
#Largely based off of script written by Xclbur5150@Yahoo.com
#and hacked...Revised, by Stephinrothdr@yahoo.com
#Last revision 06/26/07
#################################################
#Tips and Tricks#
#################
# #
# You can start the script from the clerk in any outpost, or the Shard bank
#
# Currently, the script is only set up to work on Mech stones, Juggling, and appraising.  to add or change the skills that
#  	the script will work on, find the skills1,skills2,skills3 and skills4 section of the script...it should be pretty self explanitory.
#
# Script will keep track of:	How many contracts you have delivered to each outpost
#       			Current destination
# 				Bank balance when script started, and current Bank balance
#				Total profit since script was started
#
# If you have ideas for more features, email them to strangeguard@earthlink.com, or post on the Genie
# forums and I will see them.
#
# Don't forget to edit the variables below to suit your needs.
#
#################################################
# Initialization #
##################

init:
if %character = Lotsamoney then gosub TraderInit
goto ScriptInit

TraderInit:
#***User defined variables***
setvariable container backpack
setvariable app1 first gem pouch
setvariable app2 trous
setvariable app3 barrel
setvariable app4 jerkin
setvariable app5 backpack
setvariable app6 vam
setvariable mechstone waermodi
setvariable jugglies peb
return

ScriptInit:
########################################
#Script defined variables...dont touch!#
########################################
put #statusbar panel0
put #statusbar panel1
put #statusbar panel2
put #statusbar panel3 %timestamp, %datestamp
setvariable return no
if "%1" = return then setvariable return yes
setvariable location null
setvariable destination null
setvariable Total 0
setvariable ToShard 0
setvariable ToSteel 0
setvariable ToFayrin 0
setvariable ToDarkling 0
setvariable dues 0
setvariable payments 0
setvariable profit 0
setvariable firstrun yes
setvariable finishup off
setvariable OpeningBalance 0
setvariable deadcontract 0
Action setvariable finishup on when finishup
setvariable follow no
Action setvariable follow no when You pass on the order to wait to your driver
Action setvariable follow yes when You pass on the order to follow to your driver
Action instant setvariable caravan $1 when who makes sure your (.*) caravan does your bidding
Action setvariable location Shard when Brickwell Tower, Dispatch
Action setvariable location Steel when Steelclaw Clan, Trader Outpost
Action setvariable location Fayrin when Marachek's Oak, Trader Outpost
Action setvariable location Darkling when Darkling Wood, Trader Outpost
Action setvariable destination $1 when The guild office at (Shard|Steel|Darkling|Fayrin)
Action setvariable To_Shard yes when for Shard
Action setvariable To_Steel yes when for Steel Claw Clan
Action setvariable To_Dark yes when for Darkling Woods
Action setvariable To_Fayrin yes when for Fayrin
Action setvariable From_Shard yes when from Shard
Action setvariable From_Steel yes when from Steel
Action setvariable From_Darkling yes when from Darkling
Action setvariable From_Fayrin yes when from Fayrin
Action put \tget feed;give cara when These animals will need to be fed soon;\tstow feed
Action put stand;ret when prone
Action put stand;ret when kneeling
action setvariable balance $1 when it looks like your current balance is (.*) (Kronars|Lirum|Dokoras)
Action math dues add $1 when for a total of (\d+)\.
Action math dues add $1 when total fee for transportation additions is (\d+) copper
Action math dues add $1 when All right, that's a (\d+) Dokoras fee
Action math payments add $1 when handing you your payment of (\d+) Dokoras
Action instant goto exit when \[You're in death's grasp
Action instant goto exit when \[You're dying
Action instant goto exit when You feel yourself falling
Action instant goto exit when You feel like you're dying
Action instant goto exit when \[You're near death
Action instant goto exit when You're unconscious
Action instant goto exit WHEN DEAD>
Action instant goto exit when \[You're in very bad shape
Action instant goto exit when \[You're in extremely bad shape
Action instant goto exit when \[You're smashed up
Action instant goto exit when \[You're terribly wounded
Action goto leave when \[You're very beat up
Action goto leave when \[You're extremely beat up
Action goto leave when \[You're badly hurt
Action goto leave when \[You're in bad shape
Action goto ReturnCaravan when Perhaps you should check with one of the stables to locate it.
goto start

Start:
if "%return" = yes then shift
if_1 goto %1
start1:
gosub put look
gosub ContractMenu
pause
if %location = Shard then gosub bankrun
if %location = Shard then goto CheckContracts
if %location = Fayrin then goto CheckContracts
if %location = Darkling then goto CheckContracts
if %location = Steel then goto CheckContracts
if %location != (Shard|Fayrin|Darkling|Steel|null) then goto %location

start2:
matchre start2 \.\.\.wait|Sorry, you may only
matchre start3 You pass on the order to lead to your driver
matchre start4 We are currently not located on or near the caravan route
put tell cara to lead to crossing
matchwait

Null:
Start4:
echo
echo ************************************************************************
echo You are lost, Start this script at a clerk, or inside the Shard bank
echo ************************************************************************
echo
put quit
put #pausescript

CheckContracts:
if "%location" = Shard then gosub returncheck
gosub put pay clerk
pause
Matchre CheckContracts \.\.\.wait|Type ahead
Matchre PayClerk what were you referring to
Matchre GiveToClerk you get a
Matchre DropContract You are already holding that
put get my %location Contract
matchwait

returncheck:
if %finishup = on then goto end
if %return != yes then return
echo
echo **************************************************
echo You have returned to the Shard.  Exiting script
echo **************************************************
echo
exit

GiveToClerk:
matchre GiveToClerk \.\.\.wait|type ahead|Don't be silly
matchre DropContract He smiles up at you and hands the contract back|A shipment clerk ignores your offer|What have you done with the goods|We needed this days ago
matchre AddContracts handing you your payment of
put give %location contract to clerk
matchwait

AddContracts:
math To%location add 1
math Total add 1
goto CheckContracts

DropContract:
gosub put drop contract
goto CheckContracts

PayClerk:
gosub put pay clerk
goto GetNewContract

GetNewContract:
if %finishup = on then goto travel
if %location = Shard then gosub move east
if %location = Shard then gosub move go e door
if "%lhand" != Empty then gosub put stow left
if "%rhand" != Empty then gosub put stow right
matchre GetNewContract \.\.\.wait|type ahead
matchre GotNewContract The minister plucks a contract from the hands of a passing clerk and hands it to you
matchre OutstandingContract You still have another contract we issued for you that needs to be completed
put ask minister for new cont
matchwait

OutstandingContract:
if %location = Shard then gosub move out
if %location = Shard then gosub move west
goto checkoutstandingcontracts

OutstandingContract1:
gosub put rent Caravan
goto DoneContract

CheckOutstandingContracts:
setvariable needtovalidate no
Action setvariable needtovalidate yes when This contract has yet to be presented to the %location
counter set 7

CheckOutstandingContracts1:
if %c = 7 then setvariable ContractNumber seventh
if %c = 6 then setvariable ContractNumber sixth
if %c = 5 then setvariable ContractNumber fifth
if %c = 4 then setvariable ContractNumber fourth
if %c = 3 then setvariable ContractNumber third
if %c = 2 then setvariable ContractNumber second
if %c = 1 then setvariable ContractNumber first
if %c = 0 then goto OutstandingContract1
goto CheckOutstandingContracts2

CheckOutstandingContracts2:
gosub put read my %ContractNumber contract
pause
if %needtovalidate = yes then goto CheckOutstandingContracts3
counter subtract 1
goto CheckOutstandingContracts1

CheckOutstandingContracts3:
gosub put get my %ContractNumber contract
goto ValidateContract

GotNewContract:
if %location = Shard then gosub move out
if %location = Shard then gosub move west
gosub put rent Caravan
goto ValidateContract

ValidateContract:
matchre ValidateContract \.\.\.wait|Type ahead|Don't be silly
matchre DoneContract Good luck!" the clerk says, grinning, and goes back to work
put give my cont to clerk
matchwait

DoneContract:
gosub put pay clerk
gosub contractmenu
if "%rhand" != Empty then gosub put put my contract in my %container
goto Travel
#################################################
# Travel Checks #
#################
Travel:
setvariable destination null
counter set 7
goto TravelCheck

TravelCheck:
if %c = 7 then setvariable ContractNumber seventh
if %c = 6 then setvariable ContractNumber sixth
if %c = 5 then setvariable ContractNumber fifth
if %c = 4 then setvariable ContractNumber fourth
if %c = 3 then setvariable ContractNumber third
if %c = 2 then setvariable ContractNumber second
if %c = 1 then setvariable ContractNumber first
if %c = 0 then setvariable destination Crossing
if %c = 0 then goto TravelMove
goto read

Read:
counter subtract 1
matchre Read \.\.\.wait|type ahead
matchre TravelMove in the form of the local currency
matchre DropCont The contract is now useless since it has expired\.
matchre TravelCheck I could not find|what were you referring to
put read my %ContractNumber Contract in my %container
matchwait

DropCont:
counter add 1
math deadcontract add 1
gosub put get my %ContractNumber Contract
gosub put drop my Contract
goto Read

TravelMove:
pause .5
goto %location

Shard:
if %destination = Darkling then goto ShardToDarkling
if %destination = Steel then goto ShardToSteel
if %destination = Fayrin then goto ShardToSteel
goto ShardtoFayrin

Fayrin:
if %destination = Steel then goto FayrinToSteel
if %destination = Shard then goto FayrinToSteel
if %destination = Darkling then goto FayrinToSteel
goto FayrintoSteel

Steel:
if %destination = Fayrin then goto SteelToFayrin
if %destination = Shard then goto SteelToShard
if %destination = Darkling then goto SteelToDarkling
goto SteelToShard

Darkling:
if %destination = Shard then goto DarklingToShard
if %destination = Steel then goto DarklingToShard
if %destination = Fayrin then goto DarklingToShard
goto DarklingToShard

#################################################
# Skills #
##########

Skills1:
echo Darkling Skills section
gosub grass
gosub app
gosub chart
gosub stones
gosub juggle
goto XSkills

Skills2:
echo Shard Skills section
gosub grass
gosub app
gosub stones
gosub juggle
goto XSkills

Skills3:
echo SCC Skills section
gosub grass
gosub app
gosub chart
gosub stones
gosub juggle
goto XSkills

Skill4:
echo Fayrin Skills section
gosub grass
gosub app
gosub stones
gosub juggle
goto XSkills

App:
gosub exp app
if %locked = yes then return
if "%rhand" != "Empty" then gosub put stow right
if "%lhand" != "Empty" then gosub put stow left
if "%app1" != null then gosub put app Lotsamoney
if "%app1" != null then gosub put app my %app1
if "%app2" != null then gosub put app my %app2
if "%app3" != null then gosub put app my %app3
if "%app4" != null then gosub put app my %app4
if "%app5" != null then gosub put app my %app5
if "%app6" != null then gosub put app my %app6
return

Stones:
gosub exp mech
if %locked = yes then return
if "%rhand" != "Empty" then gosub put stow right
if "%lhand" != "Empty" then gosub put stow left
gosub put get %mechstone stone from my %container
gosub put get %mechstone stone from my %container
pause .1
gosub put remove 1 stone
pause .1
gosub put combine stone
pause .1
gosub put remove 1 stone
pause .1
gosub put combine stone
pause .1
gosub put remove 1 stone
pause .1
gosub put combine stone
pause .1
gosub put remove 1 stone
pause .1
gosub put combine stone
pause .1
gosub put remove 1 stone
pause .1
gosub put combine stone
pause .1
if "%rhand" != "Empty" then gosub put stow right
if "%lhand" != "Empty" then gosub put stow left
return

Chart:
gosub exp scholarship
gosub put get my silver chart
pause 0.5
gosub put study my chart
pause 0.5
gosub put study my chart
pause 0.5
gosub put study my chart
pause 0.5
gosub put study my chart
pause 0.5
gosub put study my chart
pause 0.5
gosub put study my chart
pause 0.5
gosub put my silver chart
return

Juggle:
gosub exp perc
if %locked = yes then return
if "%rhand" != "Empty" then gosub put stow right
if "%lhand" != "Empty" then gosub put stow left
#gosub put get my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put juggle my %jugglies
pause .1
gosub put stow my %jugglies
pause .1
return

Forage:
gosub exp fora
if %locked = yes then return
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put forage dirt careful
pause .1
gosub put drop my dirt
gosub put get my dirt
gosub put drop my dirt
gosub put get my dirt
gosub put drop my dirt
gosub put get my dirt
gosub put drop my dirt
return

Expcheck:
matchre ExpCheck \.\.\.wait|type ahead|You don't seem to be able to move to do that
matchre Sleep fluid|murky|very murky|dense|very dense|thick|very thick|frozen|very frozen|stagnant|very stagnant
matchre Return mind: clear
put exp
matchwait

Sleep:
echo
echo **************************
echo Pausing to clear your mind
echo **************************
echo
pause 10
goto Expcheck

Xskills:
Action remove %caravan caravan stops and waits, having arrived at its destination|reaches the dock|pulls into|pulls up|!resume
if "%lhand" indexof "stone" then goto XSkills1
if "%rhand" indexof "stone" then goto XSkills1
goto Xskills2

Xskills1:
pause .5
gosub put combine stone
pause .5
gosub put stow stone
goto XSkills2

Xskills2:
goto %return

#################################################
# Gosubs #
##########

stow:
setvariable label stow
if "%rhand" = "%LONGBOW" then gosub put wear %LONGBOW
if "%lhand" = "%LONGBOW" then gosub put wear %LONGBOW
if "%rhand" = "lumpy bundle" then gosub Stowbundle
if "%lhand" = "lumpy bundle" then gosub Stowbundle
if "%rhand" != "Empty" then gosub Stow1 Right
if "%lhand" != "Empty" then gosub Stow1 Left
return

Stow1:
setvariable stow $0
Stow2:
matchre Stow2 \.\.\.wait|type ahead|You don't seem to be able to move to do that|You can't do that while entangled in a web
matchre StowStopPlay You should stop playing before you do that|You are a bit too busy performing to do that
matchre return you put|What were you wanting to STOW|you should be holding that first|stow help
matchre Wear_bow is too long to fit|You should unload the
put stow %stow
matchwait

StowStopPlay:
gosub put stop play
goto Stow2

Stowbundle:
pause .5
matchre StowBundle \.\.\.wait|type ahead|You don't seem to be able to move to do that|entangled in a web
matchre return you sling|you drape|you put a|you attach a|already wearing that|Wear what?
matchre pull_bundle You can't wear
put wear my bund
matchwait

Pull_bundle:
put pull bund
pause .5
goto Stowbundle

Wear_bow:
gosub put unl
gosub put put arrows in my %Container
gosub put wear my longbow
goto stow

########################

Hide:
if hidden then return
if %huntspot = westie then gosub put ret
gosub put hide
if not hidden then gosub put ret
if not hidden then goto hide
return

Inv:
setvariable To_Shard no
setvariable To_Steel no
setvariable To_Darkling no
setvariable To_Fayrin no
setvariable From_Shard no
setvariable From_Steel no
setvariable From_Darkling no
setvariable From_Fayrin no
gosub put look caravan
pause 2
return

put:
setvariable put $0
put1:
pause .5
matchre put1 \.\.\.wait|type ahead|You are still stunned
matchre return You|Please rephrase that|The clerk|FACE HELP|Exp Help|STOW HELP|Roundtime|Obvious paths|Obvious exits|Encumbrance:|Skin what|It's not dead yet|Remove what?|already been tied off|with what?|The contract
put %put
matchwait

return:
return

########################
# EXP #
#######
Exp:
Action setvariable locked yes when % mind lock|% dazed
Action setvariable locked bewildered when % bewilder
Action setvariable locked perplexed when % perplex
setvariable Exp $0
setvariable locked no
Exp1:
matchre Exp1 \.\.\.wait|type ahead|You don't seem to be able to move to do that
matchre ExpSleep mind: (fluid|murky|very murky|dense|very dense|thick|very thick|frozen|very frozen|stagnant|very stagnant)
matchre ExpAwake mind: clear
put exp %Exp
matchwait

ExpSleep:
if %mindstate = awake then gosub put sleep
echo
echo ******************
echo Clearing your mind
echo ******************
echo
return

ExpAwake:
if %mindstate = sleep then gosub put awake
return

Move:
setvariable move $0
Move1:
pause .1
if prone then put stand
if sitting then put stand
if kneeling then put stand
matchre Move1 \.\.\.wait|type ahead
matchre ret You are engaged|While in combat|You'll have better luck if you first retreat
matchre lost Please rephrase that|What were you referring to|You can't go there
matchre MoveStow Free up your hands first
Matchre Move1 unharmed but feel foolish.
Matchre Move1 Struck by vertigo
Matchre Move1 but the steepness
Matchre Move1 but reach a point where your footing
match DIG feeble attempt
match DIG falling short of your goal.
match DIG holds you tightly, preventing
match Move2 You easily navigate
match Move2 is difficult, but manageable...
match MOve2 succeeding only with effort
matchre Move2 Obvious exits|Obvious paths:
put %move
matchwait

DIG:
if prone then put stand
if sitting then put stand
if kneeling then put stand
match Move1 You manage to dig enough
match DIG You struggle to dig
match Move1 You will have to kneel
match DIG ...wait
put dig
matchwait


Move2:
if %follow = no then return
else waitforre following you|!resume
return

MoveStow:
if "%rhand" != "Empty" then gosub put stow right
if "%lhand" != "Empty" then gosub put stow left
goto Move1

ret:
pause .5
matchre ret \.\.\.wait|type ahead|You don't seem to be able to move to do that|back to pole range|roundtime|entangled in a web|You try to back away
matchre move1 you sneak back out|You retreat from combat|farther away|But you aren't in combat|far away as you can get|You stop advancing
put retreat
matchwait

dance:
if prone then gosub put dance
if prone then goto dance
if sitting then gosub put dance
if sitting then goto dance
if kneeling then gosub put dance
if kneeling then goto dance
return

stand:
if prone then gosub put stand
if prone then goto stand
if sitting then gosub put stand
if sitting then goto stand
if kneeling then gosub put stand
if kneeling then goto stand
return

Lost:
echo You are lost!
put exit
exit

Grass:
if "%lhand" != Empty then gosub put stow left
if "%rhand" != Empty then gosub put stow right
matchre Grass \.\.\.wait|type ahead
matchre ForaRet You cannot forage while in combat
matchre GiveCara grass
matchre return roundtime|The room is too cluttered to find anything here
put forage grass
matchwait

ForaRet:
gosub put ret
gosub put ret
goto Grass

GiveCara:
matchre GiveCara \.\.\.wait|type ahead
matchre Grass They seem less hungry now
matchre return They seem full now|The animals are well fed now|What shall I feed them
put give cara
matchwait

ContractMenu:
setvariable profit 0
math profit add %payments
math profit subtract %dues
put #echo Log1  _______________________________
put #echo Log1 |COMPLETED CONTRACTS____________|
put #echo Log1 |
put #echo Log1 |To Shard----------: %ToShard
put #echo Log1 |To Steel Claw Clan: %ToSteel
put #echo Log1 |To Darkling Woods-: %ToDark
put #echo Log1 |To Fayrin's Rest--: %ToFayrin
put #echo Log1 |
put #echo Log1 |For a total of %Total Contracts
put #echo Log1 |and %profit Dokoars in Profit
put #echo Log1 |_______________________________
return

Exit:
Combat:
echo
echo You are in combat, exiting game to prevent you from dying
echo
gosub put exit
exit

statusbar:
put #statusbar Panel0 Current Balance = %balance *** Starting Balance = %OpeningBalance
put #statusbar Panel1 $0
return
#################################################
# Traveling #
#############

ReturnCaravan:
if %location != Crossing then echo YOU NEED TO BE IN THE CROSSING GUILD TO GET YOUR CARAVAN BACK.
gosub move out
gosub move n
gosub move n
gosub move n
gosub move n
gosub move n
gosub move n
gosub move w
gosub move go stable
gosub put return caravan
gosub put tell cara to follow
gosub move out
gosub move e
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub put tell cara to wait
gosub move go door
goto CheckContracts

DarklingToShard:
gosub statusbar ***Darkling Woods to Shard***
ECHO -> TRAVEL - Darkling Woods to Shard
gosub skills1
put tell cara to follow
put tell cara to go fast
gosub move n
gosub move n
gosub move ne
gosub move ne
gosub move e
gosub move e
gosub move ne
gosub move n
gosub move n
gosub move nw
gosub move ne
gosub move ne
gosub move ne
gosub move n
gosub move n
gosub move ne
gosub move ne
gosub move n
gosub move n
gosub move ne
gosub move go path
gosub move nw
gosub move n
gosub move n
gosub move nw
gosub move n
gosub move n
gosub move n
gosub move n
gosub move nw
gosub move n
gosub move n
gosub move n
gosub move n
gosub move n
gosub move ne
gosub move nw
gosub move n
gosub move n
gosub move n
gosub move n
gosub move n
gosub move n
gosub move n
gosub move go gate
gosub move e
gosub move e
gosub move ne
gosub move ne
gosub move ne
gosub move n
gosub move n
gosub move nw
gosub move nw
gosub move go tow
gosub put tell cara to wait
gosub move go door
goto CheckContracts

ShardToDarkling:
gosub bankrun
gosub statusbar ***Shard To Darkling Woods***
ECHO -> TRAVEL - SHARD TO DARKLING WOODS
gosub skills2
gosub move go door
gosub put tell cara to wait
gosub put tell cara to go fast
gosub move out
gosub move se
gosub move se
gosub move s
gosub move s
gosub move sw
gosub move sw
gosub move sw
gosub move w
gosub move go gate
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub move se
gosub move sw
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub move se
gosub move s
gosub move s
gosub move s
gosub move s
gosub move se
gosub move s
gosub move s
gosub move se
gosub move go path
gosub move sw
gosub move s
gosub move s
gosub move s
gosub move sw
gosub move s
gosub move s
gosub move s
gosub move sw
gosub move sw
gosub move sw
gosub move se
gosub move s
gosub move s
gosub move sw
gosub move w
gosub move w
gosub move sw
gosub move sw
gosub move s
gosub move s
gosub grass
gosub move go build
goto CheckContracts

ShardToSteel:
gosub bankrun
gosub skills2
gosub statusbar ***Shard To SCC***
ECHO -> TRAVEL - SHARD TO SCC
gosub move go door
gosub put tell cara to follow
gosub put tell cara to go fast
gosub move out
gosub move nw
gosub move west
gosub move west
gosub move go gate
gosub move north
gosub move north
gosub move north
gosub move north
gosub move north
gosub grass
gosub move ne
gosub move nw
gosub move nw
gosub move n
gosub move n
gosub move e
gosub move e
gosub move ne
gosub move e
gosub move e
gosub move n
gosub move go path
gosub move w
gosub move go bridge
gosub move e
gosub move n
gosub put tell cara to wait
gosub move go ent
goto CheckContracts

SteelToShard:
gosub skills3
gosub statusbar ***SCC To Shard***
echo -> TRAVEL - SCC TO SHARD
gosub move out
gosub put tell caravan to follow
gosub put tell caravan to go faster
gosub move s
gosub move w
gosub move go bridge
gosub move e
gosub move go path
gosub move s
gosub move w
gosub move w
gosub move sw
gosub move w
gosub move w
gosub move s
gosub move s
gosub move se
gosub move se
gosub grass
gosub move sw
gosub move s
gosub move s
gosub move s
gosub move s
gosub move s
gosub move go gate
gosub move e
gosub move e
gosub move se
gosub move go tow
gosub put tell cara to wait
gosub move go door
goto CheckContracts

SteelToFayrin:
gosub Skills3
gosub statusbar ***SCC to Fayrin***
ECHO -> TRAVEL - SCC TO FAYRIN
gosub move out
gosub put tell cara to follow
gosub put tell cara to go fast
gosub move s
gosub move w
gosub move go bridge
gosub move e
gosub move go path
gosub move ne
gosub move ne
gosub move ne
gosub move n
gosub move ne
gosub move ne
gosub move n
gosub move n
gosub grass
gosub move ne
gosub move ne
gosub move n
gosub move n
gosub move ne
gosub move n
gosub move ne
gosub move n
gosub move ne
gosub move e
gosub move ne
gosub move se
gosub put tell cara to wait
gosub move go out
goto CheckContracts

FayrinToSteel:
gosub statusbar ***Fayrin To SCC***
ECHO -> TRAVEL - FAYRIN TO SCC
gosub move out
gosub put tell cara to follow
gosub put tell cara to go fast
gosub move nw
gosub move sw
gosub move w
gosub move sw
gosub move s
gosub move sw
gosub move s
gosub move sw
gosub move s
gosub move s
gosub move sw
gosub move sw
gosub move s
gosub move s
gosub move sw
gosub move sw
gosub move s
gosub move sw
gosub move sw
gosub move sw
gosub move go path
gosub move w
gosub move go bridge
gosub move e
gosub move n
gosub put tell cara to wait
gosub move go ent
goto CheckContracts

BankRun:
gosub move go door
gosub put tell cara to wait
gosub move out
gosub move go bridge
gosub move sw
gosub move sw
gosub move sw
gosub move sw
gosub move sw
gosub move sw
gosub move w
gosub move sw
gosub move s
gosub move w
gosub move w
gosub move go bridge
gosub move w
gosub move w
gosub move go bank
gosub move n
goto Bank1

Bank1:
gosub put deposit all
gosub put withdrawl 90 sil
gosub put balance
pause
goto BankReturn

BankReturn:
if %firstrun = yes then setvariable OpeningBalance %balance
gosub statusbar
setvariable firstrun no
gosub move s
gosub move out
gosub move e
gosub move go bridge
gosub move e
gosub move e
gosub move e
gosub move n
gosub move ne
gosub move e
gosub move ne
gosub move ne
gosub move ne
gosub move ne
gosub move ne
gosub move ne
gosub move go bridge
gosub move go tower
gosub put tell cara to wait
gosub move go door
return

Bank2:
gosub move n
goto Bank1a
Bank3:
gosub move w
gosub move n
goto Bank1a

Bank1a:
gosub put deposit all
gosub put withdrawl 90 sil
gosub put balance
pause
if %firstrun = yes then setvariable OpeningBalance %balance
gosub statusbar
setvariable firstrun no
gosub move s
gosub move out
gosub move e
gosub move go bridge
gosub move e
gosub move e
gosub move e
gosub move n
gosub move ne
gosub move e
gosub move ne
gosub move ne
gosub move ne
gosub move ne
gosub move ne
gosub move ne
gosub move go bridge
gosub put tell cara to wait
gosub move go tower
gosub move go door
goto CheckContracts

nomoney:
Echo *
echo *
echo *
echo * ************* NO MONEY!!!! Start Beggin!!!!*********
echo *
echo *
echo *
exit

BrookEast:
gosub put east
gosub LookCara
gosub put east
gosub LookCara
return

Brookwest:
gosub put west
gosub LookCara
gosub put west
gosub LookCara
return

LookCara:
pause 3
matchre LookCara \.\.\.wait|type ahead|caravan belonging to
matchre return You tell the driver to give you an inventory report|following you|!resume
put look cara
matchwait

end:
put return caravan
echo **************************************************
echo You have returned to Shard.  Exiting script
echo **************************************************
put #echo  _______________________________
put #echo |COMPLETED CONTRACTS____________|
put #echo |
put #echo |To Shard----------: %ToShard
put #echo |To Steel Claw Clan: %ToSteel
put #echo |To Fayrin's Rest--: %ToFayrin
put #echo |To Darkling Woods-: %ToDarkling
put #echo |
put #echo |For a total of %Total Contracts
put #echo |and %profit Dokoras in Profit
put #echo |_______________________________
echo **************************************************
echo You have returned to Shard.  Exiting script
echo **************************************************