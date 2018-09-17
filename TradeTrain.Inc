##### ~PELIC's Trading Skill Training Include
##### Last Update: 25 May, 2012
SKILL.SETVARIABLES:
## Trader Training Variable Setup
     # YOUR PRIMARY STORAGE CONTAINER
      put #var Container duf bag
     # 1 or 0 TO SKIP TRAINING APPRAISAL
      put #var Train.Appraisal 1
     # APPRAISAL CONTAINER
     # put #var Appraisal.Item.Container VELVET POUCH
     # APPRAISAL CONTAINER USE
      put #var Appraisal.Container.Use 0
     # WORN APPRAISAL ITEM, NULL TO SKIP
      put #var Appraisal.Item.01 bundle 
     # WORN APPRAISAL ITEM, NULL TO SKIP
      put #var Appraisal.Item.02 icon
     # WORN APPRAISAL ITEM, NULL TO SKIP
     # put #var Appraisal.Item.03 NULL 
     # WORN APPRAISAL ITEM, NULL TO SKIP
     # put #var Appraisal.Item.04 NULL
     # WORN APPRAISAL ITEM, NULL TO SKIP
     # put #var Appraisal.Item.05 NULL
     # WORN APPRAISAL ITEM, NULL TO SKIP
     # put #var Appraisal.Item.06 NULL
     # 1 or 0 TO SKIP TRAINING MECH LORE
      put #var Train.Mechanical.Lore 0 
     # ORIGAMI PATTERN, NULL TO SKIP
      put #var OriPatt NULL
     # WHERE ORIGAMI INSTRUCTIONS AND ENVELOPES ARE KEPT
     # put #var OriCont ORIGAMI CASE 
     # GRIMOIRE, PRIMER, or NULL
     # put #var OriInst NULL 
     # 1 or 0 TO SKIP TRAINING FIRST AID WITH COMPENDIUM
      put #var Train.First.Aid 1
     # 1 or 0 TO SKIP TRAINING SCHOLARSHIP
      put #var Train.Scholarship 0
     # EMBROIDERY PATTERN DESIGN, NULL TO SKIP
     # put #var Embroidery.Pattern NULL
     # 1 or 0 TO SKIP TRAINING PERCEPTION
      put #var Train.Perception 0 
     # YOUR JUGGLIES, NULL TO SKIP     
      put #var Jugglie NULL
     # WHERE JUGGLIES ARE KEPT, MAKE SURE IT'S OPEN
     # put #var JuggCont CANVAS SACK 
     # 1 or 0 TO SKIP TRAINING FORAGING
      put #var Train.Foraging 1
     return
### SKILLS SECTION  ###
SKILLS:
     if "%Caravan.Arrived" == "1" then return
     if "%Caravan.Hunger" == "1" then gosub FEED.CARAVAN
     random 1 6
     pause 0.1
     if %r == 1 then gosub TRAIN.APPRAISAL
     if %r == 2 then gosub TRAIN.MECH
     if %r == 3 then gosub TRAIN.PERCEPTION
     if %r == 4 then gosub TRAIN.FIRST.AID
     if %r == 5 then gosub TRAIN.SCHOLARSHIP
     if %r == 6 then gosub TRAIN.FORAGING
     goto SKILLS
FERRY.SKILLS:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     random 1 5
     pause 0.1
     if %r == 1 then gosub TRAIN.APPRAISAL
     if %r == 2 then gosub TRAIN.MECH
     if %r == 3 then gosub TRAIN.PERCEPTION
     if %r == 4 then gosub TRAIN.FIRST.AID
     if %r == 5 then gosub TRAIN.SCHOLARSHIP
     goto FERRY.SKILLS
### TRAIN APPRAISAL
TRAIN.APPRAISAL:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if ("$Train.Appraisal" == "0") then return
     if $Appraisal.LearningRate > 29 then return
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
     if ("$Appraisal.Item.01" == "NULL") then gosub APPRAISE $charactername
     if ("$Appraisal.Item.01" != "NULL") then gosub APPRAISAL.LOOP $Appraisal.Item.01
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.02" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.02
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.03" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.03
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.04" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.04
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.05" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.05
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.06" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.06
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.07" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.07
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.08" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.08
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.09" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.09
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if $Appraisal.LearningRate > 29 then return
     if "$Appraisal.Item.10" != "NULL" then gosub APPRAISAL.LOOP $Appraisal.Item.10
     return
APPRAISAL.LOOP:
     var Item $0
     if $Appraisal.Container.Use == 1 then gosub GET MY %Item IN MY $Appraisal.Item.Container
     # if (("$righthand" == "Empty") && ("$lefthand" == "Empty")) then gosub GET MY %Item
     gosub APPRAISE MY %Item CAREFUL
     if $Appraisal.Container.Use == 1 then gosub PUT PUT MY %Item IN MY $Appraisal.Item.Container
     # if (("$righthand" != "Empty") && ("$lefthand" != "Empty")) then gosub STOW MY %Item
     return
