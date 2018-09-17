## If including from another script
## Set %cambrinth and optionally %singlcast

var cambrinth $cambrinth
var cambcon $cambcon

var camcalled no
var singlecast no

cam.start:
var cambexp 8
if_1 var cambexp %1
goto cam.check

cam.check:
	match camb.worn that you are wearing.
	matchre camb.get You tap|you tap|is delicate
	put tap my %cambrinth
	matchwait

cam.expcheck:
#	put exp
#	waitfor EXP HELP
	if $Magical_Devices.LearningRate > %cambexp then goto cam.done
	else goto cam.charge

camb.worn:
	var cambworn yes
	put remove my %cambrinth
	goto cam.expcheck
	
camb.get:
	var cambworn no
	put get my %cambrinth
	goto cam.expcheck
	
cam.charge:
	match cam.charge ...wait
	match cam.prep dissipates
	match cam.expcheck absorbs
	match cam.chill cannot harness
	matchre cam.done Something in the area|Something is damping
	put charge my %cambrinth 11
	matchwait
cam.focus:
	match cam.focus ...wait
	matchre cam.cast /(Roundtime:|is intact.)/
	matchre cam.done Something in the area|Something is damping
	put focus my %cambrinth
	matchwait
cam.prep:
	match cam.prep ...wait
	match cam.focus Ease Burden
	match cam.release You are already preparing
	matchre cam.done Something in the area|Something is damping
	put prep ease
	matchwait
cam.cast:
	waitfor You feel fully prepared
	put cast
	if "%singlecast" = "yes" then goto cam.done
	goto cam.expcheck
cam.release:
	put release spell
	goto cam.prep
cam.chill:
	echo              Chillin'
	pause 10
	goto cam.charge
cam.done:
	pause
	if "%cambworn" = "no" then put put my %cambrinth in my %cambcon
	else put wear my %cambrinth
	if "%camcalled" = "no" then
	{
		put glance
		exit
	}
	else return