put #goto 625
waitfor $roomid = 625
echo done
exit


var NEXT null
var testvar null
var drygoodsitem testitem
var weaponsitem testitem2
doit:
	var testvar test%NEXT
	gosub next
	put echo %testvar
	
doitagain:
	var testvar %NEXTtest
	gosub next
	put echo %testvar
	var CURRENTITEM %%NEXTitem
	echo %CURRENTITEM
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
	if %NEXT = tanner then 
	{
		var NEXT cleric
		return
	}
	if %NEXT = cleric then 
	{
		goto donestealing
	}
echo %next








drygoods:
	if %CURRENTLOCATION = drygoods then goto weapons
	var CURRENTLOCATION drygoods
	var CURRENTITEM %drygoods
	set counter %drygoodstimes
	put #goto %drygoodslocation
	goto mark

weapons:
	if %CURRENTLOCATION = weapons then goto bardshop
	var CURRENTLOCATION weapons
	var CURRENTITEM %weapons
	set counter %weaponstimes
	put #goto %weaponslocation
	goto mark

bardshop:
	if %CURRENTLOCATION = bardshop then goto bardshopspecial
	var CURRENTLOCATION bardshop
	var CURRENTITEM %bardshop
	set counter %bardshoptimes
	put #goto %bardshoplocation
	goto mark

bardshopspecial:
	if %CURRENTLOCATION = bardshopspecial then goto bath
	var CURRENTLOCATION bardshopspecial
	var CURRENTITEM %bardshopspecial
	set counter %bardshopspecialtimes
	put #goto %bardshopspeciallocation
	goto mark

bath:
	if %CURRENTLOCATION = bath then goto weapons
	var CURRENTLOCATION drygoods
	var CURRENTITEM %drygoodsitem
	set counter %drygoodstimes
	put #goto %drygoodslocation
	goto mark