### TRAIN MECH
TRAIN.MECH:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if ("$Train.Mechanical.Lore" == "0") then return
	if $Mechanical_Lore.LearningRate > 29 then return
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
     if ("$OriPatt" == "NULL") then return
     if ("$OriInst" == "NULL") then goto ORIGAMI.PAPER
ORIGAMI.GET.INSTRUCTIONS:
     pause 0.1
     matchre ORIGAMI.GET.INSTRUCTIONS ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre ORIGAMI.PAPER ^You are already holding that
     matchre ORIGAMI.PAPER ^You get
     matchre RETURN ^What were you referring to\?
     matchre RETURN ^I could not find what you were referring to\.
     if "$OriCont" == "NULL" then send GET MY $OriInst
     else send GET MY $OriInst FROM MY $OriCont
     matchwait
ORIGAMI.PAPER:
     pause 0.1
     matchre ORIGAMI.PAPER ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre ORIGAMI.STUDY ^You get a sheet of
     matchre ORIGAMI.STUDY ^You get a piece of
     matchre ORIGAMI.STUDY ^You are already holding that\.
     matchre ORIGAMI.ENVELOPE ^What were you referring to
     matchre ORIGAMI.ENVELOPE ^I could not find what you were referring to
     send GET MY PAPER
     matchwait
ORIGAMI.ENVELOPE:
     pause 0.1
     matchre ORIGAMI.ENVELOPE ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre ORIGAMI.ENVELOPE.NEW ^The envelope is empty\.
     matchre ORIGAMI.ENVELOPE.NEW ^I'm afraid that you can't pull that\.
     matchre ORIGAMI.ENVELOPE.NEW ^You must be either wearing or holding an origami-paper envelope before you can do that\!$
     matchre ORIGAMI.STUDY ^You get a sheet of
     send PULL MY ENVELOPE
     matchwait
ORIGAMI.ENVELOPE.NEW:
	gosub PUT POKE MY ENVELOPE
ORIGAMI.ENVELOPE.GET:
	matchre ORIGAMI.ENVELOPE.GET ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
	matchre ORIGAMI.ENVELOPE.NONE ^But that is
	matchre ORIGAMI.ENVELOPE.NONE ^What were you
	matchre ORIGAMI.ENVELOPE.WEAR ^You get
     if "$OriCont" == "NULL" then send GET MY ENVELOPE
	else send GET MY ENVELOPE FROM MY $OriCont
	matchwait
ORIGAMI.ENVELOPE.NONE:
	echo **** YOU HAVE RUN OUT OF ENVELOPES, GET MORE ****
	goto ORIGAMI.DUMP
ORIGAMI.ENVELOPE.WEAR:
	gosub PUT WEAR MY ENVELOPE
	goto ORIGAMI.ENVELOPE
ORIGAMI.STUDY:
     pause 0.1
     matchre ORIGAMI.STUDY ^\.\.\.wait\s+\d+\s+sec(?:onds|s)?\.?$
     matchre ORIGAMI.TOO.COMPLICATED ^You turn the instructions this way and that
     matchre ORIGAMI.TOO.COMPLICATED ^You take on a studious look
     matchre ORIGAMI.FOLD.LOOP ^You study your .* instructions and begin to fold\.
     matchre ORIGAMI.FOLD.LOOP ^You've already started to make something with this piece of origami paper\.  If you want to make something new, you'll need a fresh piece\.
     send STUDY MY $OriPatt INSTRUCTIONS
     matchwait
ORIGAMI.FOLD.LOOP:
     if ("%Caravan.Arrived" == "1") then goto ORIGAMI.DUMP
     if ("%Caravan.Hunger" == "1") then goto ORIGAMI.DUMP
ORIGAMI.FOLD:
     pause 0.1
     matchre ORIGAMI.FOLD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ORIGAMI.FOLD.LOOP ^You (?:carefully )?make (?:a|another)? fold in your paper
     matchre ORIGAMI.DISCARD ^You make the final fold and gaze proudly at your new
     matchre ORIGAMI.DISCARD ^You must be holding
     matchre ORIGAMI.DISCARD ^What were you referring to\?$
     matchre ORIGAMI.DISCARD ^I could not find what you were referring to\.$
     send FOLD MY PAPER
     matchwait
