action goto Danger when A monotonous buzzing sound fills the air.
action goto Danger when You notice an unusual smell drifting through the area.
action goto Danger when  A loud cracking sound resonates from somewhere closeby.
action goto careful when You see evidence of mature trees and are certain a scattering of trees remains to be found.
action goto end when Your analysis has revealed no additional resources to be found here
action goto end1 when Unfortunately, you are unable to find any way to avoid the danger
action goto deadwood when You are certain that (moabi|mangrove|fir|cedar|oak|ash|aspen|pine|birch|maple|spruce|balsa)

var goodwood bloodwood stick|bloodwood branch|bloodwood limb|bloodwood log|azurelle stick|azurelle branch|azurelle limb|azurelle log|mistwood stick|mistwood branch|mistwood limb|mistwood log|rockwood stick|rockwood branch|rockwood limb|rockwood log|ironwood stick|ironwood branch|ironwood limb|ironwood log|silverwood stick|silverwood branch|silverwood limb|silverwood log|copperwood stick|copperwood branch|copperwood limb|copperwood log|darkspine stick|darkspine branch|darkspine limb|darkspine log|ebony stick|ebony branch|ebony limb|ebony log|goldwood stick|goldwood branch|goldwood limb|goldwood log|osage stick|osage branch|osage limb|osage log|willow stick|willow branch|willow limb|willow log|lelori stick|lelori branch|lelori limb|lelori log|bocote stick|bocote branch|bocote limb|bocote log|walnut stick|walnut branch|walnut limb|walnut log|adderwood stick|adderwood branch|adderwood limb|adderwood log|diamondwood stick|diamondwood branch|diamondwood limb|diamondwood log|dragonwood stick|dragonwood branch|dragonwood limb|dragonwood log|e'erdream stick|e'erdream branch|e'erdream limb|e'erdream log|glitvire stick|glitvire branch|glitvire limb|glitvire log|gloomwood stick|gloomwood branch|gloomwood limb|gloomwood log|iroko stick|iroko branch|iroko limb|iroko log|pozumshi stick|pozumshi branch|pozumshi limb|pozumshi log|smokewood stick|smokewood branch|smokewood limb|smokewood log|tamboti stick|tamboti branch|tamboti limb|tamboti log|zingana stick|zingana branch|zingana limb|zingana log

axe:
send get my axe
pause
goto lumber

lumber:
pause
pause
send watch forest
pause
pause
if matchre("$roomobjs","%goodwood") then gosub deedwood $0
send chop tree
matchre lumber Roundtime
matchwait

danger:
send watch forest danger
pause
pause
if ^Unfortunately, you are unable to find any way to avoid the danger then exit
goto lumber

deedwood:
pause
setvariable wood $0
send get packet
pause
send push %wood with packet
send stow pack
pause
send stow deed
return

careful:
pause
pause
send watch forest careful
pause
pause
goto lumber

end:
echo *** NO MORE WOOD ***
exit

deadwood:
pause 3
echo *** USELESS WOOD ***
exit

end1:
echo *** FAILED TO MARK DANGER ***
exit