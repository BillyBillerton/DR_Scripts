##### ~PELIC's Zoluren Trading Script
##### Last Update: 03 JUNE, 2012
##### View ZTradeREADME.Txt for setup info and details.
##### Inspired by the following:
#####                              SiNs Trading Script
#####                              Clevertrader v.1.19
#####                              XTrader
#####                              Malific's EZTrader
ABSOLUTE.TOP:
##### SCRIPT NAME VARIABLE.
     var Current.Script ztrade
##### VARIABLE FOR CONTAINER CONTRACTS ARE STORED IN.
     put #var ContractCase case
##### VARIABLE TO DETERMINE CONTAINER STATE.
     put #var CloseContractCase 0
##### VARIABLE TO DETERMINE IF FEEDBAG IS WORN OR NOT.
     put #var FeedbagWorn 1
##### VARIABLE TO DETERMINE IF CARAVAN IS RETURNED WHEN FINISHED.
     put #var Return.Caravan 1
##### VARIABLE TO DETERMINE IF SKILL TRAINING IS ENABLED
     put #var Train.Skills 1
     if "$Train.Skills" == "1" then gosub SKILL.SETVARIABLES
##### VARIABLE TO DETERMINE LOG WINDOW
     var Log log
##### VARIABLES FOR AMOUNTS TO WITHDRAW FROM BANK.
     var Amount1 50 silver
     var Amount2 500 BRONZE
##### UNLESS YOU KNOW WHAT YOU'RE DOING, DON'T EDIT BELOW THIS LINE
     put #script abort all except %Current.Script
     pause 0.3
     gosub BASE.ACTIONS
     gosub START.TIME.TRACKER
     pause 0.1
     gosub STATUSBAR
     pause 0.3
     echo
     echo **********************************************************************************
     echo ***** Enter STOP at any time to stop trading and deliver remaining contracts *****
     echo **********************************************************************************
     echo
     pause 0.3
     put .deathwatch
