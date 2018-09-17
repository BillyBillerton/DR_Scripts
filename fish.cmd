

bait:
match cast You already have
match wait Roundtime
put get bait
matchwait

wait:
pause 4

cast:
put cast my pole
pause .5

reel:

pause .5
match reel You wind
match reel You vigorously wind
match reel You quickly wind
match reel You speedily wind
match reel You very
match reel You briskly
match stow You've pulled
match cast That's all of it!
put pull my pole
matchwait

stow:
put stow left
pause 1
goto bait
