start:

put turn encyc to elothean
put open my encyc

readcompen:
	match turncompen Why do you need
	match turncompen With a sudden moment
	put study encyc
	matchwait 5
	goto readcompen
	
turncompen:
		math compencount add 1
		if %compencount > 900 then 
		{
			put stow my encyc
			pause 1
			goto main
		}
		put turn encyc
		pause 1
		goto readcompen