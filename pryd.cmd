pray:  
send pray boulder 
match pelt2 It takes a moment to notice 
match bloss You notice a plant quickly begin to sprout and extend upwards. 
match pelt No reaction is immediately visible but before you give up, a nearby bush sprouts a new twig complete with leaves in a matter of seconds. 
matchwait 
 
Bloss: 
send get bloss 
pause 
send put bloss on boulder 
waitfor As the voices fade from your hearing and thoughts, you feel your senses returning to the real world. 
pause 
put stand 
pause 
send get sym 
pause 
send stow symbol
pause 
goto pray 
  
pelt: 
send get gob skin from my bundle 
pause 
send put skin on boulder 
pause 
send get symbol 
send stow symbol 
pause 
goto pray 
 
pelt2: 
send get zombie skin from my bundle 
pause 
send put skin on boulder 
pause 
send get symbol 
send stow symbol
pause 
goto pray