put stow left
pause .5
put stow right
pause .5
#	if $zoneid != 7 then
#	{	
#		echo Crossing only
#		exit
#	}
var caught 0
var drygoods backpack
var drygoodstimes 4
var drygoodslocation 189
var weapons scimitar
var weaponstimes 2
var weaponslocation 191
var bardshop bodhran
var bardshoptimes 3
var bardshoplocation 426
var bardspecial ebony guiro
var bardspecialtimes 4
var bardspeciallocation 838
var bath bathrobe
var bathtimes 2
var bathlocation 343
var haberdash greatcoat
var haberdashtimes 3
var haberdashlocation 765
var magic brown scroll
var magictimes 1
var magiclocation 223
var jewel wedding ring
var jeweltimes 2
var jewellocation 394
var clothing robe
var clothingtimes 4
var clothinglocation 461
var shoe silk stocking
var shoetimes 2
var shoelocation 462
var flower wreath
var flowertimes 3
var flowerlocation 713
var herb ithor potion
var herbtimes 2
var herblocation 219
var alchemy glay flower
var alchemytimes 2
var alchemylocation 226
var empath mortar
var empathtimes 2
var empathlocation 528
var tanner scraper
var tannertimes 2
var tannerlocation 222
var cleric habit
var clerictimes 2
var clericlocation 433
var CURRENTSHOP null
var CURRENTITEM null
var CURRENTLOCATION null
var NEXT null
var pawnlocation 459
var binlocation 624

match armorcheck You stand
match headtobin Obvious
put look
matchwait

headtobin:
#going to the bin
put #goto 70
waitfor An overloaded
put #goto %binlocation
waitfor Sculpted

armorcheck:
	match removearmor All of your
	match prep1 You aren't
	put inv armor
	matchwait 10

removearmor:
	put rem my leather
	pause .5
	put stow my leathers
	pause .5
	put rem my cowl
	pause .5
	put stow my cowl
	pause .5
	put rem my targe
	pause .5
	put stow my targe
	pause .5
	put rem my glove
	pause .5
	put stow my glove
	pause .5

prep1:
	put khri start focus plunder darken
	wait
	pause .5
		
stealprep:
	if %prone = 1 then goto jail
	gosub next
	if $hidden = 1 then put unhide
	pause 2
	var CURRENTITEM %%NEXT
	var CURRENTLOCATION %%NEXTlocation
	counter set %%NEXTtimes
	put #goto %CURRENTLOCATION
	wait 10

mark:
	put hide
	wait
	pause .5
	match stealprep looks your way 
	match stealprep excuse to call
	match stealprep beyond foolish
	match steal Roundtime
	put mark %CURRENTITEM
	matchwait

	
steal:
	match caught begins to shout
	match stealnext Roundtime	
	put steal %CURRENTITEM
	matchwait

stealnext:
#	wait
	pause .5
	if "$lefthand" != "Empty" then gosub stow
	counter subtract 1
	if %c > 0 then goto steal
	gosub stow
	goto stealprep
	
stow:
	wait
	put put my %CURRENTITEM in my duf bag
	pause .5
	put put my %CURRENTITEM in my duf bag
	pause .5
	return

caught:
	math %caught add 1
	echo ** Caught, moving to next store **
	goto stealprep

jail:
	waitfor The judge
	put plead guilty
	exit

next: 
	if %NEXT = null then 
	{
		var NEXT drygoods
		return
	}
	if %NEXT = drygoods then 
	{
		var NEXT weapons
		return
	}
	if %NEXT = weapons then 
	{
		var NEXT bardshop
		return
	}
	if %NEXT = bardshop then 
	{
		var NEXT bardspecial
		return
	}
	if %NEXT = bardspecial then 
	{
		var NEXT bath
		return
	}
	if %NEXT = bath then 
	{
		var NEXT haberdash
		return
	}
	if %NEXT = haberdash then 
	{
		var NEXT magic
		return
	}
	if %NEXT = magic then 
	{
		var NEXT jewel
		return
	}
	if %NEXT = jewel then 
	{
		var NEXT clothing
		return
	}
	if %NEXT = clothing then 
	{
		var NEXT shoe
		return
	}
	if %NEXT = shoe then 
	{
		var NEXT flower
		return
	}
	if %NEXT = flower then 
	{
		var NEXT herb
		return
	}
	if %NEXT = herb then 
	{
		var NEXT alchemy
		return
	}
	if %NEXT = alchemy then 
	{
		var NEXT empath
		return
	}
	if %NEXT = empath then
	{
		var NEXT cleric
		return
	}
	if %NEXT = tanner then 
	{
		var NEXT cleric
		return
	}
	if %NEXT = cleric then 
	{
		goto donestealing
	}
goto ERROR


ERROR:
	echo ** SOMETHING BAD HAS HAPPENED **
	put #goto %binlocation
	exit

donestealing:
	put #goto %pawnlocation
	wait 10
	var pawnable %weapons
	counter set %%pawnabletimes
	
pawn:
	
	put get %pawnable from my bag
	pause .5
	put sell %pawnable
	pause .5
	counter subtract 1
	if %c > 0 then goto pawn
	if %c = 0 then
	{	
		if %pawnable = %bardspecial then goto gotobin
		if %pawnable = %bardshop then var pawnable %bardspecial	
		if %pawnable = %weapons then var pawnable %bardshop
		counter set %%pawnabletimes
		goto pawn
	}

gotobin:
	put #goto %binlocation
	wait 15
	var NEXT null
binset:
	gosub next
	var binitem %%NEXT
	counter set %%NEXTtimes	
bin:
	pause .5
	put get %binitem from my duf bag
	pause .5
	put put my %binitem in bin
	pause .5
	counter subtract 1
	if %c > 0 then goto bin
	if %NEXT = cleric then goto done
	goto binset
	
done:
	echo *** DONE STEALING ***
	echo *** YOU WERE CAUGHT %caught TIMES ***