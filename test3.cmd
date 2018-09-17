

test3echo:
	put echo I'm in the test 3 echo area
	pause 2
	goto finish

finish:
	put echo I'm in the finish area!
	waitfor finish area
	echo worked