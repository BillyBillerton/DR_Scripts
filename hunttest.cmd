initialize:
counter set 0
var SKIN 0
var BOXES 0
var BUFF 0
var BUFFDONE 0
action (buff) off
var SPELL fs
var PREP 8
var armor1 chain shirt
var armor2 balaclava
var armor3 shield
var armor4 gloves
var BUFFSPELL1 sw
var BUFFSPELL2 suf
var BUFFSPELL3 ys
var BUFFSPELL4 ignite
var BUFFSPELL5 null
var PATH damage
var extra 0
var gems1 agate|alexandrite|amber|amethyst|andalusite|aquamarine|bead|beryl|bloodgem|bloodstone|carnelian|chrysoberyl|carnelian|chalcedony
var gems2 chrysoberyl|chrysoprase|citrine|coral|crystal|diamond|diopside|emerald|egg|eggcase|garnet|gem|goldstone|glossy malachite
var gems3 (chunk of|some|piece of).*granite|hematite|iolite|ivory|jade|jasper|kunzite|lapis lazuli|malachite stone|minerals|moonstone|morganite|onyx
var gems4 opal|pearl|pebble|peridot|quartz|ruby|sapphire|spinel|star-stone|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon
var gweths (lantholite|waermodi|jadeite|lasmodi|sjatmal) stones
var boxtype brass|copper|deobar|driftwood|iron|ironwood|mahogany|oaken|pine|steel|wooden
var boxes coffer|crate|strongbox|caddy|casket|skippet|trunk|chest|\bbox
#action gosub DEADMONSTER when eval matchre ("$roomobjs", "((which|that) appears dead|\(dead\))")
var gosublist skin|loot|buff|scimitar|brawl|bola|shh|tm|extra
var SET 1

firstsetup:
	if matchre ("%1","%gosublist") then gosub %1 else goto VARIABLEERROR
	echo %weapon%c
	if_1 then goto firstsetup


setup:
	var SET 0
	var NUMWEAPONS %c
	counter set 1
	goto combatstart

weaponready:
	var CURRENTWEAPON %weapon%c
	put wield my %CURRENTWEAPON
	

VARIABLEERROR:
	echo *** ERROR WITH VARIABLE %1 ***
	echo *** PLEASE TRY AGAIN ***
	echo *** VALID ARGUMENTS ARE SKIN, BOXES, BUFF, and WEAPONS ***
	exit

# VARIABLE PARSING
extra:
	var extra 1
	shift
	return
skin:
	var SKIN 1
	shift
	return
loot:
	var BOXES 1
	shift
	return

buff:
	var BUFF 1
	action (buff) on
	shift
	return

scimitar:
	
	var COMBO1 feint
	var COMBO2 slice
	var COMBO3 circle
	var COMBO4 feint
	var COMBO5 slice
	var COMBO6 weave
	var COMBO7 feint
	var WEAPONXP Small_Edged
	if %SET = 0 then put stance parry
	pause 1
	if %SET = 1 then 
		{
			counter add 1
			var weapon%c scimitar
			shift
		}
	return
brawl:
	var WEAPONTYPE brawl
	var COMBO1 gouge
	var COMBO2 claw
	var COMBO3 circle
	var COMBO4 elbow
	var COMBO5 kick
	var COMBO6 punch
	var COMBO7 weave
	if %SET = 0 then put stance block
	var WEAPONXP Brawling
	if %SET = 1 then 
		{
			counter add 1
			var weapon%c brawl
			shift
		}
	return
bola:
	var WEAPONTYPE throw
	var COMBO1 throw
	var COMBO2 throw
	var COMBO3 throw
	var COMBO4 throw
	var COMBO5 throw
	var COMBO6 throw
	var COMBO7 throw
	if %SET = 0 then put stance block
	var WEAPONXP Light_Thrown
	if %SET = 1 then
		{
			counter add 1
			var weapon%c bola
			shift
		}
	return

shh:
	var WEAPONTYPE 2HE
	var COMBO1 feint
	var COMBO2 slice
	var COMBO3 circle
	var COMBO4 feint
	var COMBO5 feint
	var COMBO6 weave
	var COMBO7 feint
	if %SET = 0 then put stance parry
	var WEAPONXP Twohanded_Edged
	if %SET = 1 then 
		{
			counter add 1
			var weapon%c shh
			shift
		}
	return
tm:
	var WEAPONTYPE TM
	if %SET = 0 then put stance block
	var WEAPONXP Targeted_Magic
	if %SET = 1 then
		{
			counter add 1
			var weapon%c TM
			shift
		}
	return

