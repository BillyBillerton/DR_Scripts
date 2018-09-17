#Weapon forging.

var material %1
var weapon %2
var extra %3

if_3 then goto getmat
echo Usage is: .forge <material> <weapon> <extra>
exit


GetMat:
	send get my %material ingot
	match studybook You get
	match end referring
	matchwait

StudyBook:
	send take weapon book
	send study book
	pause
	pause 1	
	send put book in sack
	goto forgestart

ForgeStart:
	send put ingot on anv
	send get my hamm
	pause 1
	send get my tong
	send pound ing with hamm
	match bellows stifled coals
	match shovel more fuel
	match turn soft reworking
	match turn horn of the anvil
	match moremat larger volume of metal to continue
	match pound Roundtime:
	matchwait

Pound:
	pause
	pause 1
	send pound %weapon with hamm
	match bellows stifled coals
	match shovel more fuel
	match turn soft reworking
	match turn horn of the anvil
	match finish slack tub
	match pound Roundtime:
	matchwait

Bellows:
	pause
	pause 1
	send put tong in my sack
	send get my bell
	pause 1
	send push bell
	pause
	pause 1	
	send put bell in my sack
	send get tong
	goto pound

Shovel:
	pause
	pause 1
	send put tong in sack
	send get my shov
	pause 1
	send push fuel with shov
	pause
	pause 1	
	send put shov in my back
	send get tong
	goto pound

Turn:
	pause
	pause 1
	send turn %weapon with tong
	match finish slack tub
	match pound Roundtime:
	matchwait

Finish:
	pause
	pause 1
	send put ham in my sack
	send put tong in my sack
	send push tub
	pause
	pause 1
	send get %extra
	send get %weapon
	send assemble %weapon with %extra
	pause 1
	send put %weapon in my back
	goto getmat

MoreMat:
	send put hamm in my sack
	send put tong in my sack
	pause 1	
	send get %material ing
	send put ing in my back
	echo Usable material exhausted. Script ending.
	exit

End:
	echo Materials exhausted. Script ending.
	exit