debug off
#########################################
###                                   ###
### Aveda's Amazing Instrument Script ###
###            Reckus 3.0             ###
###                                   ###
###      Last updated 5/21/2007       ###
###  http://dr.aveda.googlepages.com  ###
###                                   ###
###                                   ###
###   Set all of these things here!   ###
###          (Replace mine!)          ###

setvariable stringinst kithara
setvariable windinst mirliton
setvariable percuinst shaman.drum
setvariable cleaningthing cloth
setvariable container med.case

###                                   ###
###   You MUST name this script:      ###
###              reckus               ###
###                                   ###
###      To operate, just type:       ### 
###             .reckus               ###
#########################################
beginning:
	if_6 goto top
	if_4 setvariable reckuscookie 18 18 18
	put .reckus2 string percu wind %reckuscookie
top:
	echo
	echo *** Aveda's RECKUS 3.0 Instrument Script
	echo *** Updated 5/21/2007- Get the latest at:
	echo *** http://dr.aveda.googlepages.com/scripts
	echo
	counter set 0
getinst:
	setvariable inst %%%1%inst%
	
	matchre clean /You get|You are already holding that./
	matchre end /Please rephrase that command.|You need a free hand to pick that up.|What were you referring to?/
	put get my %inst%
	matchwait
clean:
	put get my %cleaningthing
clean1:
	matchre clean1 /...wait|Sorry, you may only type ahead/
	matchre clean2 /Roundtime:|not in need of cleaning.|with what?/
	put clean my %inst%
	matchwait
clean2:
	match clean2 ...wait
	matchre clean3 /Roundtime:|not in need of cleaning./
	match clean4 Maybe you should dry
	put clean my %inst% with my %cleaningthing
	matchwait
clean3:
	match clean3 ...wait
	match toolcheck You put your
	put stow my %cleaningthing in my %container
	matchwait
clean4:
	match clean4 ...wait
	matchre clean5 /Roundtime:|not in need of drying./
	put wipe my %inst% with my %cleaningthing
	matchwait
clean5:
	matchre clean5 /...wait|water dribbling down/
	matchre clean2 /squeezing out the last bit of water.|then shake it out again./
	put wring my %cleaningthing
	matchwait
toolcheck:
	matchre toolcheck /...wait|Sorry, you may only type ahead/
	match bow bow
	match pick pick
	match stick stick
	match hammer hammer
	match tipper tipper
	match marco no tool
	put help %inst%
	matchwait
bow:
	put get my bow in my %container
	put get my bow
	goto marco
pick:
	put get my pick
	put wear my pick
	goto marco
stick:
	put get my drum stick
	goto marco
hammer:
	put get my hammer
	goto marco
tipper:
	put get my tipper
	goto marco
marco:
	counter set %4
	goto %c
polo:
	setvariable diff%1% %c
play:
	matchre play /...wait|Sorry, you may only type ahead/
	match tuna tuning is off, and may hinder your performance.
	#match fix The damage to your instrument affects your performance.
	matchre harder /You effortlessly begin|your skill in your craft/
	matchre sweet /off-key ruff|off-key scales|with only the slightest hint of difficulty/
	matchre easier /You fumble slightly as you begin|You struggle to begin/
	matchre 18 /What type of song did you want to play?|PLAY: Instrumental Performances/
	matchre harder /you begin a|you begin some/i
	match stupidtool You will need the proper tool
	match end You can't play your
	put play %diff
	matchwait
tuna:
	put stop play
	match tunesharp flat
	match tuneflat sharp
	matchre play /in tune|in perfect tune/
	put tune my %inst%
	matchwait
tunesharp:
	match tunesharp ...wait
	matchre play /in tune|in perfect tune/
	match tunesharp flat
	match tuneflat sharp
	put tune my %inst% sharp
	matchwait
tuneflat:
	match tuneflat ...wait
	matchre play /in tune|in perfect tune/
	match tuneflat sharp
	match tunesharp flat
	put tune my %inst% flat
	matchwait
sweet:

