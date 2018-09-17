#debuglevel 5
action goto JAILED when Guard House, Jail Cell|Gallows Tree, Dungeon
var XING_GENERAL scabbard
var XING_WEAPON rapier
var XING_ARMOR target shield
var XING_MUSIC lyre
var XING_CLERIC vial
var XING_JEWELRY pendant
var XING_CLOTH scarf
var XING_SHOE tights
var XING_HERB sufil sap
var ARTHE_PATTERN bobbin
var ARTHE_FASHION muffler
var ARTHE_ODDS choker
var ARTHE_BALLAD chant of the dark gods
var LETH_SKIN cougar pelt
var LETH_BOW sling
var LETH_ORIGAMI primer
var LETH_WEAPON nothing
var LETH_WICKER basket
var LETH_BARD recorder
var LETH_CLOTHES blouse
var LETH_WOOD nothing
var LETH_GENERAL dice
var LETH_PERFUME nothing

var container1 backpack
var container2 backpack
var khri1 focus
var khri2 prowess
var khri3 plunder
var khri4 

action var CONCENTRATION $1 when Max: (\d+)
put info
waitfor Encumbrance
action remove Max: (\d+)

START:
	var LOCATION Crossing
ARMOR_CHECK:
		matchre REMOVE_AND_STOW_1 (leathers|glove|handguards|helm|shirt|coat|hood|collar|aventail|greaves|vambraces|shield|buckler|\btarge\b|coif|cowl|gauntlet|half plate|lorica|breastplate|armor|hauberk|field plate|tasset|mask|pants)
		matchre KNUCKLE_CHECK You have nothing of that sort|You aren't wearing
	put inv armor
	matchwait

REMOVE_AND_STOW_1:
	var armor $0
REMOVE_ARMOR_1:
	var LAST REMOVE_ARMOR_1
		matchre PAUSE ^\.\.\.wait|^Sorry, you may only type
		matchre STOW_ARMOR_1 ^You remove|^You loosen the straps securing|^You take|^You slide
		matchre STOW_ARMOR_1 ^You sling|^You work your way out of|^You pull
	put remove %armor
	matchwait
STOW_ARMOR_1:
	var LAST STOW_ARMOR_1
		matchre PAUSE ^\.\.\.wait|^Sorry, you may only type
		match ARMOR_CHECK You put your
		matchre STOW_ARMOR_2 any more room in|closed|no matter how you arrange
	put put %armor in my %container2
	matchwait	
STOW_ARMOR_2:
	var LAST STOW_ARMOR_2
		matchre PAUSE ^\.\.\.wait|^Sorry, you may only type
		match ARMOR_CHECK You put your
		matchre NO_MORE_STOWING any more room in|closed|no matter how you arrange
	put put %armor in my %container1
	matchwait

NO_MORE_STOWING:
	echo **   No more room for stowing; gonna just go for it   **
	put wear %armor
	goto KNUCKLE_CHECK

KNUCKLE_CHECK:
		matchre REMOVE_AND_STOW_1 (knuckles)
		match COOKIE Encumbrance
	put inv weapon;enc
	matchwait

PAUSE:
	pause
	goto %LAST

COOKIE:
		matchre COOKIE_RETURN Focusing intently, you mentally weave together|You're already using|With intense focus
		matchre COOKIE_BREAK You strain, but cannot focus|You have not recovered from
	put khri start %khri1 %khri2 %khri3 %khri4
	matchwait

COOKIE_BREAK:
	if ($hidden != 1) then gosub hide
	pause 60
	goto COOKIE

COOKIE_RETURN:
	if ("%LOCATION" = "Leth Deriel") then goto LETH_TO_SKIN

GAP_TO_GENERAL:
	var LAST GAP_TO_GENERAL
	gosub hide
	# Auto walk to the Crossing General Store
	put #goto General
	waitfor *** DONE ***
	goto CROSSING_GENERAL_STORE

CROSSING_GENERAL_STORE:
	var SHOP Crossing General Store
	if ($hidden != 1) then gosub hide
	gosub steal backpack
	if ("$righthandnoun" != "backpack") then 
	{
		put swap
		pause 1
	}
	gosub steal %XING_GENERAL
	pause
	put put %XING_GENERAL in backpack
	gosub hide
	goto GEN_TO_WEAPON

