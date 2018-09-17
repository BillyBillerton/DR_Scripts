var wardspell mpp
var wardmana 8
var utilspell bless
var utilmana 10
var augspell centering
var augmana 10
var camb armband
var cambmana 4
var climbable wall
var container backpack
pause 1
var commune = 1
timer start
var praytime 660
var badgetime 5400
var communetime 2400
var song scale
counter set 0


put rem my %camb
pause 1
put get my %camb from my %container
pause 1
main:
echo %t
if $mana < 15 then goto compen
put prep %wardspell %wardmana
pause .5
put charge my %camb %cambmana
wait
pause .5
put charge my %camb %cambmana
wait
pause .5
put invoke my %camb
waitfor You feel fully prepared
put cast
pause 1
put prep %augspell %augmana
pause .5
put charge my %camb %cambmana
wait
pause .5
put charge my %camb %cambmana
wait
pause .5
put invoke my %camb
waitfor You feel fully prepared
put cast
pause 1
put prep %utilspell %utilmana
pause .5
put charge my %camb %cambmana
wait
pause .5
put charge my %camb %cambmana
wait
pause .5
put invoke my %camb
waitfor You feel fully prepared
put cast
pause 1
counter add 1
if %c % 3 = 0 then gosub perc
if %c = 6 then goto compen
if %t > %praytime then gosub pray
if %t > %badgetime then gosub badge
if %t > %communetime then gosub commune


goto main

perc:
put power
wait
pause 1
return

pom:
put prep pom 10
waitfor You feel fully prepared
put cast
pause 10
wait:
if $stunned = 1 then
{
	pause 5
	goto wait
}

compen:
pause .5
put get my compen
put open my compen
pause .5
put study my compen
wait
pause .5
put turn my compen
put study my compen
wait
pause .5
put turn my compen
put close my compen
pause .5
put stow my compen
pause 1
put app my pouch careful
wait
pause 1
if %c = 6 then counter set 0
goto main

pray:
put wear my %camb
pause 1
put get my mat
pause 1
put unroll my mat
pause 1
put kneel mat
pause 1
put kiss mat
pause 1
put stand
pause 1
put dance mat
wait
pause 1
put dance mat
wait
pause 1
put dance mat
wait
pause 1
if $standing = 0 then put stand
pause 1
put roll mat
pause 1
put stow mat
pause 1
put pray damaris
wait
pause 1
put get my txistu
pause 1
put play %song
pause 120
put stop play
pause 1
put stow my txistu
pause 1 
put rem my %camb
pause 1
var praytime %t
math praytime add 660
return

badge:
put wear armband
pause 1
put rem badge
pause 1
put pray badge
wait
pause 2
put wear badge
pause 1
put rem armband
pause 1
var badgetime %t
math badgetime add 5400
return

commune:

if %commune = 1 then
{
	put wear armband
	pause 1
	put forage dirt
	wait
	pause 1
	put get my vess
	pause 1
	put commune eluned
	pause 3
	put stow vess
	pause 1
	put rem armb
	pause 1
	var commune 2
}
if %commune = 2 then
{
	put get my vess
	pause 1
	put sprinkle vess on mand
	pause 1
	put commune
	pause 3
	put stow my ves
	pause 1
	var commune 1
}
var communetime %t
math communetime add 1200
return
	
collect:
put collect rock
wait
pause .5
put kick pile
pause .5
goto main

climb:
put climb %climbable
wait
pause .5
if $standing = 0 then put stand
pause 1
goto main