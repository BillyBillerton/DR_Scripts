if_1
goto amount
else echo NO SPELL
exit

amount:
put prep %1 %2
if_2
goto target
else
goto cast

target:
put tar %3

if_3
goto wait
else goto cast

wait:
pause %4

cast:
put cast