ORIGAMI.DISCARD:
     pause 0.1
     matchre ORIGAMI.DISCARD ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre ORIGAMI.DUMP ^Smoking commands are\:
     matchre ORIGAMI.DUMP ^You exhale
     matchre ORIGAMI.DUMP ^You blow gently
     matchre ORIGAMI.DUMP ^You find a hole
     send EXHALE MY $OriPatt
     matchwait
ORIGAMI.TOO.COMPLICATED:
     echo *** YOUR INSTRUCTIONS ARE BEYOND YOUR SKILL LEVEL ***
ORIGAMI.DUMP:
     if "$OriInst" != "NULL" then gosub STOW $OriInst
     if contains("$righthand", "paper") then gosub STOW RIGHT
     if contains("$lefthand", "paper") then gosub STOW LEFT
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
	return
### TRAIN PERCEPTION
TRAIN.PERCEPTION:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if ("$Train.Perception" == "0") then return
     if $Perception.LearningRate > 29 then return
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
     gosub JUGGLE.GET
     if (("%Caravan.Arrived" != "1") && ("%Caravan.Hunger" != "1")) then gosub JUGGLE
     if (("%Caravan.Arrived" != "1") && ("%Caravan.Hunger" != "1")) then gosub JUGGLE
     if (("%Caravan.Arrived" != "1") && ("%Caravan.Hunger" != "1")) then gosub JUGGLE
     if (("%Caravan.Arrived" != "1") && ("%Caravan.Hunger" != "1")) then gosub JUGGLE
     if (("%Caravan.Arrived" != "1") && ("%Caravan.Hunger" != "1")) then gosub JUGGLE
     gosub JUGGLE.PUT
     return
### TRAIN FIRST AID
TRAIN.FIRST.AID:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if ("$Train.First.Aid" == "0") then return
     if $First_Aid.LearningRate > 29 then return
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
     var Compendium.Wait.Time 1200
     if !def(Last.Compendium.Study.Time) then put #var Last.Compendium.Study.Time $gametime
     put #var Time.Since.Last.Compendium.Study {#evalmath ($gametime - $Last.Compendium.Study.Time)}
     if ($Time.Since.Last.Compendium.Study < %Compendium.Wait.Time) then goto EXIT.TIMER
     var Chart.Done 0
     var Iterations 0
     gosub GET MY COMPENDIUM
CHARTS:
     if ("%Caravan.Arrived" == "1") then goto CHART.EXIT
     if ("%Caravan.Hunger" == "1") then goto CHART.EXIT
     gosub CHART.STUDY
     if ("%Chart.Done" == "1") then goto CHART.EXIT
     goto CHARTS
CHART.STUDY:
     matchre CHART.STUDY ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You begin studying the .* chart, gradually absorbing the knowledge contained within\.$
     matchre RETURN ^You continue studying the .* chart, gradually absorbing more of the knowledge contained within\.$
     matchre RETURN ^You attempt to
     matchre RETURN ^You begin to study the .* chart, having a difficult time comprehending the advanced text\.$
     matchre RETURN ^You continue to study the .* chart, having a difficult time comprehending the advanced text\.$
     matchre CHART.TURN ^With a sudden moment of clarity,
     matchre CHART.TURN ^In a sudden moment of clarity, the information on the chart suddenly makes sense to you\.$
     matchre CHART.TURN ^You continue studying the chart, but believe that you have discerned all you can from it\.$
     matchre CHART.NEXT ^Why do you need to study this chart again\?$
     send STUDY MY COMPENDIUM
     matchwait
CHART.NEXT:
     math Iterations add 1
     if %Iterations > 5 then var Chart.Done 1
     goto CHART.TURN
CHART.TURN:
     matchre CHART.TURN ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You turn to the section containing .* physiology\.$
     send TURN MY COMPENDIUM
     matchwait
CHART.EXIT:
     gosub STOW MY COMPENDIUM
     put #var Last.Compendium.Study.Time $gametime
     put #var save
EXIT.TIMER:
     return
### TRAIN SCHOLARSHIP
TRAIN.SCHOLARSHIP:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if ("$Embroidery.Pattern" == "NULL") then return
     if ("$Train.Scholarship" == "0") then return
     if $Scholarship.LearningRate > 29 then return
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
     gosub GET MY %Embroidery.Pattern PATTERN
     gosub PUT STUDY MY %Embroidery.Pattern PATTERN
     gosub PUT STUDY MY %Embroidery.Pattern PATTERN
     gosub PUT STUDY MY %Embroidery.Pattern PATTERN
     gosub STOW MY %Embroidery.Pattern PATTERN
     return
### TRAIN FORAGING
TRAIN.FORAGING:
     var Iterations 0
