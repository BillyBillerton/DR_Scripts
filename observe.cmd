var dayconst sun
var nightconst panther
observe:

put prep pg
wait 5
put cast

matchre day dawn|early morning|mid-morning|late morning|noon|early afternoon|mid-afternoon|late afternoon|dusk
matchre night early evening|mid-evening|late evening|midnight|night|almost dawn|approaching sunrise
put time
matchwait

day:
put observe %dayconst
wait
pause .5
goto predict

night:
put observe %nightconst
wait
pause .5
goto predict

predict:
put get my bones
pause .5
put kneel
pause .5
put align offense
wait
pause .5
put roll my bone at sulli
wait
pause .5
put align survival
wait
pause .5
put roll my bone at sulli
wait
pause .5
put stow my bone
put stand
pause .5
put predict analyze