GEN_TO_WEAPON:
	# Auto walk to the Crossing Weaponsmith
	put #goto Weapons
	waitfor *** DONE ***
	goto CROSSING_WEAPON

CROSSING_WEAPON:
	var SHOP Crossing Weapon Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_WEAPON
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto WEAPON_TO_ARMOR

WEAPON_TO_ARMOR:
	var LAST WEAPON_TO_ARMOR
	# Auto walk to the Crossing Armorsmith
	put #goto Armor
	waitfor *** DONE ***
	goto CROSSING_ARMOR

CROSSING_ARMOR:
	var SHOP Crossing Armor Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_ARMOR
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto ARMOR_TO_MUSIC

ARMOR_TO_MUSIC:
	var LAST ARMOR_TO_MUSIC
	# Auto walk to the Crossing Bard Shop
	put #goto Bard Shop
	waitfor *** DONE ***	
	goto CROSSING_MUSIC

CROSSING_MUSIC:
	var SHOP Crossing Music Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_MUSIC
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto MUSIC_TO_CLERIC

MUSIC_TO_CLERIC:
	var LAST MUSIC_TO_CLERIC
	# Auto walk to the Crossing Cleric Store
	put #goto Cleric Shop
	waitfor *** DONE ***	
	goto CROSSING_CLERIC

CROSSING_CLERIC:
	var SHOP Crossing Cleric Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_CLERIC
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto CLERIC_TO_JEWELRY

CLERIC_TO_JEWELRY:
	var LAST CLERIC_TO_JEWELRY
	# Auto walk to the Crossing Jewelry Store
	put #goto Jewelry Shop
	waitfor *** DONE ***
	goto CROSSING_JEWELRY

CROSSING_JEWELRY:
	var SHOP Crossing Jewelry Shop
	if ($hidden != 1) then gosub hide	
	gosub steal %XING_JEWELRY
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto JEWEL_TO_CLOTHING

JEWEL_TO_CLOTHING:
	var LAST JEWEL_TO_CLOTHING
	# Auto walk to the Crossing Clothing Store
	put #goto Clothing Shop
	waitfor *** DONE ***
	goto CROSSING_CLOTHING

CROSSING_CLOTHING:
	var SHOP Crossing Clothing Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_CLOTH
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto JEWEL_TO_SHOE

JEWEL_TO_SHOE:
	var LAST JEWEL_TO_SHOE
	# Auto walk to the Crossing Shoe Store
	put #goto Shoe Shop
	waitfor *** DONE ***
	goto CROSSING_SHOES

CROSSING_SHOES:
	var SHOP Crossing Shoe Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_SHOE
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto SHOE_TO_HERBS

SHOE_TO_HERBS:
	var LAST SHOE_TO_HERBS
	# Auto walk to the Crossing Herb Store
	put #goto Herb Shop
	waitfor *** DONE ***
	goto CROSSING_HERBS

CROSSING_HERBS:
	var SHOP Crossing Herb Shop
	if ($hidden != 1) then gosub hide
	gosub steal %XING_HERB
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto HERB_TO_ALCHEMICAL

HERB_TO_ALCHEMICAL:
	var LAST HERB_TO_ALCHEMICAL
	# Auto walk to the Crossing Alchemy Store
	put #goto Alchemy Shop
	waitfor *** DONE ***
	goto CROSSING_ALCHEMICAL

CROSSING_ALCHEMICAL:
	var SHOP Crossing Alchemy Shop
	if ($hidden != 1) then gosub hide
	gosub steal cauldron
	pause
	put put backpack in cauldron
	if ("$righthandnoun" != "cauldron") then 
	{
		put swap
		pause 1
	}
	gosub hide
	goto CHEMICAL_TO_ARTHE

CHEMICAL_TO_ARTHE:
	var LAST CHEMICAL_TO_ARTHE
	# Auto walk to outside the Crossing Northeast Gate
	put #goto North Gate
	waitfor *** DONE ***
	put go arch
	pause 1
	if $hidden = 1 then put unhid
	# Auto walk to NTR
	put #goto 99
	waitfor *** DONE ***
	# Auto walk to the Arthe Dale
	put #goto Arthe Dale
	waitfor *** DONE ***
	move go gate
	gosub hide	
	# Auto walk to the Arthe Dale Pattern shop
	put #goto embroidery
	waitfor *** DONE ***
	goto ARTHE_PATTERNS

