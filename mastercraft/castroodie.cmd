 if_1 goto start
echo To use type .khritrain KHRIs
     exit

start:
     gosub verb sit
     gosub verb khri start %0

     var Util 0
     var Aug 0
     action instant setvariable Util 1 when (Dampen|Shadowstep|Sensing|Vanish|Silence|Liberation|Hasten|Serenity|Calm|Sagacity)
     action instant setvariable Aug 1 when (Darken|Strike|Safe|Flight|Elusion|Plunger|Focus|Sight|Steady)
put khri check;exp
     waitforre EXP HELP
     action remove (Dampen|Shadowstep|Sensing|Vanish|Silence|Liberation|Hasten|Serenity|Calm|Sagacity)
     action remove (Darken|Strike|Safe|Flight|Elusion|Plunger|Focus|Sight|Steady)
     var UtilLocked 0
     var AugLocked 0
     if %Util = 0 then var UtilLocked 1
     if %Aug = 0 then var AugLocked 1

loop:
     if %UtilLocked = 1 then if %AugLocked = 1 then goto end
     gosub verb khri meditate
     gosub verb khri meditate
     gosub verb khri meditate
     gosub verb khri meditate
     gosub verb khri meditate
     if %Util = 1 then gosub checkexp Util
     if %Aug = 1 then gosub checkexp Aug
     goto loop

checkexp:
     var type $1
put skill %type
     waitforre (\d+)/34
     if $1 > 33 then gosub setlock %type
     return
setlock:
     var $1Locked 1
     return

end:
     gosub verb khri stop
khri-replenish.p:
     pause 0.5
khri-replenish:
put khri meditate
     matchre khri-replenish.p (type ahead|\.\.\.wait)
     match khri-replenished Your thoughts are clear
     match khri-replenish Roundtime
     matchwait
khri-replenished:
     gosub verb stand
     echo Locked !
     put khri stop
put #parse SCRIPT DONE
     exit


verb:
     setvariable verb $0
     goto verb.a
verb.p:
     pause 0.5
verb.a:
     pause 0.1
put %verb
     match verb.p type ahead
     match verb.p ...wait
     match verb.p can't do that while entangled in a web
     match verb.p perhaps try doing that again
     matchre verb.d (You attempt to relax your mind|You sit|You already|You coil|You uncoil|You're already using|inherently stealthy endeavor|transaction that small isn't worth|You don't have that many|You hand your|You burst from hiding|DANCE|You untie and pull|You carefully thread|You see no thread|You are already|You drop|Swan|Human boy|You find a hole|You slide|You work|You loosen|You strap|You slip|You pull|That area is not bleeding|You take|could not find what|You strain, but cannot focus your mind|You attempt to relax your mind|You get|You put|STOW HELP|You push|think pushing that would have any effect|You move|You're already using the Sight|You have not recovered from your previous use|careful focus, you adjust your eyes to see in shadow as they|You close your eyes, drawing all your thoughts inward|You're not ready to do that again|was just recently mined by someone else|Roundtime|area has already been tended to|work carefully at tending your wound|The spell pattern collapses|You are unable to control|not damaged enough to warrant repair|cannot figure out how to do that|You're not ready to do that|Drink what|What were you referring|You eat|You drink|You stand|Your analysis has revealed no additional resources|You look around, but can't see any place to hide yourself|already hidden|You pick up|You cannot do that while|You turn|already stalking|You attach|You remove)
     matchwait
verb.d:
     return