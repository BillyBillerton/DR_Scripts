var weapon3 twohandedge
var weapon1 brawl
var weapon4 lightthrown
var weapon2 smalledge
var weapon3_XP Twohanded_Edged
var weapon1_XP Brawling
var weapon4_XP Light_Thrown
var weapon2_XP Small_Edged
var totalweapons 4
var currentweapon none
counter set 1
echo %weapon%c
goto %weapon%c


twohandedge:
	pause .5
	put #script abort hunt
	pause .5
	put sheath my %currentweapon
	pause .5
	var currentweapon shh
	gosub meleebuff
	put .hunt lootall appr skin roam power feint shh
	goto weaponcheck

weaponcheck:
	echo %weapon%c
	echo %weapon%c_XP
	echo $%weapon%c_XP.LearningRate
	if $%weapon%c_XP.LearningRate < 30 then
	{
		wait 60
		goto weaponcheck
	}
	if %weapon%c = lightthrown then put stow bola
	counter add 1
	if %c > %totalweapons then counter set 1

	goto %weapon%c

heavyedge:
	pause .5
	put #script abort hunt
	pause .5
	put sheath my %currentweapon
	pause .5
	var currentweapon riste
	gosub meleebuff
	put .hunt lootall appr skin roam power feint swap e riste
	goto weaponcheck

smalledge:
	pause .5
	put #script abort hunt
	pause .5
	put sheath my %currentweapon
	pause .5
	var currentweapon scimitar
	gosub meleebuff
	put .hunt lootall appr skin roam power feint scimitar
	goto weaponcheck

brawl:
	pause .5
	put #script abort hunt
	pause .5
	put sheath my %currentweapon
	pause .5
	var currentweapon brawling
	put .hunt lootall appr skin roam power block brawl
	goto weaponcheck

lightthrown:
	#script abort hunt
	pause .5
	put sheath my %currentweapon
	pause .5
	var currentweapon bola
	gosub rangebuff
	put .hunt lootall appr skin roam power block throw bola
	goto weaponcheck

meleebuff:
	pause .5
	put wield my %currentweapon
	pause .5
	if $mana > 30 then
	{
	put prep ignite 15
	pause .5
	put charge my armb 15
	wait
	pause .5
	put invoke my armb
	waitfor You feel fully prepared
	put cast my %currentweapon
	pause 1
	}
		pause .5
	if $mana > 30 then
	{
	put prep sw 20
	pause .5
	put charge my armb 20
	wait
	pause .5
	put invoke my armb
	waitfor You feel fully prepared
	put cast
	pause 1
	}
		pause .5
	if $mana > 30 then
	{
	put prep suf 20
	pause .5
	put charge my armb 20
	wait
	pause .5
	put invoke my armb
	waitfor You feel fully prepared
	put cast
	pause 1
	}
	return

rangebuff:
	if $mana > 30 then
	{
	put prep tailwind 20
	pause .5
	put charge my armb 20
	wait
	pause .5
	put invoke my armb
	waitfor You feel fully prepared
	put cast
	pause 1
	}
	return