ARTHE_PATTERNS:
	var SHOP Arthe Dale Pattern Shop
	if ($hidden != 1) then gosub hide
	gosub steal %ARTHE_PATTERN
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto PATTERNS_TO_FASHION

PATTERNS_TO_FASHION:
	var LAST PATTERNS_TO_FASHION
	# Auto walk to the Arthe Dale Fashion shop
	put #goto phoebe
	waitfor *** DONE ***
	goto ARTHE_FASHION	
	
ARTHE_FASHION:
	var SHOP Arthe Dale Fashion Shop
	pause 1
	if ($hidden != 1) then gosub hide
	gosub steal %ARTHE_FASHION
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto FASHION_TO_ODDS

FASHION_TO_ODDS:
	var LAST FASHION_TO_ODDS
	# Auto walk to the Arthe Dale Odds'n'Ends store
	put #goto Odds
	waitfor *** DONE ***
	goto ARTHE_ODDS

ARTHE_ODDS:
	var SHOP Arthe Dale Odds'n'Ends Shop
	pause 1
	if ($hidden != 1) then gosub hide
	gosub steal %ARTHE_ODDS
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto ODDS_TO_BALLADS

ODDS_TO_BALLADS:
	var LAST ODDS_TO_BALLADS
	# Auto walk to the Arthe Dale Song shop
	put #goto Bard
	waitfor *** DONE ***
	goto ARTHE_BALLADS

ARTHE_BALLADS:
	var SHOP Arthe Dale Ballads Shop
	pause 1
	if ($hidden != 1) then gosub hide
	gosub steal %ARTHE_BALLAD
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LEAVE_ARTHE

LEAVE_ARTHE:
	put khri stop
	var LAST LEAVE_ARTHE
	# Auto walk to outside the Arthe Dale gate
	put #goto Village Gate
	waitfor *** DONE ***
	put go gate
	pause 1
	# Auto walk to the NTR-North Gate area connect
	put #goto 81
	waitfor *** DONE ***
	# Auto walk to inside the Crossing North Gate
	put #goto 24
	waitfor *** DONE ***
	gosub hide
HEAD_TO_LETH:
	var LOCATION Leth Deriel
	# Auto walk to the 5th passage
	put #goto 5th passage
	waitfor *** DONE ***
	put go trapdoor
	pause 0.5
	put go river
	pause .5
	move w
	pause .5
	move n
	pause .5
	put go panel
	# Auto walk to the South Trade Route
	put #goto 50
	waitfor There isn't any way to do that here
	move sw
	waitfor *** DONE ***
	# Auto walk to Leth Deriel
	put #goto 57
	waitfor *** DONE ***
	put #goto 114
	waitfor *** DONE ***
	gosub hide
	goto COOKIE

LETH_TO_SKIN:
	var LAST LETH_TO_SKIN
	# Auto walk to the Leth Skin Shop
	put #goto Skin
	waitfor *** DONE ***
	goto LETH_SKIN_SHOP

LETH_SKIN_SHOP:
	var SHOP Leth Skin Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_SKIN
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_SKIN_TO_BOWYER

LETH_SKIN_TO_BOWYER:
	var LAST LETH_SKIN_TO_BOWYER
	# Auto walk to the Leth Bowyer
	put #goto Bowyer
	waitfor *** DONE ***
	goto LETH_BOWYER

LETH_BOWYER:
	var SHOP Leth Bowyer
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_BOW
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_BOWYER_TO_ORIGAMI

LETH_BOWYER_TO_ORIGAMI:
	var LAST LETH_BOWYER_TO_ORIGAMI
	# Auto walk to the Leth Origami Shop
	put #goto Origami
	waitfor *** DONE ***
	goto LETH_ORIGAMI_SHOP

LETH_ORIGAMI_SHOP:
	var SHOP Leth Origami Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_ORIGAMI
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	#goto LETH_ORIGAMI_TO_WEAPON
	goto LETH_WEAPON_TO_WICKER

LETH_ORIGAMI_TO_WEAPON:
	var LAST LETH_ORIGAMI_TO_WEAPON
	# Auto walk to the Leth Weapon Shop
	put #goto Weapon
	waitfor *** DONE ***
	goto LETH_WEAPON_SHOP