##### INITIAL LOCATION CHECK
INITIAL.LOCATION:
     matchre START.CROSSING ^\[Traders' Guild, Shipment Center\]$
     matchre START.CROSSING.OUTSIDE ^This is a transitional block of busy Commerce Avenue, leading between the mercantile, financial and dock districts to the south, and the somewhat shabby, older and less savory neighborhood to the north\.
     matchre START.CROSSING.PIT ^\[Traders' Guild, The Pit\]$
     matchre START.CROSSING.INTERPROV ^\[Traders' Guild, Foreign Trade Office\]$
     matchre START.CROSSING.RECORDS ^\[Traders' Guild, Hall of Records\]$
     matchre START.CROSSING.CORRIDOR ^\[Traders' Guild, Narrow Corridor\]$
     matchre IN.BANK ^\[First Provincial Bank, Lobby\]$
     matchre IN.BANK ^\[Provincial Bank, Money-changer\]$
     matchre IN.BANK ^\[Provincial Bank, Teller\]$
     matchre BANK.TO.TRADER ^\[The Crossing, Hodierna Way\]$
     matchre START.TIGER ^\[Tiger Clan, Trader's Guild Outpost\]$
     matchre START.TIGER.OUTSIDE ^A rickety wagon lurches past you, pulled by wide-horned oxen\.  A Gor'Tog wagoneer walking alongside the rumbling vehicle nods and tips his hat as he passes by\.  Clouds of dust eddy about the deep ruts left in the dirt roadway as the cart passes\.  A sturdy wood and stone building marks the local Trader's Guild outpost\.
     matchre START.WOLF ^\[Wolf Clan Trader Outpost\]$
     matchre START.WOLF.OUTSIDE ^A small community of wooden buildings stands in a clearing, sheltered by the dense, towering trees of Wildulf Woods\.  The timber dwellings are of primitive construction, but on closer inspection, you can see that they are clean and well-maintained\.  Several tall, stern-looking Human men, dressed in deer-skin leggings, stride purposefully down a dirt road, heading west toward a large lodge in the distance\.
     matchre START.LETH ^\[Eshar's Trading Post, Main Room\]$
     matchre START.LETH.OUTSIDE ^You arrive at a busy intersection where Oakenheart Circle merges with Merewala Court to the southeast, and flows into the central clearing to the northwest\.  At this pivotal junction sits a mean-looking shanty, in and out of which trudge seedy adventurers who appear down on their luck, as well as richly dressed traders\.  For a single establishment to cater to such an odd mix of clientele strikes you as odd\.
     matchre START.ARTHE.FOYER ^\[Swotting Hall, Public Foyer\]$
     matchre START.ARTHE ^\[Swotting Hall, Trader's Center\]$
     matchre START.ARTHE.OUTSIDE ^\[Arthe Dale, Cul-de-sac\]$
     matchre START.ARTHE.LIBRARY ^\[Swotting Hall, Study Chamber\]$
     matchre START.ARTHE.PIT ^\[Swotting Hall, Trader's Pit\]$
     matchre START.STONE ^\[Stone Clan, Trader's Guild Outpost\]$
     matchre START.STONE.BRACH ^\[Lairocott Brach, Entrance\]$
     matchre START.STONE.TRAIL ^\[Foothills, Stony Incline\]$
     matchre START.STONE.OUTSIDE ^You travel through a small dell that rises northwards into a narrow pass\.  You follow the path with your eyes until it fades from view among the steeply rising mountains\.  Southward a low hill rises, bearing the roadway along its shoulders\.  A Trader's Guild outpost sits alongside the stony trail\.
     matchre START.DIRGE ^\[Darkstone Inn, Stables\]$
     matchre START.DIRGE.OUTSIDE ^\[Dirge, Gateway Road\]$
     matchre START.DIRGE.MINISTER ^\[Darkstone Inn, Private Bar\]$
     matchre USAGE ^Obvious
     send LOOK
     matchwait
IN.BANK:
     matchre BANK.TO.TRADER ^You can't go there\.
     matchre BANK.TO.TRADER ^\[The Crossing, Hodierna Way\]$
     matchre IN.BANK ^\[First Provincial Bank, Lobby\]$
     send OUT
     matchwait
BANK.TO.TRADER:
     gosub MOVE SOUTHWEST
     gosub MOVE GO BRIDGE
     gosub MOVE NORTH
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE NORTHWEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE GO GUILD
     gosub MOVE CLIMB STAIR
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE DOWN
     gosub MOVE WEST
     goto START.CROSSING
START.CROSSING.OUTSIDE:
     gosub MOVE GO DOOR
     goto START.CROSSING
START.CROSSING.PIT:
     gosub MOVE NORTH
     goto START.CROSSING
START.CROSSING.INTERPROV:
     gosub MOVE SOUTH
     goto START.CROSSING
START.CROSSING.CORRIDOR:
     gosub MOVE WEST
START.CROSSING.RECORDS:
     gosub MOVE WEST
     goto START.CROSSING
START.TIGER.OUTSIDE:
     gosub MOVE GO OUTPOST
     goto START.TIGER
START.WOLF.OUTSIDE:
     gosub MOVE GO OUTPOST
     goto START.WOLF
START.LETH.OUTSIDE:
     gosub MOVE GO SHANTY
     goto START.LETH
START.ARTHE.OUTSIDE:
     gosub MOVE GO DOOR
START.ARTHE.FOYER:
     gosub MOVE GO DOOR
     goto START.ARTHE
START.ARTHE.PIT:
     gosub MOVE EAST
     goto START.ARTHE
START.ARTHE.LIBRARY:
     gosub MOVE SOUTH
     goto START.ARTHE
START.STONE.BRACH:
     gosub MOVE DOWN
START.STONE.TRAIL:
     gosub MOVE CLIMB TRAIL
START.STONE.OUTSIDE:
     gosub MOVE GO OUTPOST
     goto START.STONE
START.DIRGE.MINISTER:
     gosub MOVE CLIMB STAIRS
     goto START.DIRGE
START.DIRGE.OUTSIDE:
     gosub MOVE GO STABLE
     goto START.DIRGE
##### TRADING START
START.DIRGE:
     gosub RENT.CARAVAN
     goto DIRGE.SUB
START.STONE:
     gosub RENT.CARAVAN
     goto STONE.SUB
START.ARTHE:
     gosub RENT.CARAVAN
     goto ARTHE.SUB
START.TIGER:
     gosub RENT.CARAVAN
     goto TIGER.SUB
START.WOLF:
     gosub RENT.CARAVAN
     goto WOLF.SUB
START.LETH:
     gosub RENT.CARAVAN
     goto LETH.SUB
START.CROSSING:
     gosub INITIAL.BANK.RUN
     gosub RENT.CARAVAN
     goto CROSSING.SUB
##### CROSSING TRADING
CROSSING.TO.ARTHE:
     put #statusbar 2 Crossing to Arthe Dale
     gosub COMMAND.CARAVAN LEAD TO ARTHE DALE
     if "$Train.Skills" == "1" then goto TO.ARTHE.SKILLS
     # gosub HIDE
     matchre TO.ARTHE.CONTINUE ^\[Valley, Village Gate\]$
     matchwait
CROSSING.TO.STONE:
     put #statusbar 2 Crossing to Stone Clan
     gosub COMMAND.CARAVAN LEAD TO STONE CLAN
     if "$Train.Skills" == "1" then goto TO.STONE.SKILLS
     # gosub HIDE
     matchre TO.STONE.CONTINUE ^\[Lairocott Brach, Entrance\]$
     matchwait
CROSSING.TO.DIRGE:
     put #statusbar 2 Crossing to Dirge
     gosub COMMAND.CARAVAN LEAD TO DIRGE
     if "$Train.Skills" == "1" then goto TO.DIRGE.SKILLS
     # gosub HIDE
     matchre TO.DIRGE.CONTINUE ^\[North Roads Caravansary\]$
     matchwait
CROSSING.TO.TIGER:
     put #statusbar 2 Crossing to Tiger Clan
     gosub TO.CLANS.CONTINUE
     goto TO.TIGER.CONTINUE
CROSSING.TO.WOLF:
     put #statusbar 2 Crossing to Wolf Clan
     gosub TO.CLANS.CONTINUE
     goto TO.WOLF.CONTINUE
FINISH.CROSSING.TO.LETH:
CROSSING.TO.LETH:
     gosub BANK.RUN.LETH
     put #statusbar 2 Crossing to Leth Deriel
     gosub MOVE OUT
     gosub FEED.CARAVAN
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE GO PIER
     gosub FERRY
     gosub COMMAND.CARAVAN LEAD TO LETH DERIEL
     gosub FEED.CARAVAN
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.LETH.SKILLS
     # gosub HIDE
     matchre TO.LETH.CONTINUE ^\[Southern Trade Route, Outside Leth Deriel\]$
     matchwait
##### ARTHE TRADING
ARTHE.TO.CROSSING:
     put #statusbar 2 Arthe Dale to Crossing
     gosub COMMAND.CARAVAN LEAD TO CROSSING
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.CROSSING.SKILLS
     # gosub HIDE
     matchre TO.CROSSING.CONTINUE ^\[Northeast Wilds, Outside Northeast Gate\]$
     matchwait
ARTHE.TO.STONE:
     put #statusbar 2 Arthe Dale to Stone Clan
     gosub COMMAND.CARAVAN LEAD TO STONE CLAN
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.STONE.SKILLS
     # gosub HIDE
     matchre TO.STONE.CONTINUE ^\[Lairocott Brach, Entrance\]$
     matchwait
ARTHE.TO.DIRGE:
     put #statusbar 2 Arthe Dale to Dirge
     gosub COMMAND.CARAVAN LEAD TO DIRGE
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.DIRGE.SKILLS
     # gosub HIDE
     matchre TO.DIRGE.CONTINUE ^\[North Roads Caravansary\]$
     matchwait
##### STONE CLAN TRADING
STONE.TO.ARTHE:
     put #statusbar 2 Stone Clan to Arthe Dale
     gosub COMMAND.CARAVAN LEAD TO ARTHE DALE
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.ARTHE.SKILLS
     # gosub HIDE
     matchre TO.ARTHE.CONTINUE ^\[Valley, Village Gate\]$
     matchwait
STONE.TO.DIRGE:
     put #statusbar 2 Stone Clan to Dirge
     gosub COMMAND.CARAVAN LEAD TO DIRGE
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.DIRGE.SKILLS
     # gosub HIDE
     matchre TO.DIRGE.CONTINUE ^\[North Roads Caravansary\]$
     matchwait
STONE.TO.CROSSING:
     put #statusbar 2 Stone Clan to Crossing
     gosub COMMAND.CARAVAN LEAD TO CROSSING
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.CROSSING.SKILLS
     # gosub HIDE
     matchre TO.CROSSING.CONTINUE ^\[Northeast Wilds, Outside Northeast Gate\]$
     matchwait
##### DIRGE TRADING
DIRGE.TO.STONE:
     put #statusbar 2 Dirge to Stone Clan
     gosub DIRGE.TO.NTR
     gosub COMMAND.CARAVAN LEAD TO STONE CLAN
     gosub FEED.CARAVAN
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.STONE.SKILLS
     # gosub HIDE
     matchre TO.STONE.CONTINUE ^\[Lairocott Brach, Entrance\]$
     matchwait
DIRGE.TO.ARTHE:
     put #statusbar 2 Dirge to Arthe Dale
     gosub DIRGE.TO.NTR
     gosub COMMAND.CARAVAN LEAD TO ARTHE DALE
     gosub FEED.CARAVAN
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.ARTHE.SKILLS
     # gosub HIDE
     matchre TO.ARTHE.CONTINUE ^\[Valley, Village Gate\]$
     matchwait
DIRGE.TO.CROSSING:
     put #statusbar 2 Dirge to Crossing
     gosub DIRGE.TO.NTR
     gosub COMMAND.CARAVAN LEAD TO CROSSING
     gosub FEED.CARAVAN
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto TO.CROSSING.SKILLS
     # gosub HIDE
     matchre TO.CROSSING.CONTINUE ^\[Northeast Wilds, Outside Northeast Gate\]$
     matchwait
##### TIGER CLAN TRADING
TIGER.TO.WOLF:
     put #statusbar 2 Tiger Clan to Wolf Clan
     gosub TIGER.TO.GATE
     goto TO.WOLF.CONTINUE
TIGER.TO.CROSSING:
     put #statusbar 2 Tiger Clan to Crossing
     gosub TIGER.TO.GATE
     goto CLANS.TO.CROSSING.CONTINUE
##### WOLF CLAN TRADING
WOLF.TO.TIGER:
     put #statusbar 2 Wolf Clan to Tiger Clan
     gosub WOLF.TO.GATE
     goto TO.TIGER.CONTINUE
WOLF.TO.CROSSING:
     put #statusbar 2 Wolf Clan to Crossing
     gosub WOLF.TO.GATE
     goto CLANS.TO.CROSSING.CONTINUE
##### LETH DERIEL TRADING
LETH.TO.CROSSING:
     put #statusbar 2 Leth Deriel to Crossing
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE GO GATE
     gosub COMMAND.CARAVAN LEAD TO CROSSING
     gosub FEED.CARAVAN
     gosub REFILL.FEEDBAG
     if "$Train.Skills" == "1" then goto FROM.LETH.SKILLS
     # gosub HIDE
     matchre LETH.TO.CROSSING.CONTINUE To the northeast lie the outskirts of Chelsea Overlook, a small community overlooking the south bank of the Segoltha\.
     matchwait
##### SKILL TRAINING SUBROUTINES
TO.CROSSING.SKILLS:
     action var Caravan.Arrived 1 when ^\[Northeast Wilds, Outside Northeast Gate\]$
     gosub SKILLS
     action remove ^\[Northeast Wilds, Outside Northeast Gate\]$
     var Caravan.Arrived 0
     goto TO.CROSSING.CONTINUE
TO.ARTHE.SKILLS:
     action var Caravan.Arrived 1 when ^\[Valley, Village Gate\]$
     gosub SKILLS
     action remove ^\[Valley, Village Gate\]$
     var Caravan.Arrived 0
     goto TO.ARTHE.CONTINUE
TO.STONE.SKILLS:
     action var Caravan.Arrived 1 when ^\[Lairocott Brach, Entrance\]$
     gosub SKILLS
     action remove ^\[Lairocott Brach, Entrance\]$
     var Caravan.Arrived 0
     goto TO.STONE.CONTINUE
TO.DIRGE.SKILLS:
     action var Caravan.Arrived 1 when ^\[North Roads Caravansary\]$
     gosub SKILLS
     action remove ^\[North Roads Caravansary\]$
     var Caravan.Arrived 0
     goto TO.DIRGE.CONTINUE
TO.LETH.SKILLS:
     action var Caravan.Arrived 1 when ^\[Southern Trade Route, Outside Leth Deriel\]$
     gosub SKILLS
     action remove ^\[Southern Trade Route, Outside Leth Deriel\]$
     var Caravan.Arrived 0
     goto TO.LETH.CONTINUE
FROM.LETH.SKILLS:
     action var Caravan.Arrived 1 when To the northeast lie the outskirts of Chelsea Overlook, a small community overlooking the south bank of the Segoltha\.
     gosub SKILLS
     action remove To the northeast lie the outskirts of Chelsea Overlook, a small community overlooking the south bank of the Segoltha\.
     var Caravan.Arrived 0
     goto LETH.TO.CROSSING.CONTINUE
FERRY.ABOARD.SKILLS:
     action var Caravan.Arrived 1 when ^The ferry .* reaches the dock and its crew ties the ferry off\.
     gosub FERRY.SKILLS
     action remove ^The ferry .* reaches the dock and its crew ties the ferry off\.
     var Caravan.Arrived 0
     goto FERRY.DOCKED
##### "CONTINUE" SUBROUTINES
TO.CROSSING.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE GO GATE
     gosub CARAMOVE WEST
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub BANK
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE GO BRIDGE
     gosub CARAMOVE NORTH
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTH
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTH
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO DOOR
     goto CROSSING.SUB
TO.ARTHE.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE GO GATE
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE WEST
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO DOOR
     gosub MOVE GO DOOR
     goto ARTHE.SUB
TO.STONE.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE DOWN
     gosub CARAMOVE CLIMB TRAIL
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO OUTPOST
     goto STONE.SUB
TO.DIRGE.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE GO TRACK
     gosub CARAMOVE EAST
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE GO GATE
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO STABLE
     goto DIRGE.SUB
DIRGE.TO.NTR:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE GO GATE
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE EAST
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE GO ROAD
     return
WOLF.TO.GATE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE NORTH
     gosub CARAMOVE GO BUSH
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE GO BROOK
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE EAST
     return
TIGER.TO.GATE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTH
     gosub CARAMOVE GO GATE
     return
CLANS.TO.CROSSING.CONTINUE:
     gosub CARAMOVE EAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE GO PATH
     gosub CARAMOVE GO GATE
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE EAST
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO DOOR
     goto CROSSING.SUB
TO.CLANS.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE GO GATE
     gosub CARAMOVE GO PATH
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE WEST
     return
TO.TIGER.CONTINUE:
     gosub CARAMOVE GO GATE
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTHWEST
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO OUTPOST
     goto TIGER.SUB
TO.WOLF.CONTINUE:
     gosub CARAMOVE WEST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE GO BROOK
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE WEST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE WEST
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE EAST
     gosub CARAMOVE GO BUSH
     gosub CARAMOVE SOUTH
     gosub CARAMOVE SOUTHWEST
     gosub CARAMOVE SOUTH
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO OUTPOST
     goto WOLF.SUB
TO.LETH.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE GO GATE
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub CARAMOVE SOUTHEAST
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO SHANTY
     goto LETH.SUB
LETH.TO.CROSSING.CONTINUE:
     gosub COMMAND.CARAVAN FOLLOW FAST
     gosub CARAMOVE NORTH
     gosub FERRY
     gosub CARAMOVE GO SQUARE
     gosub CARAMOVE NORTHEAST
     gosub CARAMOVE NORTHWEST
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub CARAMOVE NORTH
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO DOOR
     goto CROSSING.SUB
##### SUBROUTINES TO GET CONTRACT FROM MINISTER AND PAY CLERK
GET.CONTRACT.GENERIC:
     gosub PAY CLERK
     gosub SPECULATE.FINESSE
     gosub OBTAIN.CONTRACT
     gosub GIVE.CLERK
     gosub PAY CLERK
     gosub SPECULATE.FINESSE.STOP
     gosub CONTRACT.CHECK
     gosub STATUSBAR
     gosub CONTRACT.CHECK.ECHO
     return
GET.CONTRACT.CROSSING:
     gosub PAY CLERK
     gosub MOVE EAST
     gosub SPECULATE.FINESSE
     gosub OBTAIN.CONTRACT
     gosub MOVE WEST
     gosub GIVE.CLERK
     gosub PAY CLERK
     gosub SPECULATE.FINESSE.STOP
     gosub CONTRACT.CHECK
     gosub STATUSBAR
     gosub CONTRACT.CHECK.ECHO
     return
GET.CONTRACT.DIRGE:
     gosub PAY CLERK
     gosub MOVE CLIMB STAIR
     gosub SPECULATE.FINESSE
     gosub OBTAIN.CONTRACT
     gosub MOVE CLIMB STAIR
     gosub GIVE.CLERK
     gosub PAY CLERK
     gosub SPECULATE.FINESSE.STOP
     gosub CONTRACT.CHECK
     gosub STATUSBAR
     gosub CONTRACT.CHECK.ECHO
     return
##### SUBROUTINE TO CHECK CONTRACTS
CONTRACT.CHECK:
     put #statusbar 2 Contract Check
     if contains ("$righthand" "Arthe Dale contract") then put #var ToArtheDale {#evalmath ($ToArtheDale + 1)}
     if contains ("$righthand" "Arthe Dale contract") then put #var NCounter {#evalmath ($NCounter + 1)}
     if contains ("$righthand" "Arthe Dale contract") then put #var To Arthe Dale
     if contains ("$righthand" "Stone Clan contract") then put #var ToStoneClan {#evalmath ($ToStoneClan + 1)}
     if contains ("$righthand" "Stone Clan contract") then put #var NCounter {#evalmath ($NCounter + 1)}
     if contains ("$righthand" "Stone Clan contract") then put #var To Stone Clan
     if contains ("$righthand" "Dirge contract") then put #var ToDirge {#evalmath ($ToDirge + 1)}
     if contains ("$righthand" "Dirge contract") then put #var NCounter {#evalmath ($NCounter + 1)}
     if contains ("$righthand" "Dirge contract") then put #var To Dirge
     if contains ("$righthand" "Crossing contract") then put #var ToCrossing {#evalmath ($ToCrossing + 1)}
     if contains ("$righthand" "Crossing contract") then put #var WCounter {#evalmath ($WCounter + 1)}
     if contains ("$righthand" "Crossing contract") then put #var To Crossing
     if contains ("$righthand" "Tiger Clan contract") then put #var ToTigerClan {#evalmath ($ToTigerClan + 1)}
     if contains ("$righthand" "Tiger Clan contract") then put #var WCounter {#evalmath ($WCounter + 1)}
     if contains ("$righthand" "Tiger Clan contract") then put #var To Tiger Clan
     if contains ("$righthand" "Wolf Clan contract") then put #var ToWolfClan {#evalmath ($ToWolfClan + 1)}
     if contains ("$righthand" "Wolf Clan contract") then put #var WCounter {#evalmath ($WCounter + 1)}
     if contains ("$righthand" "Wolf Clan contract") then put #var To Wolf Clan
     if contains ("$righthand" "Leth Deriel contract") then put #var ToLethDeriel {#evalmath ($ToLethDeriel + 1)}
     if contains ("$righthand" "Leth Deriel contract") then put #var LCounter {#evalmath ($LCounter + 1)}
     if contains ("$righthand" "Leth Deriel contract") then put #var To Leth Deriel
     send READ MY CONTRACT
     waitforre ^.*Trading Contract Issued by:\s+(\S+)
     if "$1" == "Dirge" then put #var FromDirge {#evalmath ($FromDirge + 1)}
     if "$1" == "Dirge" then put #var From Dirge
     if "$1" == "Stone" then put #var FromStoneClan {#evalmath ($FromStoneClan + 1)}
     if "$1" == "Stone" then put #var From Stone Clan
     if "$1" == "Arthe" then put #var FromArtheDale {#evalmath ($FromArtheDale + 1)}
     if "$1" == "Arthe" then put #var From Arthe Dale
     if "$1" == "Crossing" then put #var FromCrossing {#evalmath ($FromCrossing + 1)}
     if "$1" == "Crossing" then put #var From The Crossing
     if "$1" == "Tiger" then put #var FromTigerClan {#evalmath ($FromTigerClan + 1)}
     if "$1" == "Tiger" then put #var From Tiger Clan
     if "$1" == "Wolf" then put #var FromWolfClan {#evalmath ($FromWolfClan + 1)}
     if "$1" == "Wolf" then put #var From Wolf Clan
     if "$1" == "Leth" then put #var FromLethDeriel {#evalmath ($FromLethDeriel + 1)}
     if "$1" == "Leth" then put #var From Leth Deriel
     pause 0.6
     put #var Current.Cost {#evalmath ($Current.Wholesale.Cost + $Current.Transport.Cost + $Current.Dues)}
     put #var Current.Profit {#evalmath ($Current.Worth - $Current.Cost)}
     put #var Total.Worth {#evalmath ($Total.Worth + $Current.Worth)}
     put #var Total.Wholesale.Cost {#evalmath ($Total.Wholesale.Cost + $Current.Wholesale.Cost)}
     put #var Total.Transport.Cost {#evalmath ($Total.Transport.Cost + $Current.Transport.Cost)}
     put #var Total.Dues {#evalmath ($Total.Dues + $Current.Dues)}
     put #var Total.Cost {#evalmath ($Total.Cost + $Current.Cost)}
     put #save variables
     return
CONTRACT.CHECK.ECHO:
     put #echo >%Log
     put #echo >%Log #708090 ******************************
     put #echo >%Log #708090 *****   From: $From
     put #echo >%Log #708090 *****     To: $To
     put #echo >%Log #708090 *****  Value: $Current.Worth
     put #echo >%Log #708090 *****  Costs: $Current.Cost
     put #echo >%Log #708090 ***** Profit: $Current.Profit
     put #echo >%Log #708090 ******************************
     put #echo >%Log
     gosub STOW.CONTRACT
     return
##### SUBROUTINES TO GET CONTRACT FROM CONTAINER AND GIVE CLERK
ARTHE.CONTRACT:
     pause 0.6
     var Location ARTHE
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToArtheDale > 0 then goto ARTHE.CONTRACT
     return
STONE.CONTRACT:
     pause 0.6
     var Location STONE
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToStoneClan > 0 then goto STONE.CONTRACT
     return
DIRGE.CONTRACT:
     pause 0.6
     var Location DIRGE
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToDirge > 0 then goto DIRGE.CONTRACT
     return
CROSSING.CONTRACT:
     pause 0.6
     var Location CROSSING
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToCrossing > 0 then goto CROSSING.CONTRACT
     return
TIGER.CONTRACT:
     pause 0.6
     var Location TIGER
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToTigerClan > 0 then goto TIGER.CONTRACT
     return
WOLF.CONTRACT:
     pause 0.6
     var Location WOLF
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToWolfClan > 0 then goto WOLF.CONTRACT
     return
LETH.CONTRACT:
     pause 0.6
     var Location LETH
     gosub GET.CONTRACT
     gosub SUB.CONTRACT
     gosub STATUSBAR
     gosub SUB.CONTRACT.ECHO
     gosub GIVE.CLERK
     if $ToLethDeriel > 0 then goto LETH.CONTRACT
     return
##### CONTRACT CASE SUBROUTINES
GET.CONTRACT:
CONTRACT.GET.OPEN:
     matchre CONTRACT.GET.OPEN ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre CONTRACT.GET.OPEN ^Sorry\,
     matchre CONTRACT.GET ^You can't do that
     matchre CONTRACT.GET ^You open your
     matchre CONTRACT.GET ^You slowly open your
     matchre CONTRACT.GET ^You uncork the
     matchre CONTRACT.GET ^As you turn the knob on the front of your .*, you hear a \*click\* and a whirring of gears as the top of the .* flips open\.
     matchre CONTRACT.GET ^That is already open
     matchre ERROR ^What were you referring to\?
     matchre ERROR ^I could not find what you were referring to\.
     send OPEN MY $ContractCase
     matchwait
CONTRACT.GET:
     matchre CONTRACT.GET ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre CONTRACT.GET ^Sorry\,
     matchre CONTRACT.GET.CLOSE ^You are already holding that
     matchre CONTRACT.GET.CLOSE ^You get a.* contract
     matchre ERROR ^What were you referring to\?
     matchre ERROR ^I could not find what you were referring to\.
     send GET MY %Location CONTRACT FROM MY $ContractCase
     matchwait
CONTRACT.GET.CLOSE:
     if "$CloseContractCase" == "0" then return
     matchre CONTRACT.GET.CLOSE ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre CONTRACT.GET.CLOSE ^Sorry\,
     matchre RETURN ^You close your
     matchre RETURN ^You quickly close
     matchre RETURN ^You seal the opening
     matchre RETURN ^You push the top of your .* down, snapping it into place\.
     matchre RETURN ^There is no way to do that\.
     matchre ERROR ^What were you referring to\?
     matchre ERROR ^I could not find what you were referring to\.
     send CLOSE MY $ContractCase
     matchwait
STOW.CONTRACT:
CONTRACT.STOW.OPEN:
     matchre CONTRACT.STOW.OPEN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre CONTRACT.STOW ^You can't do that\.
     matchre CONTRACT.STOW ^You open your .*\.
     matchre CONTRACT.STOW ^You slowly open your .*\.
     matchre CONTRACT.STOW ^You uncork the .*\.
     matchre CONTRACT.STOW ^As you turn the knob on the front of your .*, you hear a \*click\* and a whirring of gears as the top of the .* flips open\.
     matchre CONTRACT.STOW ^That is already open\.
     matchre ERROR ^What were you referring to\?
     matchre ERROR ^I could not find what you were referring to\.
     send OPEN MY $ContractCase
     matchwait
CONTRACT.STOW:
     pause 0.6
     matchre CONTRACT.STOW ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre CONTRACT.STOW.CLOSE ^You put .*\.
     matchre ERROR ^What were you referring to\?
     matchre ERROR ^I could not find what you were referring to\.
     send PUT MY CONTRACT IN MY $ContractCase
     matchwait
CONTRACT.STOW.CLOSE:
     if "$CloseContractCase" == "0" then return
     matchre CONTRACT.STOW.CLOSE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^You close your .*\.
     matchre RETURN ^You quickly close .*\.
     matchre RETURN ^You seal the opening .*\.
     matchre RETURN ^You push the top of your .* down, snapping it into place\.
     matchre RETURN ^There is no way to do that\.
     matchre ERROR ^What were you referring to\?
     matchre ERROR ^I could not find what you were referring to\.
     send CLOSE MY $ContractCase
     matchwait
##### SUBROUTINE TO UPDATE THE "FROM" VARIABLES WHEN CONTRACTS ARE DELIVERED
SUB.CONTRACT:
     put #statusbar 2 Contract Update
     if contains ("$righthand" "Arthe Dale contract") then put #var ToArtheDale {#evalmath ($ToArtheDale - 1)}
     if contains ("$righthand" "Arthe Dale contract") then put #var NCounter {#evalmath ($NCounter - 1)}
     if contains ("$righthand" "Stone Clan contract") then put #var ToStoneClan {#evalmath ($ToStoneClan - 1)}
     if contains ("$righthand" "Stone Clan contract") then put #var NCounter {#evalmath ($NCounter - 1)}
     if contains ("$righthand" "Dirge contract") then put #var ToDirge {#evalmath ($ToDirge - 1)}
     if contains ("$righthand" "Dirge contract") then put #var NCounter {#evalmath ($NCounter - 1)}
     if contains ("$righthand" "Crossing contract") then put #var ToCrossing {#evalmath ($ToCrossing - 1)}
     if contains ("$righthand" "Crossing contract") then put #var WCounter {#evalmath ($WCounter - 1)}
     if contains ("$righthand" "Tiger Clan contract") then put #var ToTigerClan {#evalmath ($ToTigerClan - 1)}
     if contains ("$righthand" "Tiger Clan contract") then put #var WCounter {#evalmath ($WCounter - 1)}
     if contains ("$righthand" "Wolf Clan contract") then put #var ToWolfClan {#evalmath ($ToWolfClan - 1)}
     if contains ("$righthand" "Wolf Clan contract") then put #var WCounter {#evalmath ($WCounter - 1)}
     if contains ("$righthand" "Leth Deriel contract") then put #var ToLethDeriel {#evalmath ($ToLethDeriel - 1)}
     if contains ("$righthand" "Leth Deriel contract") then put #var LCounter {#evalmath ($LCounter - 1)}
     send READ MY CONTRACT
     waitforre ^.*Trading Contract Issued by:\s+(\S+)
     if "$1" == "Dirge" then put #var FromDirge {#evalmath ($FromDirge - 1)}
     if "$1" == "Stone" then put #var FromStoneClan {#evalmath ($FromStoneClan - 1)}
     if "$1" == "Arthe" then put #var FromArtheDale {#evalmath ($FromArtheDale - 1)}
     if "$1" == "Crossing" then put #var FromCrossing {#evalmath ($FromCrossing - 1)}
     if "$1" == "Tiger" then put #var FromTigerClan {#evalmath ($FromTigerClan - 1)}
     if "$1" == "Wolf" then put #var FromWolfClan {#evalmath ($FromWolfClan - 1)}
     if "$1" == "Leth" then put #var FromLethDeriel {#evalmath ($FromLethDeriel - 1)}
     pause 0.6
     put #var Total.Profit {#evalmath ($Total.Profit + $Current.Profit)}
     put #var Total.Completed {#evalmath ($Total.Completed + 1)}
     put #save variables
     return
SUB.CONTRACT.ECHO:
     put #echo >%Log
     put #echo >%Log #708090 ******************************
     put #echo >%Log #708090 *****    Delivered: $Total.Completed
     put #echo >%Log #708090 *****  Total Value: $Total.Worth
     put #echo >%Log #708090 *****  Total Costs: $Total.Cost
     put #echo >%Log #708090 ***** Total Profit: $Total.Profit
     put #echo >%Log #708090 ******************************
     put #echo >%Log
     return
##### DECISION MAKING SUBROUTINES
CROSSING.SUB:
     if $ToCrossing > 0 then gosub CROSSING.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.CROSSING
     gosub BANK.RUN
     if $FromCrossing = 0 then gosub GET.CONTRACT.CROSSING
     if $ToLethDeriel >= 3 then goto CROSSING.TO.LETH
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $NCounter <= $WCounter then goto CROSSING.SUB.TWO
     if $ToArtheDale > 0 then goto CROSSING.TO.ARTHE
     if $FromArtheDale = 0 then goto CROSSING.TO.ARTHE
     if $ToStoneClan > 0 then goto CROSSING.TO.STONE
     if $FromStoneClan = 0 then goto CROSSING.TO.STONE
     if $ToDirge > 0 then goto CROSSING.TO.DIRGE
     else goto CROSSING.TO.ARTHE
CROSSING.SUB.TWO:
     if $ToTigerClan > 0 then goto CROSSING.TO.TIGER
     if $FromTigerClan = 0 then goto CROSSING.TO.TIGER
     if $ToWolfClan > 0 then goto CROSSING.TO.WOLF
     if $FromWolfClan = 0 then goto CROSSING.TO.WOLF
     else goto CROSSING.TO.ARTHE
ARTHE.SUB:
     if $ToArtheDale > 0 then gosub ARTHE.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.ARTHE
     if $FromArtheDale = 0 then gosub GET.CONTRACT.GENERIC
     gosub MOVE GO DOOR
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToStoneClan > 0 then goto ARTHE.TO.STONE
     if $FromStoneClan = 0 then goto ARTHE.TO.STONE
     if $ToDirge > 0 then goto ARTHE.TO.DIRGE
     else goto ARTHE.TO.CROSSING
STONE.SUB:
     if $ToStoneClan > 0 then gosub STONE.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.STONE
     if $FromStoneClan = 0 then gosub GET.CONTRACT.GENERIC
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToDirge > 0 then goto STONE.TO.DIRGE
     if $ToArtheDale > 0 then goto STONE.TO.ARTHE
     if $FromArtheDale = 0 then goto STONE.TO.ARTHE
     else goto STONE.TO.CROSSING
DIRGE.SUB:
     if $ToDirge > 0 then gosub DIRGE.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.DIRGE
     if $FromDirge = 0 then gosub GET.CONTRACT.DIRGE
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToStoneClan > 0 then goto DIRGE.TO.STONE
     if $FromStoneClan = 0 then goto DIRGE.TO.STONE
     if $ToArtheDale > 0 then goto DIRGE.TO.ARTHE
     if $FromArtheDale = 0 then goto DIRGE.TO.ARTHE
     else goto DIRGE.TO.CROSSING
TIGER.SUB:
     if $ToTigerClan > 0 then gosub TIGER.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.TIGER
     if $FromTigerClan = 0 then gosub GET.CONTRACT.GENERIC
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToWolfClan > 0 then goto TIGER.TO.WOLF
     if $FromWolfClan = 0 then goto TIGER.TO.WOLF
     else goto TIGER.TO.CROSSING
WOLF.SUB:
     if $ToWolfClan > 0 then gosub WOLF.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.WOLF
     if $FromWolfClan = 0 then gosub GET.CONTRACT.GENERIC
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToTigerClan > 0 then goto WOLF.TO.TIGER
     if $FromTigerClan = 0 then goto WOLF.TO.TIGER
     else goto WOLF.TO.CROSSING
LETH.SUB:
     if $ToLethDeriel > 0 then gosub LETH.CONTRACT
     if "$Finish.Trading" == "1" then goto FINISHED.LETH
     if $FromLethDeriel = 0 then gosub GET.CONTRACT.GENERIC
     gosub MOVE OUT
     gosub LETH.BANKING
     gosub FEED.CARAVAN
     goto LETH.TO.CROSSING
##### SUBROUTINES TO FINISH UP REMAINING CONTRACTS
FINISHED.CROSSING:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     if $ToLethDeriel > 0 then goto FINISH.CROSSING.TO.LETH
     gosub BANK.RUN.DONE
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToArtheDale > 0 then goto CROSSING.TO.ARTHE
     if $ToStoneClan > 0 then goto CROSSING.TO.STONE
     if $ToDirge > 0 then goto CROSSING.TO.DIRGE
     if $ToTigerClan > 0 then goto CROSSING.TO.TIGER
     if $ToWolfClan > 0 then goto CROSSING.TO.WOLF
     else goto FINISHED
FINISHED.ARTHE:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     gosub MOVE GO DOOR
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToStoneClan > 0 then goto ARTHE.TO.STONE
     if $ToDirge > 0 then goto ARTHE.TO.DIRGE
     else goto ARTHE.TO.CROSSING
FINISHED.STONE:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToDirge > 0 then goto STONE.TO.DIRGE
     if $ToArtheDale > 0 then goto STONE.TO.ARTHE
     else goto STONE.TO.CROSSING
FINISHED.DIRGE:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToStoneClan > 0 then goto DIRGE.TO.STONE
     if $ToArtheDale > 0 then goto DIRGE.TO.ARTHE
     else goto DIRGE.TO.CROSSING
FINISHED.TIGER:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToWolfClan > 0 then goto TIGER.TO.WOLF
     else goto TIGER.TO.CROSSING
FINISHED.WOLF:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     gosub MOVE OUT
     gosub FEED.CARAVAN
     if $ToTigerClan > 0 then goto WOLF.TO.TIGER
     else goto WOLF.TO.CROSSING
FINISHED.LETH:
     pause 0.6
     echo
     echo *************************************************
     echo ******** DONE GETTING CONTRACTS FOR NOW *********
     echo ***** CHECKING TO SEE WHERE TO GO FROM HERE *****
     echo *************************************************
     echo
     pause 0.6
     gosub MOVE OUT
     gosub LETH.BANKING
     gosub FEED.CARAVAN
     goto LETH.TO.CROSSING
FINISHED:
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO DOOR
     if "$Return.Caravan" == "1" then gosub RETURN.CARAVAN
     put #var End.Date @date@
     put #var End.Time @time@
     put #var Profit.Per.Contract {#evalmath floor($Total.Profit / $Total.Completed)}
     pause 0.6
     put #echo  #708090 *******************************************************
     put #echo  #708090 *****                       Began: $Begin.Date $Begin.Time
     put #echo  #708090 *****                    Finished: $End.Date $End.Time
     put #echo  #708090 *****
     put #echo  #708090 *****   Total Contracts Delivered: $Total.Completed
     put #echo  #708090 *****
     put #echo  #708090 *****        Total Contract Value: $Total.Worth
     put #echo  #708090 *****                 Total Costs: $Total.Cost
     put #echo  #708090 *****      Total Profits this run: $Total.Profit
     put #echo  #708090 *****
     put #echo  #708090 ***** Average Profit Per Contract: $Profit.Per.Contract
     put #echo  #708090 *****
     put #echo  #708090 *****                      Thefts: $Current.Thefts
     put #echo  #708090 *******************************************************
     pause 0.6
     goto ZTRADE.RESET
##### SUBROUTINE TO WAIT FOR, BOARD FERRY, AND WAIT TO DOCK.
FERRY:
     matchre FERRY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre FERRY.ABOARD.INIT ^\[\"Kertigen's Honor\"\]$
     matchre FERRY.ABOARD.INIT ^\[\"Hodierna's Grace\"\]$
     matchre FERRY.WAIT.INIT ^What were you referring to\?
     matchre FERRY.WAIT.INIT ^I could not find what you were referring to\.
     matchre FERRY.WAIT.INIT ^The ferry.*has just pulled away from the dock\.  You will have to wait for the next one\.
     matchre FERRY.WAIT.INIT ^There is no ferry here to go aboard\.
     matchre FERRY.MONEY ^The Captain stops you, \"Only a small transportation fee of .* kronars for your goods today, .*\.\"  \"Hey,\" he says, \"You haven't got enough kronars to pay for your trip\.  Come back when you can afford the fare\.\"
     matchre FERRY.MONEY ^The Captain stops you and requests a transportation fee of .* kronars as you board the craft\.  \"Hey,\" he says, \"You haven't got enough kronars to pay for your trip\.  Come back when you can afford the fare\.\"
     send GO FERRY
     matchwait
FERRY.MONEY:
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO SQUARE
     gosub MOVE NORTHEAST
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE NORTHEAST
     gosub MOVE GO BRIDGE
     gosub MOVE NORTHEAST
     gosub MOVE GO BANK
     gosub MOVE GO WINDOW
     send DEPOSIT ALL
     pause 0.6
     send WITHDRAW 2000 BRONZE
     pause 0.6
     send BALANCE
     pause 0.6
     gosub MOVE OUT
     gosub MOVE OUT
     gosub MOVE SOUTHWEST
     gosub MOVE GO BRIDGE
     gosub MOVE SOUTHWEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE SOUTHWEST
     gosub MOVE GO PIER
     goto FERRY
FERRY.WAIT.INIT:
     # gosub HIDE
FERRY.WAIT:
     matchre FERRY ^The ferry .* pulls up to the dock\.
     matchre FERRY ^The ferry .* pulls into the dock\.
     matchre FERRY ^A great clanging bell rings out and a hearty voice yells, \"Next departure in two minutes\!\"$
     matchre FERRY ^A great clanging bell rings out and a hearty voice calls, \"Next departure in one minute\!\"$
     matchre FERRY ^You hear a bell ring out .*$
     matchwait
FERRY.ABOARD.INIT:
     waitforre ^Your .*, following you\.
     gosub FEED.CARAVAN
     if "$Train.Skills" == "1" then goto FERRY.ABOARD.SKILLS
     # gosub HIDE
FERRY.ABOARD.WAIT:
     matchre FERRY.DOCKED ^The ferry .* reaches the dock and its crew ties the ferry off\.
     matchwait
FERRY.DOCKED:
     gosub CARAMOVE GO DOCK
     return
##### SUBROUTINE TO FEED CARAVAN.
FEED.CARAVAN:
     if "$FeedbagWorn" == "1" then goto REMOVE.FEEDBAG
     if "$FeedbagWorn" == "0" then goto GET.FEEDBAG
     else goto GET.FEEDBAG
GET.FEEDBAG:
     matchre GET.FEEDBAG ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre GET.FEEDBAG ^Sorry\,
     matchre GIVE.CARAVAN ^You are already holding that
     matchre GIVE.CARAVAN ^You get
     matchre REMOVE.FEEDBAG ^But that is already in your inventory\.
     matchre TELL.CARAVAN.FASTER ^What were you referring to\?
     matchre TELL.CARAVAN.FASTER ^I could not find what you were referring to\.
     send GET MY FEEDBAG
     matchwait
REMOVE.FEEDBAG:
     matchre REMOVE.FEEDBAG ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre REMOVE.FEEDBAG ^Sorry\,
     matchre TELL.CARAVAN.FASTER ^What were you referring to\?
     matchre TELL.CARAVAN.FASTER ^I could not find what you were referring to\.
     matchre GIVE.CARAVAN ^You remove a .* from your belt\.
     send REMOVE MY FEEDBAG
     matchwait
GIVE.CARAVAN:
     matchre GIVE.CARAVAN ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre GIVE.CARAVAN ^Sorry\,
     matchre FEEDING.DONE ^What is it you're trying to give\?
     matchre FEEDING.DONE ^What were you referring to\?
     matchre FEEDING.DONE ^I could not find what you were referring to\.
     matchre FEEDING.DONE ^You offer the .* to the caravan driver\.
     matchre FEEDING.DONE ^The driver takes the feedbag from you and begins feeding the caravan\.
     send GIVE CARAVAN
     matchwait
FEEDING.DONE:
     var Caravan.Hunger 0
     if "$FeedbagWorn" == "1" then goto WEAR.FEEDBAG
     if "$FeedbagWorn" == "0" then goto STOW.FEEDBAG
     else goto STOW.FEEDBAG
STOW.FEEDBAG:
     matchre STOW.FEEDBAG ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre STOW.FEEDBAG ^Sorry\,
     matchre TELL.CARAVAN.FASTER ^You put
     matchre TELL.CARAVAN.FASTER ^What were you referring to\?
     send STOW MY FEEDBAG
     matchwait
WEAR.FEEDBAG:
     matchre WEAR.FEEDBAG ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre WEAR.FEEDBAG ^Sorry\,
     matchre TELL.CARAVAN.FASTER ^What were you referring to\?
     matchre TELL.CARAVAN.FASTER ^I could not find what you were referring to\.
     matchre TELL.CARAVAN.FASTER ^You attach a .* to your belt\.
     send WEAR MY FEEDBAG
     matchwait
TELL.CARAVAN.FASTER:
     matchre TELL.CARAVAN.FASTER ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre TELL.CARAVAN.FASTER ^Sorry\,
     matchre TELL.CARAVAN.FASTER ^You tell your driver to speed up the pace\.
     matchre RETURN ^You tell your driver to speed up the pace but he looks at you and says\,
     matchre RETURN ^You tell your driver to speed up the pace\, but he looks at you and says\,
     send TELL CARAVAN TO GO FASTER
     matchwait
##### SUBROUTINE TO REFILL FEEDBAG
REFILL.FEEDBAG:
     pause 0.3
     matchre REFILL.FEEDBAG ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre REFILL.FEEDBAG ^You begin to forage around, but can't quite seem to remember what it was you were looking for\.
     matchre REFILL.FEEDBAG ^You wander around and poke your fingers into a few places, wondering what you might find\.
     matchre REFILL.FEEDBAG ^You are certain you could find what you were looking for, if you had a bit more luck\.
     matchre REFILL.FEEDBAG ^You are sure you knew what you were looking for when you started to forage\.
     matchre REFILL.FEEDBAG ^You forage around but are unable to find anything\.
     matchre REFILL.FEEDBAG ^You find something dead and lifeless, is this what you were looking for\?
     matchre REFILL.FEEDBAG ^You forage around and believe you would probably have better luck
     matchre REFILL.FEEDBAG ^The room is too cluttered to find anything here\!
     matchre DO.PUT ^You forage around for a while and manage to find
     matchre DO.PUT ^You manage to find
     send FORAGE GRASS
     matchwait 30
     goto REFILL.FEEDBAG
DO.PUT:
     pause 0.3
     matchre DO.PUT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre DO.FEED ^You can't put that on there\!
     matchre DO.FEED ^There is no more room
     matchre DO.FEED ^That's too heavy to go in there\!
     matchre DO.FEED ^What were you referring to\?
     matchre REFILL.FEEDBAG ^You put
     matchre REFILL.FEEDBAG ^You drop
     matchre REFILL.FEEDBAG ^You toss
     matchre REFILL.FEEDBAG ^You add
     send PUT MY GRASS IN MY FEEDBAG
     matchwait 2
     goto DO.PUT
DO.FEED:
     pause 0.3
     matchre DO.FEED ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^The driver
     send GIVE CARAVAN
     matchwait 2
     goto DO.FEED
##### BANK RUN SUBROUTINES
BANK:
     pause 0.6
     put #statusbar 2 Bank Run
     gosub COMMAND.CARAVAN WAIT
     gosub MOVE GO BANK
     gosub MOVE GO WINDOW
     send DEPOSIT ALL
     pause 0.6
     send BALANCE
     pause 0.6
     gosub MOVE OUT
     gosub MOVE OUT
     put #statusbar 2 Bank to Guildhall
     gosub COMMAND.CARAVAN FOLLOW FAST
     return
INITIAL.BANK.RUN:
BANK.RUN.INSIDE:
BANK.RUN:
     put #statusbar 2 Bank Run
     gosub MOVE EAST
     gosub MOVE GO STAIR
     gosub MOVE EAST
     gosub MOVE SOUTH
     gosub MOVE DOWN
     gosub MOVE OUT
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE SOUTHEAST
     gosub MOVE EAST
     gosub MOVE SOUTH
     gosub MOVE SOUTH
     gosub MOVE GO BRIDGE
     gosub MOVE NORTHEAST
     gosub MOVE GO BANK
     gosub MOVE GO WINDOW
     send DEPOSIT ALL
     pause 0.3
     send WITHDRAW %Amount1
     pause 0.3
     send WITHDRAW %Amount2
     pause 0.3
     send BALANCE
     pause 0.3
     gosub MOVE OUT
     gosub MOVE OUT
     gosub MOVE SOUTHWEST
     gosub MOVE GO BRIDGE
     gosub MOVE NORTH
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE NORTHWEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE GO GUILD
     gosub MOVE CLIMB STAIR
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE DOWN
     gosub MOVE WEST
     return
BANK.RUN.LETH:
     put #statusbar 2 Leth Bank Run
     gosub MOVE EAST
     gosub MOVE GO STAIR
     gosub MOVE EAST
     gosub MOVE SOUTH
     gosub MOVE DOWN
     gosub MOVE OUT
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE SOUTHEAST
     gosub MOVE EAST
     gosub MOVE SOUTH
     gosub MOVE SOUTH
     gosub MOVE GO BRIDGE
     gosub MOVE NORTHEAST
     gosub MOVE GO BANK
     gosub MOVE GO WINDOW
     send DEPOSIT ALL
     pause 0.6
     send WITHDRAW 2000 BRONZE
     pause 0.6
     send BALANCE
     pause 0.6
     gosub MOVE OUT
     gosub MOVE OUT
     gosub MOVE SOUTHWEST
     gosub MOVE GO BRIDGE
     gosub MOVE NORTH
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE NORTHWEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE GO GUILD
     gosub MOVE CLIMB STAIR
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE DOWN
     gosub MOVE WEST
     return
LETH.BANKING:
     put #statusbar 2 Banking in Leth Deriel
     gosub MOVE NORTH
     gosub MOVE EAST
     gosub MOVE GO DEPOSITORY
     gosub MOVE UP
     send DEPOSIT ALL
     pause 0.6
     send WITHDRAW 2000 BRONZE
     pause 0.6
     send BALANCE
     pause 0.6
     gosub MOVE DOWN
     gosub MOVE OUT
     gosub MOVE WEST
     gosub MOVE SOUTH
     return
BANK.RUN.DONE:
     put #statusbar 2 Finish Up Bank Run
     gosub MOVE EAST
     gosub MOVE GO STAIR
     gosub MOVE EAST
     gosub MOVE SOUTH
     gosub MOVE DOWN
     gosub MOVE OUT
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE EAST
     gosub MOVE SOUTHEAST
     gosub MOVE EAST
     gosub MOVE SOUTH
     gosub MOVE SOUTH
     gosub MOVE GO BRIDGE
     gosub MOVE NORTHEAST
     gosub MOVE GO BANK
     gosub MOVE GO WINDOW
     send DEPOSIT ALL
     pause 0.6
     send BALANCE
     pause 0.6
     gosub MOVE OUT
     gosub MOVE OUT
     gosub MOVE SOUTHWEST
     gosub MOVE GO BRIDGE
     gosub MOVE NORTH
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE NORTHWEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE WEST
     gosub MOVE GO GUILD
     gosub MOVE CLIMB STAIR
     gosub MOVE NORTH
     gosub MOVE WEST
     gosub MOVE DOWN
     gosub MOVE WEST
     return
##### MOVEMENT SUBROUTINES
MOVE:
     var Direction $0
MOVE.RESUME:
     matchre MOVE.RESUME ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre MOVE.RESUME ^You make your way up the .*\. Partway up, you make the mistake of looking down\. Struck by vertigo, you cling to the .* for a few moments, then slowly climb back down\.
     matchre MOVE.RESUME ^You pick your way up the .*, but reach a point where your footing is questionable\. Reluctantly, you climb back down\.
     matchre MOVE.RESUME ^You approach the .*, but the steepness is intimidating\.
     matchre MOVE.RESUME ^You struggle
     matchre MOVE.RESUME ^You blunder
     matchre MOVE.RESUME ^You slap
     matchre MOVE.RESUME ^You work
     matchre MOVE.RESUME make much headway
     matchre MOVE.RESUME ^You flounder around in the water\.
     matchre MOVE.RETREAT ^You are engaged to .*\!
     matchre MOVE.STAND ^You start up the .*, but slip after a few feet and fall to the ground\!  You are unharmed but feel foolish\.
     matchre MOVE.STAND ^Running heedlessly over the rough terrain, you trip over an exposed root and land face first in the dirt\.
     matchre MOVE.STAND ^You can't do that while lying down\.
     matchre MOVE.STAND ^You must be standing to do that\.
     matchre MOVE.STAND ^You must stand first\.
     matchre MOVE.STAND ^Stand up first.
     matchre MOVE.FAILED ^You can't go there
     matchre MOVE.FAILED ^I could not find what you were referring to\.
     matchre MOVE.FAILED ^What were you referring to
     matchre MOVE.RETURN ^It's pitch dark
     matchre MOVE.RETURN ^Obvious
     send %Direction
     matchwait
MOVE.STAND:
     matchre MOVE.STAND ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre MOVE.STAND ^You are overburdened and cannot manage to stand\.
     matchre MOVE.STAND ^The weight
     matchre MOVE.STAND ^You try
     matchre MOVE.RETREAT ^You are already standing\.
     matchre MOVE.RETREAT ^You stand back up\.
     matchre MOVE.RETREAT ^You stand up\.
     send STAND
     matchwait
MOVE.RETREAT:
     matchre MOVE.RETREAT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre MOVE.RETREAT ^You retreat back to pole range.
     matchre MOVE.RETREAT ^You try to back away
     matchre MOVE.STAND ^You must stand first\.
     matchre MOVE.RESUME ^You retreat from combat\.
     matchre MOVE.RESUME ^You are already as far away as you can get\!
     send RETREAT
     matchwait
MOVE.FAILED:
     echo
     echo ***************************************************************
     echo ***** MOVE FAILED. PLEASE INVESTIGATE THEN RESUME SCRIPT. *****
     echo ***************************************************************
     echo
     put #script pauseorresume %Current.Script
     goto MOVE.RETURN
MOVE.RETURN:
     return
SNEAK:
     var Direction $0
SNEAK.RESUME:
     matchre SNEAK.RESUME ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre MOVE.RESUME ^Perhaps you should hide yourself first\?
     matchre SNEAK.RETURN ^Obvious
     send SNEAK %Direction
     matchwait
SNEAK.RETURN:
     pause 0.3
     return
CARAMOVE:
     var Direction $0
CARAMOVE.RESUME:
     matchre CARAMOVE.RESUME ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre CARAMOVE.RETREAT ^You are engaged to .*\!
     matchre CARAMOVE.STAND ^You must stand first\.
     matchre CARAMOVE.STAND ^You must be standing to do that\.
     matchre RETURN ^Your .*, following you\.
     send %Direction
     matchwait
CARAMOVE.STAND:
     pause 0.3
     matchre CARAMOVE.STAND ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre CARAMOVE.STAND ^Sorry\,
     matchre CARAMOVE.STAND ^The weight
     matchre CARAMOVE.STAND ^You try
     matchre CARAMOVE.STAND ^You are overburdened and cannot manage to stand\.
     matchre CARAMOVE.RETREAT ^You stand back up
     matchre CARAMOVE.RETREAT ^You stand up
     matchre CARAMOVE.RETREAT ^You are already standing\.
     send STAND
     matchwait
CARAMOVE.RETREAT:
     matchre CARAMOVE.RETREAT ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?
     matchre CARAMOVE.RETREAT ^Sorry\,
     matchre CARAMOVE.RETREAT ^You retreat back to pole range.
     matchre CARAMOVE.RETREAT ^You try to back away
     matchre CARAMOVE.STAND ^You must stand first\.
     matchre CARAMOVE.RESUME ^You retreat from combat\.
     matchre CARAMOVE.RESUME ^You are already as far away as you can get\!
     send RETREAT
     matchwait
CARASNEAK:
     var Direction $0
CARASNEAK.RESUME:
     pause 0.3
     matchre CARASNEAK.RESUME ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre CARASNEAK.RETURN ^Your .*, following you\.
     matchre CARAMOVE.RESUME ^Perhaps you should hide yourself first\?
     send SNEAK %Direction
     matchwait
CARASNEAK.RETURN:
     return
AUTOMOVE:
     if "$0" = "$roomid" then return
     else put .AutoMove $0
     waitforre ^AUTOMOVE COMPLETE\!$
     return
##### HIDING SUBROUTINES
HIDE:
     pause 0.3
     matchre HIDE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre HIDE ^.* reveals you, ruining your hiding attempt\!
     matchre HIDE ^.* notices your attempt to hide\!
     matchre HIDE ^.* discovers you, ruining your hiding place\!
     matchre RETURN ^Eh\?  But you're already hidden\!
     matchre RETURN ^You melt into the background
     matchre RETURN ^You slip into a hiding
     matchre RETURN ^You blend in with your surroundings
     send HIDE
     matchwait
CARAHIDE:
     pause 0.3
     matchre CARAHIDE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre CARAHIDE.RETURN ^Your .*, following you\.
     send HIDE
     matchwait
CARAHIDE.RETURN:
     return
##### RENT CARAVAN SUBROUTINE
RENT.CARAVAN:
     matchre RENT.CARAVAN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre NO.CARAMONEY ^You attempt to pay the clerk, but you don't have enough money\.  After haggling with the clerk for several moments, he finally shrugs at you and says, \"Sorry\, can't put it in your dues\.  Ya gotta pay up front on yer rentals\.\"
     matchre NO.CARAVAN ^The clerk looks at you and says, \"Our records show you never returned your last caravan to us\.  Perhaps you should check with one of the stables to locate it\.\"$
     matchre RETURN ^You count out your .* and pay the clerk\, who sends his assistant out to get your transportation together\.
     matchre RETURN ^\"Ah,\" the clerk says\.  \"Our records show you already have a.*\.  We can't give you another one until you turn that one in\.\"$
     send RENT CARAVAN
     matchwait
##### COMMAND CARAVAN SUBROUTINE
COMMAND.CARAVAN:
     var Command $0
COMMAND.CARAVAN.CONTINUE:
     matchre COMMAND.CARAVAN.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre COMMAND.CARAVAN.CONTINUE ^You have to be in the same room as your .* to command it\.
     matchre RETURN ^You pass on the order to .* to your driver, who makes sure your .* does your bidding\.
     matchre NO.CARAVAN ^You have nothing to command at this time\.
     send TELL CARAVAN TO %Command
     matchwait
##### RETURN CARAVAN SUBROUTINE
RETURN.CARAVAN:
     matchre RETURN.CARAVAN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^The clerk looks at you funny and then says, \"We have no record of you renting a caravan or pack animal\.\"$
     matchre RETURN ^\"Ah, .*, good to see you're still in one piece after your travels\.\s+As the clerk makes note of your return, another worker goes outside to retrieve your caravan\.
     send RETURN CARAVAN
     matchwait
##### PAY SUBROUTINE
PAY:
     var Payee $0
PAY.CONTINUE:
     matchre PAY.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^The clerk scowls\,
     matchre RETURN ^The clerk grumbles\,
     matchre RETURN ^The clerk growls\,
     matchre RETURN ^The clerk says\,
     matchre RETURN ^You count out some coins, and the clerk notes that your dues are settled\.$
     matchre RETURN ^You don't have any coins on you to pay dues\.$
     send PAY %Payee
     matchwait
##### SPECULATE SUBROUTINES
SPECULATE.FINESSE:
     matchre SPECULATE.FINESSE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^You don't know how to do that yet\.
     matchre RETURN ^You can't seem to concentrate on that right now\.
     matchre RETURN ^But you are already putting your best appearance out there\!
     matchre RETURN ^You focus yourself on presenting your best appearance, and feel your confidence grow as you realize you are able to act with greater finesse\.
     send SPECULATE FINESSE
     matchwait
SPECULATE.FINESSE.STOP:
     matchre SPECULATE.FINESSE.STOP ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^You don't know how to do that yet\.
     matchre RETURN ^But you aren't focussing on putting your best foot forward\.
     matchre RETURN ^You feel your concentration on your finesse slip away\.
     send SPECULATE FINESSE STOP
     matchwait
##### GIVE & GET CONTRACT SUBROUTINES
GIVE.CLERK:
     matchre GIVE.CLERK ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^The shipment clerk accepts your contract and peruses it\.
     matchre RETURN ^The shipping clerk accepts your contract and peruses it\.
     matchre ERROR ^A shipment clerk ignores your offer\.
     matchre ERROR ^The shipment clerk refuses your offer\.
     send GIVE CLERK
     matchwait
OBTAIN.CONTRACT:
     matchre OBTAIN.CONTRACT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^The minister plucks a contract from the hands of a passing clerk and hands it to you\.
     matchre RETURN ^\"You still have another contract we issued for you that needs to be completed,\" the commerce minister says\.  \"Return when you have done it\.\"
     matchre RETURN ^\"You still have another contract we issued for you that needs to be completed,\" the trade minister says\.  \"Return when you have done it\.\"
     matchre ERROR ^The minister reminds you that you still owe
     send ASK MINISTER FOR CONTRACT
     matchwait
##### STATUSBAR SUBROUTINES
STATUSBAR:
     put #statusbar 2
     put #statusbar 3 Contracts To/From : Leth : $ToLethDeriel/$FromLethDeriel Crossing : $ToCrossing/$FromCrossing TC : $ToTigerClan/$FromTigerClan WC : $ToWolfClan/$FromWolfClan Arthe : $ToArtheDale/$FromArtheDale SC : $ToStoneClan/$FromStoneClan Dirge : $ToDirge/$FromDirge - North : $NCounter West : $WCounter Leth : $LCounter
     put #statusbar 4 Profits : $Total.Profit
     if "$Finish.Trading" == "0" then put #statusbar 5 Enter STOP to finish.
     if "$Finish.Trading" == "1" then put #statusbar 5 Finishing Up.
     put #statusbar 6 Started: $Begin.Date $Begin.Time
     return
STATUSBAR.CLEAR:
     put #statusbar 2
     put #statusbar 3
     put #statusbar 4
     put #statusbar 5
     put #statusbar 6
     return
##### TIME TRACKER SUBROUTINE.
START.TIME.TRACKER:
     if "$Begin.Date" == "NULL" then put #var Begin.Date $date
     if "$Begin.Time" == "NULL" then put #var Begin.Time $time
     return
##### VARIABLE RESET FOR ZOLUREN TRADING.
ZTRADE.RESET:
     gosub STATUSBAR.CLEAR
     pause 0.3
     echo
     echo ***************************************
     echo ***** RESETTING SESSION VARIABLES *****
     echo ***************************************
     echo
     # Variable for finishing Contract delivery, without getting more.
     put #var Finish.Trading 0
     # Variables to go to NTR, West Gate, or Leth Deriel.
     put #var NCounter 0
     put #var WCounter 0
     put #var LCounter 0
     # Variables to tell how many contracts I have to each outpost.
     put #var ToDirge 0
     put #var ToStoneClan 0
     put #var ToArtheDale 0
     put #var ToCrossing 0
     put #var ToTigerClan 0
     put #var ToWolfClan 0
     put #var ToLethDeriel 0
     # Variables to tell how many contracts I have from each outpost.
     put #var FromDirge 0
     put #var FromStoneClan 0
     put #var FromArtheDale 0
     put #var FromCrossing 0
     put #var FromTigerClan 0
     put #var FromWolfClan 0
     put #var FromLethDeriel 0
     # Variable to keep track of thefts.
     put #var Current.Thefts 0
     # Variables to calculate cost and profit of current contract.
     put #var Current.Worth 0
     put #var Current.Wholesale.Cost 0
     put #var Current.Transport.Cost 0
     put #var Current.Dues 0
     put #var Current.Total.Cost 0
     put #var Current.Cost 0
     put #var Current.Profit 0
     # Variables to calculate cost and profit of current session.
     put #var Total.Worth 0
     put #var Total.Wholesale.Cost 0
     put #var Total.Transport.Cost 0
     put #var Total.Dues 0
     put #var Total.Cost 0
     put #var Total.Profit 0
     # Variable to calculate number of completed contracts.
     put #var Total.Completed 0
     # Variable to echo start and destination of contracts.
     put #var To NULL
     put #var From NULL
     # Time Tracker Variables.
     put #var Begin.Date NULL
     put #var Begin.Time NULL
     # Incidental Variables.
     put #var End.Date NULL
     put #var End.Time NULL
     put #var Profit.Per.Contract 0
     # Save Variables, and abort the script.
     pause 0.3
     put #save variables
     pause 0.3
     put #script abort %Current.Script
     exit
##### ERROR MESSAGING
LABELERROR:
ERROR:
     pause 0.3
     echo
     echo ********************************
     echo ***** SOMETHING WENT WRONG *****
     echo ********************************
     pause 0.3
     put #script trace %Current.Script
     pause 0.3
     gosub QUIT
     put #script abort all
     exit
NO.CARAMONEY:
     pause 0.3
     echo
     echo *************************************************************
     echo ***** HAVE 400 KRONARS ON YOU, OR START IN THE CROSSING *****
     echo *************************************************************
     pause 0.6
     put #script abort %Current.Script
     exit
NO.CARAVAN:
     pause 0.3
     echo
     echo ********************************
     echo ***** GO FIND YOUR CARAVAN *****
     echo ********************************
     pause 0.3
     gosub QUIT
     put #script abort %Current.Script
     exit
USAGE:
     pause 0.3
     echo
     echo *****************************************************************************
     echo ***** START THIS SCRIPT AT ANY TRADER OUTPOST, OR AT THE CROSSING BANK. *****
     echo *****************************************************************************
     echo
     pause 0.3
     put #script abort %Current.Script
     exit
##### BASE ACTIONS
BASE.ACTIONS:
     action clear
     # Trigger to finish trading.
     action put #var Finish.Trading 1;put #save variables;put #statusbar 5 Finishing up. when ^What do you want to stop\?
     # Trigger to Feed Caravan.
     action var Caravan.Hunger 1 when ^The caravan driver watches with satisfaction as the animals in his care finish off the last of their feed\.$
     action var Caravan.Hunger 1 when ^The driver of your caravan calls over to you\, \"They are done with that last bit of feed, (?:sir|madam)\!\"$
     # Trigger to keep track of thefts while trading.
     action put #var Current.Thefts {#evalmath (Current.Thefts + 1)} when ^Oddly, your pouch seems suddenly heavier for a moment\.
     action put #echo >%Log $1 - Theft Success when ^You feel a faint tugging at your belt, and look down to find (.*) pulling .* hand out of your purse with some coins\.
     action put #echo >%Log $1 - Theft Attempt when ^You glance down and catch (.*) in the act of trying to pick your pocket\.  Fortunately you caught .* in time\.
     action put #echo >%Log $1 - Theft Attempt when ^You stop (.*) in .* act of trying to pick your pocket\.  It's a good thing you caught .* in time\!$
     # Triggers to calculate cost and profit of current session.
     action put #var Current.Transport.Cost $1 when transportation additions is (\d+) copper (?:Dokoras|Lirums|Kronars)\.
     action put #var Current.Dues $1 when Also I will charge you (\d+) in dues
     action put #var Current.Wholesale.Cost $1 when the wholesale price of (\d+) (?:Dokoras|Lirums|Kronars)
     action put #var Current.Worth $1 when goods are currently worth (\d+) (?:Dokoras|Lirums|Kronars) on delivery\.$
     # Triggers to stand up.
     action send STAND when eval $prone = 1
     action send STAND when eval $kneeling = 1
     action send STAND when eval $sitting = 1
     # Triggers to initiate Panic Exit subroutine.
     action goto EXIT.NOW when ^(\w+) reaches over and holds your hand\.$
     action goto EXIT.NOW when ^(\w+) clasps your hand tenderly\.$
     action goto EXIT.NOW when ^(\w+) grabs your arm and drags you.*\. \. \.$
     action goto EXIT.NOW when ^(\w+) grabs your arm and tries to drag you, but you resist and stand firm\.$
     action goto EXIT.NOW when eval $health < 50
     action goto EXIT.NOW when eval $webbed = 1
     action goto EXIT.NOW when eval $stunned = 1
     action goto EXIT.NOW when eval $bleeding = 1
     action goto EXIT.NOW when eval $diseased = 1
     action goto EXIT.NOW when eval $poisoned = 1
     return
##### PANIC EXIT SUBROUTINE
EXIT.NOW:
     action clear
     gosub QUIT
     pause 0.3
     echo
     echo ********************************
     echo ***** PANIC EXIT INITIATED *****
     echo ********************************
     echo
     pause 0.3
     put #script abort %Current.Script
     exit
##### QUIT SUBROUTINE
QUIT:
     matchre QUIT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?|^Sorry\,
     matchre RETURN ^\[\d+\:\d+\] Connection closed\.
     put QUIT
     matchwait
##### GENERIC RETURN
RETURN:
     return
##### INCLUDES SETUP
INCLUDES:
     include tradetrain.inc
##### END OF SCRIPT
