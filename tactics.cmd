ana:
matchre go by landing (a|an) (\w+)
put ana %1
matchwait

go:
	put $2
	wait
	pause .5
	goto ana