LETH_WEAPON_SHOP:
	var SHOP Leth Weapon Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_WEAPON
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_WEAPON_TO_WICKER

LETH_WEAPON_TO_WICKER:
	var LAST LETH_WEAPON_TO_WICKER
	# Auto walk to the Leth Wicker Shop
	put #goto Wicker
	waitfor *** DONE ***
	goto LETH_WICKER_SHOP

LETH_WICKER_SHOP:
	var SHOP Leth Wicker Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_WICKER
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_WICKER_TO_BARD

LETH_WICKER_TO_BARD:
	var LAST LETH_WICKER_TO_BARD
	# Auto walk to the Leth Bard Shop
	put #goto Bard
	waitfor *** DONE ***
	goto LETH_BARD_SHOP

LETH_BARD_SHOP:
	var SHOP Leth Bard Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_BARD
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_BARD_TO_CLOTHES

LETH_BARD_TO_CLOTHES:
	var LAST LETH_BARD_TO_CLOTHES
	# Auto walk to the Leth Clothes Shop
	put #goto clothing
	waitfor *** DONE ***
	goto LETH_CLOTHES_SHOP

LETH_CLOTHES_SHOP:
	var SHOP Leth Clothes Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_CLOTHES
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_CLOTHES_TO_WOOD

LETH_CLOTHES_TO_WOOD:
	var LAST LETH_CLOTHES_TO_WOOD
	# Auto walk to the Leth Wood Shop
	put #goto Wood
	waitfor *** DONE ***
	goto LETH_WOOD_SHOP

LETH_WOOD_SHOP:
	var SHOP Leth Wood Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_WOOD
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_WOOD_TO_GENERAL

LETH_WOOD_TO_GENERAL:
	var LAST LETH_WOOD_TO_GENERAL
	# Auto walk to the Leth General Store
	put #goto General
	waitfor *** DONE ***
	goto LETH_GENERAL_STORE

LETH_GENERAL_STORE:
	var SHOP Leth General Store
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_GENERAL
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_GENERAL_TO_PERFUME

LETH_GENERAL_TO_PERFUME:
	var LAST LETH_GENERAL_TO_PERFUME
	# Auto walk to the Leth Perfume Shop
	put #goto Perfume
	waitfor *** DONE ***
	goto LETH_PERFUME_SHOP

LETH_PERFUME_SHOP:
	var SHOP Leth Perfume Shop
	if ($hidden != 1) then gosub hide
	gosub steal %LETH_PERFUME
	pause
	if ("$lefthandnoun" != "Empty") then put put $lefthandnoun in backpack
	gosub hide
	goto LETH_TO_CROSSING

LETH_TO_CROSSING:
	var LAST LETH_TO_CROSSING
	# Auto walk to the South Trade Route
	put #goto 115
	waitfor *** DONE ***
	put unhide
	# Auto walk to 5th Passage Entrance
	put #goto 108
	waitfor *** DONE ***
	# Auto walk to Crossing via 5th Passage
	put #goto 21
	waitfor There isn't any way to do that here
	put down
	waitfor *** DONE ***
	
GO_BIN_STUFF:
	var LAST GO_BIN_STUFF
	put khri stop
	gosub hide
	# Auto walk to the Thief Guild Area
	put #goto prison
	waitfor *** DONE ***
	put unhid
	pause 1
	move e
	pause .5
	move e
	pause .5
	move e
	pause .5
	move n
	pause .5
	move w
	pause .5
	move w
	pause .5
	move w
	pause .5
	put go ruin
	pause .5
	move w
	pause .5
	put go space
	pause .5
	goto BIN_STUFF
	
BIN_STUFF:
	echo 
	echo ##################  This man..erm get all my coin  ##################
	echo 				
	pause 1
	put get backpack from cauldron
	waitforre You get|What were you referring
	gosub bin cauldron
	gosub bin %XING_WEAPON
	gosub bin helm
	gosub bin scroll
	gosub bin %XING_GENERAL
	gosub bin %XING_CLERIC
	gosub bin %XING_JEWELRY
	gosub bin %XING_CLOTH
	gosub bin %XING_SHOE
	gosub bin %XING_HERB
	gosub bin %ARTHE_PATTERN
	gosub bin %ARTHE_FASHION
	gosub bin %ARTHE_ODDS
	gosub bin scroll
	gosub bin %LETH_SKIN
	gosub bin %LETH_BOW
	gosub bin %LETH_ORIGAMI
	#gosub bin %LETH_WEAPON
	gosub bin %LETH_WICKER
	gosub bin %LETH_BARD
	gosub bin %LETH_CLOTHES
	gosub bin %LETH_WOOD
	gosub bin %LETH_GENERAL
	gosub bin %LETH_PERFUME
	gosub bin backpack
	pause 2

	goto FINISH

