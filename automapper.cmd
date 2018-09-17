#
# TODO
# ----

#debuglevel 5
# Standard Account = 2, Premium Account = 3
var maxdepth 1

var depth 0
action math depth subtract 1 when ^Obvious
action math depth subtract 1 when ^It's pitch dark

var DRAG OFF

loop:
if $connected = 0 then echo MOVE %1
if $connected = 1 then gosub move %1
shift
if_1 goto loop
echo *** DONE ***
pause 1
put #parse YOU HAVE ARRIVED
put look
exit

move:
if ($hidden = 1) then
{
if matchre("%1", "climb|go") then var movement %1
else var movement sneak %1
} else
{
var movement $0
}
math depth add 1
if %depth < %maxdepth then goto move.whip
goto move.real
move.whip:
put %movement
goto return
move.real:
matchre move.real ^\.\.\.wait
matchre move.real ^Sorry, you may only type ahead
matchre move.failed ^You can't go there
matchre move.failed ^I could not find what you were referring to\.
matchre move.failed ^What were you referring to
matchre move.retreat ^You are engaged to
matchre move.retreat ^You try to move, but you're engaged
matchre return ^It's pitch dark
matchre return ^Obvious
matchre return ^Roundtime
put %movement
matchwait
move.retreat:
put retreat
put retreat
wait
goto move.real
move.failed:
echo *** MOVE FAILED ***
exit

return:
return