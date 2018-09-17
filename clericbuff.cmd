var benemana 10
var mppmana 15
var pfemana 15
var mappmana 15
var blessmana 15
put rem my armb
main:
gosub cast mpp
gosub cast pfe
gosub cast mapp
gosub cast bene
gosub cast bless
goto done

cast:
	put prep $0 %$0mana
	pause .5
	if $monstercount > 0 then put ret
	put charge my armb 10
	wait
	pause .5
	if $monstercount > 0 then put ret
	put charge my armb 10
	wait
	pause .5
	if $monstercount > 0 then put ret
	put invoke my armb
	wait
	pause .5
	if $monstercount > 0 then put ret
	waitfor You feel fully prepared
	put cast
	if $monstercount > 0 then put ret
	pause .5
	return

done:
	echo BUFF COMPLETE