#MISC: Manor in Leth 

if_1 goto %1 

put push statue 
waitfor roundtime 
pause 0 
move w 
move w 
move sw 
move go house 
move s 

0: 
COUNTER SET 0 
match hand_up points at the word "Fire." 
match %c Roundtime: 
put turn head 
matchwait 

1: 
COUNTER SET 1 
match hand_down points at the word "Exchange." 
match %c Roundtime: 
put turn head 
matchwait 

2: 
COUNTER SET 2 
match hand_up points at the word "Poison." 
match %c Roundtime: 
put turn head 
matchwait 

3: 
put pull lever 
move n 
move go door 
move ne 
move n 
move e 
move go door 
put hide 
goto exit 


hand_up: 
pause 1 
counter add 1 
match push_head The gargoyle claw is already pushed up as far as it will go. 
match push_head You push the gargoyle claw up and it clicks into place. 
put push claw 
matchwait 

hand_down: 
pause 1 
put pull claw 
match push_head The gargoyle claw is already pulled down as far as it will go. 
match push_head You pull the gargoyle claw down and it clicks into place. 
counter add 1 
matchwait 

push_head: 
match error gout of deep blue flame and blazing sparks erupts from within! 
match %c The gargoyle head shudders as something inside grinds into motion, then silence. 
match %c The gargoyle head shudders as something inside grinds into motion, followed by a moment's worth of odd clicking noises. 
put push head 
matchwait 


error: 
ECHO ***************** 
ECHO ERROR ERROR ERROR 
ECHO ***************** 
EXIT 

exit: 
ECHO ************** 
ECHO DONE! SUCCESS! 
ECHO ************** 
EXIT