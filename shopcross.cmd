start:
put #class racial on
put #class rp on
put #class shop on
put #class arrive off
put #class combat off
put #class joust off
put #var currency Kronars
put #var ShopCity Crossing
var Order 0
put avoid !drag
waitforre ^You're now avoiding
put avoid !hold
waitforre ^You're now avoiding
put avoid !dancing
waitforre ^You're now avoiding
send stop play
waitforre ^You stop playing your song|^In the name of love|^But you're not performing anything
put .close
waitfor SCRIPT DONE
put .gametime
waitfor GAMETIME SCRIPT DONE
send research status
waitforre ^You believe that you're|^You have completed.+of a project about|^You're not researching anything
if $researchproject != NOTSET then send research $researchproject 300

put #echo >Log start logging Crossing shop inventory
send read listings board
waitforre shops? (is|are) open\.$

put #log >Shoplog.txt The following items are sold at Crossing's Market Plaza and are priced in copper Kronars [$date $time]:
put #log >Shoplist-Elanthipedia.txt ===Crossing's Market Plaza===
put #log >Shoplist-Elanthipedia.txt Last Updated: $GameDate ($date)
put #log >Shoplist-Elanthipedia.txt <br />
put #log >Shoplist-Elanthipedia.txt {|class="wikitable sortable"
put #log >Shoplist-Elanthipedia.txt |-
put #log >Shoplist-Elanthipedia.txt !Shop Name!!Owner!!Opens!!Closes!!Room

action setvariable ShopName $1;setvariable ShopOwner $2;setvariable ShopOpen $3 $4;setvariable ShopClose $5 $6 when ^'(.+)' is owned by (\S+) and will be open between (\d+)([ap]m) and (\d+)([ap]m) Eastern time
action setvariable ShopName $1's Shop;setvariable ShopOwner $1;setvariable ShopOpen $2 $3;setvariable ShopClose $4 $5 when ^'(\w+)'s Shop' will be open between (\d+)([ap]m) and (\d+)([ap]m) Eastern time
action setvariable ShopName $1;setvariable ShopOwner $2;setvariable ShopOpen variable;setvariable ShopClose variable when ^'(.+)' is owned by (\S+) and will be open whenever \S+ is in attendance
action setvariable ShopName $1's Shop;setvariable ShopOwner $1;setvariable ShopOpen variable;setvariable ShopClose variable when ^'(\w+)'s Shop' will be open whenever \S+ is in attendance
action setvariable ShopName $1's Shop;setvariable ShopOwner $1;setvariable ShopOpen variable;setvariable ShopClose variable when ^'(\w+)'s Shop' will be open whenever the owner is in attendance
action setvariable RoomName $1 when ^\[Market Plaza, (.+)\]$
action setvariable RoomName $2 when ^\[Market Plaza (Cellar|Upstairs), (.+)\]$
action math Order add 1;put #log >Shoplist-Elanthipedia.txt |-|%ShopName||[[%ShopOwner]]||%ShopOpen||%ShopClose||%RoomName;put #log >Shoplist.txt %Order	$ShopCity	%RoomName	%ShopName	%ShopOwner	%ShopOpen	%ShopClose when It is currently (open|closed)\.$

move north

Sun_Room:
gosub arch
gosub door
gosub entrance
move east

Water_Room:
gosub arch
gosub door
gosub entrance
move northeast

Grass_Room:
gosub arch
gosub door
gosub entrance
move northwest

Solarium:
gosub arch
gosub door
gosub entrance
move southwest
move northwest

Forest_Room:
gosub arch
gosub door
gosub entrance
move southwest

Dimly-Lit_Storage:
gosub arch
gosub door
gosub entrance
move southeast

Meeting_Room:
gosub arch
gosub door
gosub entrance
move east
move southeast

Moon_Room:
gosub arch
gosub door
gosub entrance
move east

Armor_Room:
gosub arch
gosub door
gosub entrance
move west
move south

Lodge_Room:
gosub arch
gosub door
gosub entrance
move north
move northwest
move southwest

Gladiolus_Room:
gosub arch
gosub door
gosub entrance
move west

Fire_Room:
gosub arch
gosub door
gosub entrance
move east
move south

Library:
gosub arch
gosub door
gosub entrance
move north
move northeast
move go spiral ramp

Volcano_Room:
gosub arch
gosub door
gosub entrance
move east

Palm_Room:
gosub arch
gosub door
gosub entrance
move northeast

Ocean_Room:
gosub arch
gosub door
gosub entrance
move northwest

Tundra_Room:
gosub arch
gosub door
gosub entrance
move southwest

Jungle_Room:
gosub arch
gosub door
gosub entrance
move northwest

Savannah_Room:
gosub arch
gosub door
gosub entrance
move southwest

Desert_Room:
gosub arch
gosub door
gosub entrance
move southeast

River_Room:
gosub arch
gosub door
gosub entrance
move east
move go spiral ramp
move climb marble staircase

Tasting_Room:
gosub arch
gosub door
gosub entrance
move north

Bottle_Room:
gosub arch
gosub door
gosub entrance
move north

Stomping_Room:
gosub arch
gosub door
gosub entrance
move east

Barrel_Room:
gosub arch
gosub door
gosub entrance
move west
move north

Fermentation_Room:
gosub arch
gosub door
gosub entrance
move south
move west

Cooper_Room:
gosub arch
gosub door
gosub entrance
move east
move south
move south
move climb marble staircase
move south
goto done

arch:
setvariable portal arch
send look arch
matchre shopinv ^'.+'.+It is currently open\.$
matchre return It is currently closed\.$|^An attendant approaches you and says
matchwait 2
return

door:
setvariable portal door
send look door
matchre shopinv ^'.+'.+It is currently open\.$
matchre return It is currently closed\.$|^An attendant approaches you and says
matchwait 2
return

entrance:
setvariable portal entrance
send look entrance
matchre shopinv ^'.+'.+It is currently open\.$
matchre return It is currently closed\.$|^An attendant approaches you and says
matchwait 2
return

shopinv:
move go %portal
put .shop2
waitfor SCRIPT DONE
move out
return

return:
return

done:
put #log >Shoplist-Elanthipedia.txt |}
put #log >Shoplist-Elanthipedia.txt
put #echo >Log finish logging Crossing shop inventory
put #class arrive off
put #class shop off
put .open
waitfor SCRIPT DONE
put #play ScriptEnd
put #flash
put #parse SHOP SCRIPT DONE
exit