JAILED:
	echo
	echo You've been pinched!
	echo  Waiting to be sentenced!
	echo
	put #echo >log Red YOU'VE BEEN ARRESTED!!!
	put #beep;#beep
	waitfor PLEAD INNOCENT or PLEAD GUILTY
	put plead guilty
	GET_SACK:
			match SACK see a sack
			match DEBT You glance down at your empty hands
		put glance
		matchwait
	SACK:
			match OPEN_SACK That is closed.
			matchre GET_SACK_ITEM (\S+)(\.)
			match NO_MORE_ITEMS There is nothing in there.
		put look in my sack
		matchwait
	OPEN_SACK:
		put open sack
		pause
		goto SACK
	GET_SACK_ITEM:
		pause
		if $1 = there then goto NO_MORE_ITEMS
		put get my $1 from my sack
		pause
		if (("$1" = "backpack")||("$1" = "cauldron")) then
		{
			pause 0.5
		} else
		{
			put wear my $1
		}
		goto SACK
	NO_MORE_ITEMS:
		put drop sack

	echo
	echo **** Returning to what you were doing ****
	echo
	if ("$lefthand" != "Empty" && "$lefthandnoun" != "backpack" && "$lefthandnoun" != "cauldron") then put stow left
	if ("$righthand" != "Empty" && "$righthandnoun" != "backpack" && "$righthandnoun" != "cauldron") then put stow right

	goto %LAST

DEBT:
	echo
	echo **** Did not have enough money to pay the fine ****
	echo
	gosub clear
	# Walking to the bank to get moneys
	put #goto Teller
	waitfor *** DONE ***
	FINECHECK:
			matchre SET_FINE /You owe (\d+) copper Kronars/i
			match NO_FINE You have:
		put wealth
		matchwait	
	SET_FINE:
		pause 0.5
		setvariable fine $1
		if %FINE > 100000 then goto BIG_FINE
		put withdraw %FINE copper kronar
		goto PAY_DEBT
	BIG_FINE:
		math fine divide 2
		pause 1
		put withdraw %FINE copper kronar
		pause 1
		put withdraw %FINE copper kronar
		goto PAY_DEBT
	NO_FINE:
		echo 
		echo  You have no fine
		echo 
		goto RETURN_TO_JAIL
	PAY_DEBT:
		# Walking to pay off the debt
		put #goto Debt Collector
		waitfor *** DONE ***
		put pay %FINE
		pause
	RETURN_TO_JAIL:
		echo
		echo **** Heading back to jail now ****
		echo
		# Walking to the Guard House
		put #goto Guard House
		waitfor *** DONE ***
		put get $charactername sack
		goto GET_SACK

FINISH:
	gosub REWEAR_ARMOR
	# Leaving the guild
	put #goto 12
	waitfor *** DONE ***
	gosub hide
	# Heading back to the bank
	put #goto bank
	waitfor *** DONE ***
	pause 1
	put #parse DONE STEALING
	put look
	exit

###################
##               ##
## Useful Gosubs ##
##               ##
###################	
bin:
	var bin_item $0
get_item:
		matchre get_item_pause \.\.\.wait|^Sorry, you may only type
		matchre bin_item You get|You are already|You pick up
		matchre bin_return What were you referring|^Please rephrase that command
	put get %bin_item
	matchwait
get_item_pause:
	pause
	goto get_item
bin_item:
		matchre bin_item_pause \.\.\.wait|^Sorry, you may only type	
		matchre return ^A bored-looking Human boy says
		match bin_drop is about as cold as it gets, and
		matchre bin_return ^Please rephrase that command
	put put %bin_item in bin
	matchwait
bin_item_pause:
	pause
	goto bin_item
