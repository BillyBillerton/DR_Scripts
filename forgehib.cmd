#Weapon forging.


put stow left
pause .5
put stow right
pause .5
put get my book
pause .5
put get my log
pause .5
matchre countersetforge You must bundle and deliver (\d) more
match varprep This logbook has been used
put read my log
matchwait
countersetforge:
	counter set $1
	var workorder Yes

varprep:
put stow my log
pause .5
var material %1
var item %2
var extra %3
if matchre ("%2", "briquet|knife|dagger|misericorde|katar|short sword|pugio|poignard|stiletto|dart|throwing dagger|falcata|nehlata|telek|leaf blade sword|jambiya|takouba|kris|thrusting blade|pasabas|rapier|koummya|oben|kythe|dao|kasai|sunblade|foil|baselard|gladius|mambeli|sashqa|adze|curlade|parang|hanger|sabre|scimitar|shotel|cutlass|hatchet|hand axe|throwing axe") then var chapter 1
if matchre ("%2", "condotierre|nehdalata|round axe|longsword|spatha|kudalata|arzfilt|broadsword|schiavona|falchion|robe sword|battle axe|recade|back-sword|nimsha|hunting sword|namkomba|dagasse|abassi|cinquedea|hurling axe") then var chapter 2
#if matchre ("%2", 
put turn book to chapter %chapter
pause .5
matchre setvarsforge Page (\d?): a metal %item.*
put read book
matchwait 3

setvarsforge:
var page $1
var weapon %item
if matchre("%item","\w+ (\w+)") then var weapon $1
echo %weapon
send turn my book to page %page
pause .5
send study my book
wait
pause .5
put read my book
matchre setvolume refined metal ingot \((\d)
put read my book
matchwait 1

setvolume:

	var volume $1
	echo %volume
	send stow left
	pause .5
	send stow right
	pause .5
	send get my %material ing
	pause .5
	matchre ingsize About (\d+) volume
	send ana my %material ing
	matchwait
ingsize:
	var ingsize $1
	if %ingsize = %volume then goto forgestart
	if (%ingsize > %volume) then
	{
	send turn cut to %volume
	pause 1
	send push ing with cut
	pause 1
	send stow left
	pause 1
	}
	if %ingsize < %volume then goto ingfail
	goto forgestart

ForgeStart:
	move w
	pause 1
	move w
	pause 1
	send put ingot on anv
	pause 1
	send get my hamm
	pause 1
	send get my tong
	send pound ing on anvil with hamm
	match bellows stifled coals
	match shovel more fuel
	match turn soft reworking
	match turn horn of the anvil
	match moremat larger volume of metal to continue
	match pound Roundtime:
	matchwait

Pound:
	pause
	pause 1
	send pound %weapon on anvil with hamm
	match bellows stifled coals
	match shovel more fuel
	match turn soft reworking
	match turn horn of the anvil
	match finish slack tub
	match pound Roundtime:
	matchwait

Bellows:
	pause
	pause 1
	send stow tong
	send get my bell
	pause 1
	send push bell
	pause
	pause 1	
	send stow bell
	send get tong
	goto pound

Shovel:
	pause
	pause 1
	send stow tong
	send get my shov
	pause 1
	send push fuel with shov
	pause
	pause 1	
	send stow shov
	send get tong
	goto pound

Turn:
	pause
	pause 1
	send turn %weapon on anvil with tong
	match finish slack tub
	match pound Roundtime:
	matchwait

Finish:
	pause
	pause 1
	send stow ham
	pause .5
	send stow tong
	pause .5
	send push tub
	pause
	pause 1
	send get %extra
	pause .5
	send get %weapon from anvil
	pause .5
	send assemble %weapon with %extra
	pause 1
	move w
	pause 1
	move sw
	pause 1
	put turn grind
	pause 1
	put turn grind
	pause 1
	put turn grind
	pause 1
	put push grind with %weapon
	wait
	pause .5
	put get my oil
	pause .5
	put pour oil on my %weapon
	wait
	pause .5
	put stow my oil
	pause .5

logcheck:
	if "%workorder" = "Yes" then 
	{
		send get my log
		pause 1
		send bund my %weapon with my log
		pause 1
		counter subtract 1
		if %c = 0 then goto done
		put #goto 409
		wait 2
		put get my book
		pause .5
		goto varprep
	}

done:
	echo *** DONE FORGING ***

ingfail:
	echo *** GET MORE MATS ***