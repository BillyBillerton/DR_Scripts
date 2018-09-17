if $charactername = Loukno then 
{ 
var gafMana 100 
var researchList utility|augmentation|warding|FUNDAMENTAL|stream|FUNDAMENTAL 
} 
 
if $charactername = Perias then 
{ 
var gafMana 45 
var researchList utility|augmentation|warding|FUNDAMENTAL|stream|FUNDAMENTAL 
} 
 
if $charactername = Shingi then 
{ 
var gafMana 35 
var researchList utility|augmentation|warding|FUNDAMENTAL|stream|FUNDAMENTAL 
} 
 
if $charactername = Ntel then 
{ 
var gafMana 17 
var researchList utility|augmentation|warding|FUNDAMENTAL|stream|FUNDAMENTAL 
} 
 
###SCRIPT SECTION### 
 
action instant put quit when eval $bleeding > 0 
action instant put quit when eval $health < 50 
 
var skillNumber 0 
if_1 then var skillNumber %1 
eval listCount count("%researchList","|") 
send spell 
match start Gauge Flow 
match noGaf SPELL STANCE 
matchwait 
 
start: 
send prep gaf %gafMana 
waitfor You feel fully 
send cast 
matchre start backfire|too mentally fatigued 
match research local fluctuations in mana 
matchwait 
 
noGaf: 
echo GAF NOT FOUND IN SPELL LIST! PLEASE LEARN IT! 
put #echo >OOC GAF NOT FOUND IN SPELL LIST! PLEASE LEARN IT! 
exit 
 
research: 
eval researched element("%researchList", %skillNumber) 
send research %researched 300 
match start You make definite progress in your project  
match changeResearch Breakthrough 
matchwait 
 
changeResearch: 
send research stop 
pause 1 
send research cancel 
pause 0.5 
send research cancel 
math skillNumber add 1 
if %skillNumber > %listCount then var skillNumber 0 
goto start