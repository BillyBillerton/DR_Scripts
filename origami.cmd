# If including this in another script
# please set %origami, %originstloc, and %singlefold in the parent
# origami == the pattern name (cat, etc...)
# originstloc == the instruction / primer / grimoire location (in my cloak, etc...)
# origcalled == controls how the script ends (return vs. exit)
# singlefold == One complete fold or keep going
var origami %1
var originstloc pack
var origcalled yes
var singlefold no

origami.start:
var origexp $origexp
if_1 var origexp %1
#	put expe
#	waitfor EXP HELP
	if $Mechanical_Lore.LearningRate > %origexp then goto origami.done
	if "$righthand" != "Empty" then 
	{
		var rightitem $righthand
		put stow right
	}
	if "$lefthand" != "Empty" then
	{
		var leftitem $lefthand
		put stow left
	}

origami.begin:
	matchre origami.begin ...wait 
	matchre origami.pull.envelope You must be either|What were you
	matchre origami.study You get a|You are already holding that
	put get my paper
	matchwait

origami.pull.envelope:
	match origami.pull.envelope ...wait 
	matchre origami.new The envelope is|You must be either|afraid that you
	match origami.study You get a
	match origami.pull.envelope Roundtime
	put pull my env
	matchwait

origami.new:
	pause 0.5
	put poke my env
	waitforre You|What were you referring

origami.get.envelope:
	match origami.get.envelope ...wait 
	match origami.new But that is
	match origami.outof.envelopes What were you
	match origami.wear.envelope You get
	put get my env
	matchwait

origami.outof.envelopes:
	echo **** YOU HAVE RUN OUT OF ENVELOPES, GET MORE ****
	goto origami.done

origami.wear.envelope:
	pause 0.5
	put wear my env
	waitfor You attach
	goto origami.begin

origami.study:
	if "%originstloc" = "grimoire" then goto origami.grim.get
	match origami.study ...wait 
	match origami.start You need to be holding 
	matchre origami.check.exp You study|You've already started
	match primer You take on a 
	match origami.study Roundtime
	put study my %origami instru
	matchwait

primer:
	put get my primer
	pause .5
	put open my primer
	pause .5
	put study my %origami instru
	wait
	pause 1
	put stow my primer
	pause 1
	goto origami.check.exp
	
origami.grim.get:
	put get my origami grimoire
	waitforre You get|You are
	put open my grimoire
	waitforre open your|already open
	goto origami.grim.study
	
origami.grim.study:
	match origami.grim.study ...wait
	match origami.start You need to be holding 
	matchre origami.grim.exp You study|You've already started
	match origami.grim.study Roundtime
	put study my %origami instru
	matchwait

origami.grim.exp:
	put close my grimoire
	waitforre close your|already closed
	put stow my grimoire
	waitforre You put|What were you|Stow what
	goto origami.check.exp

origami.check.exp:
#	put expe
#	waitfor EXP HELP
	if $Mechanical_Lore.LearningRate > %origexp then goto origami.done
	else goto origami.fold

origami.fold:
	match origami.fold ...wait
	matchre origami.start You must|what
	matchre origami.fold.complete You make the final fold|What were you
	match origami.check.exp Roundtime
	put fold my paper
	matchwait

origami.fold.complete:
	pause
	match origami.fold.complete ...wait 
	matchre origami.fold.complete.2 You drop|tattered remains|You crumple up
	if "$righthandnoun" == "mask" then put drop mask
	else put exhale $righthandnoun
	matchwait
	
	origami.fold.complete.2:
	if "%singlefold" = "yes" then return
	else goto origami.start

origami.done:
	pause
	if "$righthand" != "Empty" then put stow right
	if "$lefthand" != "Empty" then put stow left
	pause 0.5
	if "%origcalled" = "no"  then
	{
		put glance
		exit
	}
	else return