COLLECT.LOOP:
     if ("%Caravan.Arrived" == "1") then return
     if ("%Caravan.Hunger" == "1") then gosub FEED.CARAVAN
     if ("$Train.Foraging" == "0") then return
     if $Foraging.LearningRate > 29 then return
     if ("$righthand" != "Empty") then gosub STOW RIGHT
     if ("$lefthand" != "Empty") then gosub STOW LEFT
COLLECT.COUNT:
     math Iterations add 1
     if %Iterations > 5 then return
     gosub PUT COLLECT ROCK
     goto COLLECT.LOOP
#<=============================================================================================>#
#<                                      REMOVE SUBROUTINE                                      >#
#<=============================================================================================>#
REMOVE:
     var Remove $0
REMOVE.CONT:
     pause 0.1
     matchre REMOVE.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You (?:slide|remove|take (?:(?:an?|some) .*|)off) .*\.$
     matchre RETURN ^Remove what\?$
     send REMOVE %Remove
     matchwait
#<=============================================================================================>#
#<                                     APPRAISAL SUBROUTINE                                    >#
#<=============================================================================================>#
APPRAISE:
     var App $0
APPRAISE.CONT:
     pause 0.1
     matchre APPRAISE.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     matchre RETURN ^What were you referring to\?$
     matchre RETURN ^Appraise what\?  Type APPRAISE HELP for more information\.$
     matchre RETURN ^It's hard to appraise the .* when it's inside something\.$
     send APPRAISE %App
     matchwait
#<=============================================================================================>#
#<                                       WEAR SUBROUTINE                                       >#
#<=============================================================================================>#
WEAR:
     var Wear $0
WEAR.CONT:
     pause 0.1
     matchre WEAR.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You (?:slide|hang|put on|(?:put|attach) (?:an?|some)) .*\.$
     matchre RETURN ^Wear what\?$
     send WEAR %Wear
     matchwait
#<=============================================================================================>#
#<                                     JUGGLING SUBROUTINES                                    >#
#<=============================================================================================>#
JUGGLE.GET:
     matchre JUGGLE.GET ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You are already holding that\.$
     matchre RETURN ^You get
     matchre RETURN ^What were you referring to\?$
     matchre RETURN ^I could not find what you were referring to\.$
     send GET MY $Jugglie FROM MY $JuggCont
     matchwait
JUGGLE.PUT:
     matchre JUGGLE.PUT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put
     matchre RETURN ^What were you referring to\?$
     send PUT MY $Jugglie IN MY $JuggCont
     matchwait
JUGGLE:
     pause 0.1
     matchre JUGGLE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^That's a bit hard to do in such close quarters\.$
     matchre RETURN ^But you're not holding .*\.$
     matchre RETURN ^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$
     send JUGGLE MY $Jugglie
     matchwait
#<=============================================================================================>#
#<                                      GET SUBROUTINE                                         >#
#<=============================================================================================>#
GET:
     var Get $0
GET.CONTINUE:
     matchre GET.CONTINUE ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You get .*\.$
     matchre RETURN ^You are already holding that\.$
     matchre RETURN ^Get what\?$
     matchre RETURN ^I could not find what you were referring to\.$
     matchre RETURN ^What were you referring to\?$
     send GET %Get
     matchwait
#<=============================================================================================>#
#<                                     STOW SUBROUTINE                                         >#
#<=============================================================================================>#
STOW:
     var Stow $0
STOW.CONT:
     pause 0.1
     matchre STOW.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,
     matchre RETURN ^You put your .*\.$
     matchre RETURN ^What were you referring to\?$
     matchre RETURN ^Stow what\?  Type 'STOW HELP' for details\.$
     send STOW %Stow
     matchwait
#<=============================================================================================>#
#<                                      PUT SUBROUTINE                                         >#
#<=============================================================================================>#
PUT:
     var Command $0
PUT.CONT:
     pause 0.1
     matchre PUT.CONT ^\.\.\.wait\s+\d+\s+sec(?:onds?|s)?\.?$|^Sorry\,|^You don't seem to be able to move to do that|^You can't do that while entangled in a web
     matchre PUT.STOW ^You need a free hand
     matchre RETURN ^You|^Please rephrase that command\.$|^FACE HELP|^EXP HELP|^.* what\?$|^Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?$|^\[Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\]$|^\(Roundtime\:?\s+\d+\s+sec(?:onds|s)?\.?\)$|^Obvious|^\s*Encumbrance\s*\:|^You'll need to have a bladed instrument to skin with\.$|It's not dead yet|^.* has already been tied off\.$|^I could not find what you were referring to\.$|^What were you referring to\?$
     send %Command
     matchwait
PUT.STOW:
     if "$righthand" != "Empty" then gosub STOW RIGHT
     if "$lefthand" != "Empty" then gosub STOW LEFT
     goto PUT.CONT
