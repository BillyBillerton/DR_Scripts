
put stow left
pause .5
put stow right
pause .5
start:
match rock You tap
match deed I could not find
put tap my %1 rock
matchwait

rock:
	put get my %1 rock
	pause .5
	goto study
deed:
	put get my rock deed
	pause .5
	put tap my rock deed
	pause .5
	put get %1 rock
	pause .5
	goto study

study:
	put get my book
	pause .5
	put turn my book to chapter 1
	pause .5
	if %2 = "block" then put turn my book to page 1
	if %2 = "slab" then put turn my book to page 3
	if %2 = "pole" then put turn my book to page 4
	pause .5
	put study my book
	wait
	pause .5
	put stow my book
	pause .5
	put get my chis
	pause .5
	goto firstcarve

firstcarve:
	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done Applying the final
	match carve Roundtime
	put carve my rock with my chis
	matchwait
carve:
	if $lefthandnoun != "chisels" then
	{
		put stow left
		pause .5
		put get my chis
		pause .5
	}

	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done Applying the final
	match done You cannot figure out
	match carve Roundtime
	put carve my %2 with my chis
	matchwait
	

rasp:
	if $lefthandnoun != "rasp" then
	{
		put stow left
		pause .5
		put get my rasp
		pause .5
	}
	
	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done Applying the final
	match done You cannot figure out
	match carve Roundtime
	put scrape my %2 with my rasp
	matchwait


riffler:
	if $lefthandnoun != "riffler" then
	{
		put stow left
		pause .5
		put get my riffler
		pause .5
	}	
	match rasp uneven texture
	match rasp no longer level
	match riffler jagged
	match done You cannot figure out
	match done Applying the final
	match carve Roundtime
	put rub my %2 with my riffler
	matchwait

done:
	put stow left
	pause .5
	if_3 then put put %2 in %3
	put stow right
	
	if $Engineering.LearningRate < 28 then 
	{
		match start You must be holding
		match exit I could not find
		put tap my deed
		matchwait
	}
	
exit:
	echo *** DONE CARVING ***
	exit