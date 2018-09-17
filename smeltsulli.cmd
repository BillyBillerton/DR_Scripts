#Metal Smelting

var material %1

action INSTANT goto finish when ingot mold

if_1 goto SmeltStart
echo Usage is: .smelt <material>

SmeltStart:
	action var matstow $1 when nugget from inside your (\w+\s+\w+)\.$
	send get my %material nugg
	match putmat You get
	match end What do you want to get
	match end What were you referring
	matchwait

GetMat:
	send get my %material nugg
	match putmat You get
	match gettool What do you want to get	
	match gettool What were you referring
	matchwait

PutMat:
	send put nugg in cruc
	goto getmat

GetTool:
	action var rodstow $1 when rod from inside your (\w+\s+\w+)\.$
	put get my rod
	goto stir
Stir:
	pause
	pause 1
	send stir cruc with rod
	match turn crucible's sides
	match fuel needs more fuel
	match bellows stifled coals
	match bellows unable to consume its fuel
	match stir Roundtime
	matchwait

Fuel:
	pause
	pause 1
	action var shovelstow $1 when shovel from inside your (\w+\s+\w+)\.$
	send get my shov
	send push fuel with shov
	pause
	pause 1
	send put shov in my %shovelstow
	goto stir

Bellows:
	pause
	pause 1
	action var bellowstow $1 when from inside your (\w+\s+\w+)\.$
	send get my bell
	send push bell
	pause
	pause 1
	send put bell in my %bellowstow
	goto stir

Turn:
	pause
	pause 1
	send turn cruc
	goto stir

Finish:
	pause
	pause 1
	send put ing in my %matstow
	send put rod in my %rodstow
	goto end

End:
Echo All material used. Script complete.
exit