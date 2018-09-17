action goto Danger when A monotonous buzzing sound fills the air. 
action goto Danger when You notice an unusual smell drifting through the area. 
action goto Danger when  A loud cracking sound resonates from somewhere closeby. 
action goto careful when You see evidence of mature trees and are certain a scattering of trees remains to be found. 
action goto end when Your analysis has revealed no additional resources to be found here 
action goto deadwood when You are certain that (moabi|mangrove|fir|cedar|oak|ash|aspen|pine|birch|maple|spruce|balsa) 
 
var goodwood bloodwood stick|bloodwood branch|bloodwood limb|bloodwood logg|azurelle stick|azurelle branch|azurelle limb|azurelle log|mistwood stick|mistwood branch|mistwood limb|mistwood log|rockwood stick|rockwood branch|rockwood limb|rockwood log|ironwood stick|ironwood branch|ironwood limb|ironwood log|silverwood stick|silverwood branch|silverwood limb|silverwood log|copperwood stick|copperwood branch|copperwood limb|copperwood log|darkspine stick|darkspine branch|darkspine limb|darkspine log|ebony stick|ebony branch|ebony limb|ebony log|goldwood stick|goldwood branch|goldwood limb|goldwood log|osage stick|osage branch|osage limb|osage log|willow stick|willow branch|willow limb|willow log|rosewood stick|rosewood branch|rosewood limb|rosewood log|bamboo stick|bamboo branch|bamboo limb|bamboo log|elm stick|elm branch|elm limb|elm log|larch stick|larch branch|larch limb|larch log|sandalwood stick|sandalwood branch|sandalwood limb|sandalwood log|lelori stick|lelori branch|lelori limb|lelori log|apple stick|apple branch|apple limb|apple log|cypress stick|cypress branch|cypress limb|cypress log|mahongany stick|mahogany branch|mahogany limb|mahogany log|hickory stick|hickory branch|hickory limb|hickory log|tamarak stick|tamarak branch|tamarak limb|tamarak log|yew stick|yew branch|yew limb|yew log|hemlock stick|hemlock branch|hemlock limb|hemlock log|durian stick|durian branch|durian limb|durian log|redwood stick|redwood branch|redwood limb|redwood log|bocote stick|bocote branch|bocote limb|bocote log|teak stick|teak branch|teak limb|teak log|kapok stick|kapok branch|kapok limb|kapok log|cherry stick|cherry branch|cherry limb|cherry log|walnut stick|walnut branch|walnut limb|walnut log|alder stick|alder branch|alder limb|alder log|adderwood stick|adderwood branch|adderwood limb|adderwood log|alerce stick|alerce branch|alerce limb|alerce log|diamondwood stick|diamondwood branch|diamondwood limb|diamondwood log|dragonwood stick|dragonwood branch|dragonwood limb|dragonwood log|e'erdream stick|e'erdream branch|e'erdream limb|e'erdream log|glitvire stick|glitvire branch|glitvire limb|glitvire log|gloomwood stick|gloomwood branch|gloomwood limb|gloomwood log|iroko stick|iroko branch|iroko limb|iroko log|pozumshi stick|pozumshi branch|pozumshi limb|pozumshi log|smokewood stick|smokewood branch|smokewood limb|smokewood log|tamboti stick|tamboti branch|tamboti limb|tamboti log|zingana stick|zingana branch|zingana limb|zingana log 
 
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