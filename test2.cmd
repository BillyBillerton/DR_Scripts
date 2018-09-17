include test3.cmd

test2echo:
	echo I'm in the test 2 echo area
	pause 2
	goto test3echo
	echo failed
	goto test3.test3echo