DEADMONSTER:
		echo LOOTING
	if %SKIN = 1 then
		{
			put skin
			wait
			pause .5
			if ("$lefthandnoun" = (skin|hide|pelt|bone|vertebrae|tail) || "$righthandnoun" = (skin|hide|pelt|bone|vertebrae|tail)) then
			{
				put drop $1
				var SKIN 0
			}
		}
	if %BOXES = 0 then put loot treasure
	if %BOXES = 1 then
		{
			put loot
			pause .5
			if matchre ("$roomobjs", "(%boxtype) (%boxes)") then put stow $0
			if matchre ("$lefthand", "$2") then 
				{
					put drop $0
					var BOXES 0
				}
			if matchre ("$righthand", "$2") then 
				{
					put drop $0
					var BOXES 0
				}
		}
COINS:
	if matchre ("$roomobjs", "%gems1|%gems2|%gems3|gems4") then 
		{
			put stow gem
			pause .5
			goto coins
		}
	if matchre ("$roomobjs", coin) then 
		{
			put get coin
			pause .5
			goto coins
		}

	if matchre ("$roomobjs", card) then 
		{
			put stow card
			pause .5
			goto coins
		}
	if matchre ("$roomobjs", (scroll|tablet|bark|vellum)) then
		{
			put stow $1
			pause .5
			goto coins
		}
	put face next
	pause 1
	if "%weapon%c" = "bola" then goto throw
	if "%weapon%c" = "TM" then goto cast
	goto attack
	
POWER:
	put power
	wait
	pause .5
	if "%weapon%c" = "bola" then goto throw
	if "%weapon%c" = "TM" then goto cast
	goto attack

BUFFUP:
	if $mana < 75 then goto attack
	send ret
	pause .5
	send ret
	pause .5
	put prep sw 10
	pause .5
	put charge my armb 15
	wait
	pause .5
	put charge my armb 15
	wait
	pause .5
	put invoke my armb spell
	wait
	pause .5
	waitfor You feel fully prepared
	put cast
	pause 1
	put prep suf 10
	pause .5
	put charge my armb 15
	wait
	pause .5
	put charge my armb 15
	wait
	pause .5
	put invoke my armb spell
	wait
	pause .5
	waitfor You feel fully prepared
	put cast
	pause 1
	if "%weapon%c" = "scimitar|shh|bola" then
	{
	put prep ignite 10
	pause .5
	put charge my armb 15
	wait
	pause .5
	put charge my armb 15
	wait
	pause .5
	put invoke my armb spell
	wait
	pause .5
	waitfor You feel fully prepared
	put cast my %weapon%c
	}
	pause 1
	put prep ys 10
	pause .5
	put charge my armb 10
	wait
	pause .5
	put charge my armb 10
	wait
	pause .5
	put invoke my armb spell
	wait
	pause .5
	waitfor You feel fully prepared
	put cast
	timer clear
	timer start
	var BUFFDONE = 1
	if "%weapon%c" = "bola" then goto throw
	goto attack

stamina:
	if $stamina < 80 then 
		{
			wait 10
			goto stamina
			
		}
	if matchre ("$roomobjs", "((which|that) appears dead|\(dead\))") then goto DEADMONSTER
	if "%weapon%c" = "bola" then goto throw
	goto attack

mana: 
	if $mana < 30 then
		{
			wait 10
			goto mana
		}
	if matchre ("$roomobjs", "((which|that) appears dead|\(dead\))") then goto DEADMONSTER
	goto cast

waitformonsters:
	if matchre ("$roomobjs", "((which|that) appears dead|\(dead\))") then goto DEADMONSTER
	if $monstercount = 0 then
		{
			wait 5
			goto waitformonsters
		}
	if "%weapon%c" = "TM" then goto MAGIC
	if "%weapon%c" = "bola" then goto throw
	goto attack

advancewait:
	wait 5
	goto attack

combatstart:
	if %c = %NUMWEAPONS then goto WEAPONSDONE
	gosub %weapon%c
	put stow left
	pause .5
	put stow right
	pause .5
	if "%weapon%c" = "bola" then goto throw
	if "%weapon%c" = "TM" then goto MAGIC
	if "%weapon%c" != "brawl" then put wield my %weapon%c
	pause 1
	timer start
	if %BUFFDONE = 0 then 
		{
			if %BUFF = 1 then goto BUFFUP
		}

	

attack:
	echo %t
	action goto POWER when eval "%t" = "60"
