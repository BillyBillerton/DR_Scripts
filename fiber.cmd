var total 0

buy:
if %fiber < 8 then
	{
	put order 2
	pause
	put order 2
	pause
	put combine fiber
	math fiber add 1
	goto buy
	}

if %total < %1 then
	{
	put put fiber in bag
	math total add 1
	var fiber 0
	goto buy
	}

exit