######################################################################
### This section is stuff you can do while playing. It is optimized
### for Bards with Recall, but feel free to customize it.
######################################################################
	#echo
	#echo *** This part of the script can be customized.
	#echo *** You get about two minutes to screw around
	#echo *** each time you play a song, so experiment!
	#echo
	put appraise my %armor_body% quick
	WAITFORRE /(You continue playing|you continue to|continuing)/i
	
	put read my horse instructions
	WAITFORRE /(You continue playing|you continue to|continuing)/i
	
	put app my %flower_charm%
	WAITFORRE /(You continue playing|you continue to|continuing)/i
	
	put read my gryphon instructions
	WAITFORRE /(You continue playing|you continue to|continuing)/i
	
	matchre appno /mind lock|dazed|bewildered/
	match appyes EXP HELP
	put exp appraisal
	matchwait
	appyes:
	put appraise my %inst%
	appno:
	WAITFORRE /(You continue playing|you continue to|continuing)/i
	
	put read my medal instructions
	#WAITFORRE /(You continue playing|you continue to|continuing)/i
	#put recall holiday
######################################################################

	waitfor You finish

	put perc health
	waitfor Roundtime:
	pause 1

	goto lockcheck
lockcheck:
	matchre stowinst /mind lock|dazed|bewildered|bewildering|perplexed/
	match play EXP HELP
	put exp %1
	matchwait
stowinst:
	pause
	put stow left in my %container
	put stow right in my %container
	shift
	goto getinst
easier:
	counter subtract 1
	put stop play
	goto %c
harder:
	counter add 1
	put stop play
	goto %c
labelerror:	
	0:
		#deletevariable diff%1%
		counter set 18
		goto 18
	1:
		setvariable diff ruff off-key
		echo
		echo You may wish to find an easier instrument.
		echo The easiest string, percussion, and wind instruments:
		echo Lyre, guiro, and txistu, respectively
		echo
		goto polo
	2:
		setvariable diff ruff halting
		goto polo
	3:
		setvariable diff ruff
		goto polo
	4:
		setvariable diff rudiments off-key
		goto polo
	5:
		setvariable diff rudiments halting
		goto polo
	6:
		setvariable diff rudiments
		goto polo
	7:
		setvariable diff ditty
		goto polo
	8:
		setvariable diff folk
		goto polo
	9:
		setvariable diff ballad
		goto polo
	10:
		setvariable diff waltz
		goto polo
	11:
		setvariable diff lullaby
		goto polo
	12:
		setvariable diff march
		goto polo
	13:
		setvariable diff jig
		goto polo
	14:
		setvariable diff lament
		goto polo
	15:
		setvariable diff wedding
		goto polo
	16:
		setvariable diff hymn
		goto polo
	17:
		setvariable diff rumba
		goto polo
	18:
		setvariable diff battle
		goto polo
	19:
		setvariable diff polka
		goto polo
	20:
		setvariable diff elegy
		goto polo
	21:
		setvariable diff reel
		goto polo
	22:
		setvariable diff serenade
		goto polo
	23:
		setvariable diff minuet
		goto polo
	24:
		setvariable diff psalm
		goto polo
	25:
		setvariable diff dirge
		goto polo
	26:
		setvariable diff gavotte
		goto polo
	27:
		setvariable diff tango
		goto polo
	28:
		setvariable diff tarantella
		goto polo
	29:
		setvariable diff bolero
		goto polo
	30:
		setvariable diff nocturne
		goto polo
	31:
		setvariable diff requiem
		goto polo
	32:
		setvariable diff fantasia
		goto polo
	33:
		setvariable diff rondo
		goto polo
	34:
		setvariable diff aria
		goto polo
	35:
		setvariable diff sonata
		goto polo
	36:
		setvariable diff concerto
		goto polo
	37:
		setvariable diff concerto confident
		goto polo
	38:
		setvariable diff concerto masterful
		goto polo
stupidtool:
	echo
	echo Make sure you have the proper tools to play
	echo your instruments, and see to it that you 
	echo edit the beginning of the script to include
	echo those tools and try again.
	echo
end:
	setvariable reckuscookie %diffstring %diffwind %diffpercu
	deletevariable diffstring
	deletevariable diffwind
	deletevariable diffpercu
	deletevariable diff
	deletevariable stringinst
	deletevariable windinst
	deletevariable percuinst
	deletevariable cleaningthing
	deletevariable container
	deletevariable inst
	put exp lore
#Reckus will loop forever if you delete the # in the next line.
put .reckus2 string percu wind "%stringinst%" "%percuinst%" "%windinst%" %reckuscookie