#	action goto DEADMONSTER when eval matchre ("$roomobjs", "((which|that) appears dead|\(dead\))")
	action (buff) goto BUFFUP when eval "%t" = "900"
	action goto waitformonsters when eval $monstercount = 0
	action goto advancewait when You aren't close enough
	if $%WEAPONXP.LearningRate > 30 then goto nextweapon
	put %COMBO1
	wait
	pause .5
	put %COMBO2
	wait
	pause .5
	put %COMBO3
	wait
	pause .5
	put %COMBO4
	wait
	pause .5
	put %COMBO5
	wait
	pause .5
	put %COMBO6
	wait
	pause .5
	put %COMBO7
	wait
	pause .5
	goto stamina

throw:
	action goto POWER when eval %t > 60
#	action goto DEADMONSTER when eval matchre ("$roomobjs", "((which|that) appears dead|\(dead\))")
	action (buff) goto BUFFUP when eval %t > 900
	action goto nextweapon when eval $%WEAPONXP.LearningRate > 30
	action goto waitformonsters when eval $monstercount = 0
	if "$righthandnoun" != "bola" then put get bola
	pause .5
	put throw
	wait
	pause .5
	put get bola
	pause .5
	if $%WEAPONXP.LearningRate > 30 then goto nextweapon
	goto stamina

nextweapon:
	put ret
	put ret
	if ("%weapon%c" != "brawl" && "%weapon%c" != "TM") then put sheath my %weapon%c
	counter add 1
	goto combatstart
	
MAGIC:
	put path focus %PATH
	put prep subs 10
	put charge my armb 15
	wait
	pause .5
	put charge my armb 15
	wait
	pause .5
	put invoke my armb spell
	wait
	pause .5
	waitfor You feel fully prepared
	put cast
	pause 1
CAST:
	action goto POWER when eval %t > 60
#	action goto DEADMONSTER when eval matchre ("$roomobjs", "((which|that) appears dead|\(dead\))")
	action goto waitformonsters when eval $monstercount = 0
	put target %SPELL %PREP
	waitfor Your formation
	put cast
	pause 1
	if $Targeted_Magic.LearningRate > 30 then goto nextweapon
	goto mana

WEAPONSDONE:
	echo DONE TRAINING WEAPONS BOSS
	if %extra = 0 then exit
	
walktofiss:
	matchre ATFISS The slope ends abru
	matchre FISSRET You can't do that while
	put #goto 124
	matchwait
FISSRET:
	matchre walktofiss You retreat
	matchre fissret get away
	put retreat
	matchwait

atfiss:
	put rem %armor1
	pause .5
	put stow %armor1
	pause .5
	put rem %armor2
	pause .5
	put stow %armor2
	pause .5
	put rem %armor3
	pause .5
	put stow %armor3
	pause .5
	put rem %armor4
	pause .5
	put stow %armor4
	pause .5
sellhides:
	pause 1
	put #goto 314
	waitfor Crates of furs and piles
	pause 1
	put rem bund
	pause 1
	put get hide
	pause 1
	put sell bund
	pause 1
	put bund
	pause 1
	put wear bund
	pause 1
	put #goto 8
	wait 5
	
disarmboxes:
	put .disarmsulli
	waitfor There is nothing in there
	#script abort disarmsulli
	

bank:
	put #goto 86
	waitfor Smooth mother-of-pearl
	put #goto 114
	waitfor Sitting behind a dark
	put exch all dok for lir
	pause 1
	put exch all kro for lir
	pause 1
	put e
	pause 1
	put dep all
	pause 1
	put bal
	pause 1
	put #goto 390
	waitfor Gentle terraces of tilled
	put #goto 64
	waitfor The trees cluster so densely
	put .warcast
	waitforre   Encumbrance :
rearm:
	put get my %armor1
	pause .5
	put wear my %armor1
	pause .5
	put get my %armor2
	pause .5
	put wear my %armor2
	pause .5
	put get my %armor3
	pause .5
	put wear my %armor3
	pause .5
	put get my %armor4
	pause .5
	put wear my %armor4
	pause .5
	
returntohunting:
	matchre starthuntingagain This deep within the glacier
	matchre returnret You can't do that while
	put #goto 124
	matchwait
returnret:
	matchre returntohunting You retreat
	matchre returnret get away
	put retreat
	matchwait


starthuntingagain:
	if matchre ("$roomplayers", "Also here:") then 
	{
		move up
		goto tryagain
	}
	goto startagain
tryagain:
	if matchre ("$roomplayers", "Also here:") then 
		{
			move w
			goto onemore
		}
	goto startagain
onemore:
	if matchre ("$roomplayers", "Also here:") then move d
		{	
			move d
			goto out
		}
	goto startagain
out:
	if matchre ("$roomplayers", "Also here:") then put quit

startagain:
	put .hunttest extra buff skin loot brawl shh bola tm scimitar
	exit