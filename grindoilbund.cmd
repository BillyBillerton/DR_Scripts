	put get my %1
grind:

	put turn grind
	wait
	pause .5
	put turn grind
	wait
	pause .5
	put turn grind
	wait
	pause .5
	put push grind with my %1
	wait
	pause .5
	put get my oil
	pause .5
	put pour oil on my %1
	wait
	pause .5
	put stow oil
	pause .5
	put get my log
	pause .5
	put swap
	pause .5
	put bund my %1 with my log
	pause .5
	put stow my log
	

	match grind You get
	match finish What were
	put get my %1
	matchwait

finish:
	echo DONE
