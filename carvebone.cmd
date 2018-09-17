put stow left
pause .5
put stow right
pause .5
put get my book
pause .5
put get my log
pause .5
matchre countersetcarve You must bundle and deliver (\d) more
match varprep This logbook has been used
put read my log
matchwait
countersetcarve:
	counter set $1
	var workorder Yes

varprep:
put stow my log
pause .5
var item %1
var material %2
var disposal none
if_3 then var disposal %3
if matchre ("%1", "bludgeon|knife|axe|sword") then var chapter 8
if matchre ("%1", "band|toe|nose|bracelet|anklet|pin|cloak|hairpin|tailband|cup|pendant|amulet|medallion|earring") then var chapter 9

put turn book to chapter %chapter
pause .5
matchre setvarscarve Page (\d): a bone %item.*
put read book
matchwait 3

setvarscarve:
var page $1
var carveit %item
if %item = "nose" then var carveit ring
if %item = toe then var carveit ring
if %item = cloak then var carveit pin 
echo %carveit
setstackcarve:
	send turn my book to page %page
	pause 1
	matchre setstackcarve2 ... a bleached bone stack \((\d) piece
	send read book
	matchwait 2
	echo failed
	exit
setstackcarve2:
	var pieces $1
	echo %pieces

studycarve:
	send study my book
	wait
	pause .5
	put stow my book
	pause .5

prepbonescarve:
	put get my %material stack
	pause .5
	matchre countcarve You count out (.+) pieces
	put count my stack
	matchwait
countcarve:
	var stack $1
	
	if %stack < %pieces then
	{
		match combine You tap
		match insuferror I could not find
		put tap my other %material stack
		matchwait
	}

	put get my saw
	pause .5
	if %stack = %pieces then goto firstcarve
	put mark my stack at %pieces pieces
	pause .5
	put cut my stack with my saw
	wait
	pause .5
	put stow my stack
	pause .5
	put get stack
	pause .5
	put get my saw
	pause .5
	goto firstcarve

firstcarve:
	match rasp uneven
	match rasp no longer level
	match riffler jagged
	match done Applying the final
	match carve R>
	put carve my stack with my saw
	matchwait
carve:
	if $lefthandnoun != "saw" then
	{
		put stow left
		pause .5
		put get my saw
		pause .5
	}

	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done Applying the final
	match done You cannot figure out
	match carve R>
	put carve my %carveit with my saw
	matchwait
	

rasp:
	if $lefthandnoun != "rasp" then
	{
		put stow left
		pause .5
		put get my rasp
		pause .5
	}
	
	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done Applying the final
	match done You cannot figure out
	match carve R>
	put scrape my %carveit with my rasp
	matchwait


riffler:
	if $lefthandnoun != "riffler" then
	{
		put stow left
		pause .5
		put get my riffler
		pause .5
	}	
	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done You cannot figure out
	match done Applying the final
	match carve R>
	put rub my %carveit with my riffler
	matchwait

done:
	put stow left
	pause .5
	if_3 then put put %carveit in %disposal
	if %c > 0 then
	{
		put get my log
		pause .5
		put bund my %carveit with my log
		pause .5
		counter subtract 1
		put get my book
		pause .5
		if %c > 0 then goto varprep
	}
	put stow right
	
exit:
	echo *** DONE CARVING ***
	if %workorder = "yes" then echo **** WORK ORDER COMPLETE ****
	exit





combine:
	put get my other %material stack
	pause .5
	put combine my stack with my other stack
	pause .5
	goto prepbonescarve

insuferror:
	echo *** NOT ENOUGH BONES ***
