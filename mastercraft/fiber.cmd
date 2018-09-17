var total 0

top:
var fiber 0

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
	math total add 1
	goto top
	}

put put fiber in bag
exit