bin_drop:
	put drop %bin_item
	pause 0.5
	return
bin_return:
	pause 0.5
	return
	
hide:
		matchre hide_pause ^\.\.\.wait|^Sorry, you may only type|fail|You are too close
		matchre hide notices your attempt|reveals you|ruining your hiding place
		matchre return ^You melt|^You blend|^Eh\?|^You slip|^Roundtime
	put hide
	matchwait
hide_pause:
	pause
	goto hide
	
sneak:
	var direction $0
sneaking:
		matchre sneak_pause ^\.\.\.wait|^Sorry, you may only type
		matchre return Roundtime|You sneak|You duck
	put sneak %direction
	matchwait
sneak_pause:
	pause
	goto sneaking
	
steal:
	var item $0
	action put #echo >log Lime Not learning stealing from %item in %SHOP when You don't feel you learned anything useful from this trivial theft
	action put #echo >log Red You were caught in %SHOP when notices you attempting to make the grab and begins to shout for help|Guards\! Guards\!|begins to shout loudly for help
marking:
		matchre mark_pause ^\.\.\.wait|^Sorry, you may only type
		matchre steal_return Mark what\?|You can not make marks on
		matchre too_hot looking for a reason to call the guards|beyond foolish|you're pretty sure you'll be caught|it would likely be futile|gavel echoes through your mind|feel the taste of bitter failure|Guards! Guards!
		matchre stealing Roundtime|to take unwanted notice of you
	put mark %item
	matchwait
mark_pause:
	pause
	goto marking
stealing:
		matchre steal_pause ^\.\.\.wait|^Sorry, you may only type
		matchre steal_return Roundtime|You haven't picked something|You can't steal here|for help\.|realize that you are being watched
	put steal %item
	matchwait
steal_pause:
	pause
	goto stealing
too_hot:
	put #echo >log Lime Not going to steal from %SHOP, too much heat
steal_return:
	action remove You don't feel you learned anything useful from this trivial theft
	action remove notices you attempting to make the grab and begins to shout for help.
	return

REWEAR_ARMOR:
ARMOR_CHECK1:
		matchre WEAR_ARMOR (leathers|balaclava|glove|handguards|helm|shirt|coat|hood|collar|aventail|greaves|vambraces|shield|buckler|\btarge\b|coif|cowl|mitt|gauntlet|half plate|lorica|breastplate|armor|hauberk|field plate|tasset|mask|pants|sallet|cap)
		matchre WEAR_ARMOR (gorget|armband|jerkin|vest|tunic|gambeson|jacket|guards|legbands|brigadine|bracers|cuirass|legwraps|collar|haqueton|barmail|legguards|veil|waistguard|armguards|chausses|barbute|armet|casque|bascinet|shynbalds|corselet|ringmail)
		match WEAR_ARMOR (knuckles)
		match ARMOR_CHECK2 Encumbrance
	put look in my %container1;enc
	matchwait

ARMOR_CHECK2:
		matchre WEAR_ARMOR (leathers|balaclava|glove|handguards|helm|shirt|coat|hood|collar|aventail|greaves|vambraces|shield|buckler|\btarge\b|coif|cowl|mitt|gauntlet|half plate|lorica|breastplate|armor|hauberk|field plate|tasset|mask|pants|sallet|cap)
		matchre WEAR_ARMOR (gorget|armband|jerkin|vest|tunic|gambeson|jacket|guards|legbands|brigadine|bracers|cuirass|legwraps|collar|haqueton|barmail|legguards|veil|waistguard|armguards|chausses|barbute|armet|casque|bascinet|shynbalds|corselet|ringmail)
		match WEAR_ARMOR (knuckles)
		match return Encumbrance
	put look in my %container2;enc
	matchwait

WEAR_ARMOR:
	var armor $1
	GET_IT:
			matchre WEAR_IT You work|You remove|You pull|You take|You get|But that is
		put get my %armor
		matchwait
	WEAR_IT:
			matchre ARMOR_CHECK1 ^You sling|^You attach|^You put|^You strap|^You work your way into|^You slide
			matchre ARMOR_CHECK1 ^You hang|^You slip|^You drape|^You are already wearing that\.
		put wear my %armor
		matchwait

return:
	return

################
##            ##
## End Gosubs ##
##            ##
################