start:
put #class racial on
put #class rp on
put #class shop on
put #class arrive off
put #class combat off
put #class joust off
put #var currency Lirums
put #var ShopCity Riverhaven
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

put #echo >Log start logging Riverhaven shop inventory
send read listings board
waitforre shops? (is|are) open\.$

put #log >Shoplog.txt The following items are sold at Riverhaven's Knight's Hall and are priced in copper Lirums [$date $time]:
put #log >Shoplist-Elanthipedia.txt ===Riverhaven's Knight's Hall===
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
action setvariable RoomName $1 when ^\[Knight's Hall, (.+)\]$
action math Order add 1;put #log >Shoplist-Elanthipedia.txt |-|%ShopName||[[%ShopOwner]]||%ShopOpen||%ShopClose||%RoomName;put #log >Shoplist.txt %Order	$ShopCity	%RoomName	%ShopName	%ShopOwner	%ShopOpen	%ShopClose when It is currently (open|closed)\.$

move north

Rose_Room:
gosub arch
gosub door
gosub entrance
move north

Warrior_Room:
gosub arch
gosub door
gosub entrance
move north

Food_Plaza:
gosub arch
gosub door
gosub entrance
move north

Childrens_Room:
gosub arch
gosub door
gosub entrance
move south
move south
move south
move south
move northeast

Theatre_Room:
gosub arch
gosub door
gosub entrance
move northeast

World_Room:
gosub arch
gosub door
gosub entrance
move northeast

The_Back_Room:
gosub arch
gosub door
gosub entrance
move southwest
move southwest
move southwest
move northwest

Keep_Room:
gosub arch
gosub door
gosub entrance
move northwest

Dungeon_Room:
gosub arch
gosub door
gosub entrance
move northwest

Storage_Area:
gosub arch
gosub door
gosub entrance
move southeast
move southeast
move southeast
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
put #echo >Log finish logging Riverhaven shop inventory
put #class arrive off
put #class shop off
put .open
waitfor SCRIPT DONE
put #play ScriptEnd
put #flash
put #parse SHOP SCRIPT DONE
exit
