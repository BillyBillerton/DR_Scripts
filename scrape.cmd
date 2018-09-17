put stow left
pause .5
put stow right
pause .5
put get my scraper
pause .5
put swap
pause 1
goto start

start:
put get %1 bone from my bund
pause 1

scrape:
	pause .5
	match next The bones look 
	match scrape Roundtime
	put scrape bone with my scraper careful
	matchwait

next:
	if $Skinning.LearningRate > 33 then goto done
	put put bone in my bag
	pause .5
	put get %1 bone from my bund
	match bleachprep What were you
	match scrape You carefully
	matchwait

bleachprep:
	put stow my scrap
	pause .5
	put get my solution
	pause .5
	put get %1 bone from my bag
	pause .5
	
bleach:

	put pour solution on my bone
	wait
	pause .5
	put bund
	pause .5
	match done What were you
	match bleach You get
	put get %1 bone from my bag
	matchwait

done:
	echo *** All bones done! ***