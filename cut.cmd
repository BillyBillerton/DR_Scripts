#Ingot cutting.

var material %1
var size %2

if_2 goto cutstart
echo Usage is: .cut_ing <material> <size>
exit

CutStart:
	pause
	pause 1
	send turn cutter to %size
	action var matstow $1 when from inside your (\w+\s+\w+)\.$
	send get my %material ingot
	match cutloop You get
	match end referring
	matchwait

CutLoop:
	pause
	pause 1
	send push %material ing with cutter
	match stowcut cuts the ingot
	match finish need more metal
	matchwait

StowCut:
	pause
	pause 1
	send put second ing in my %matstow
	match cutloop ^You put
	match full too heavy
	match full fit
	matchwait

Finish:
	echo Material insufficient to continue. Script complete.
	exit

Full:
	echo Your %matstow is full. Please close it, put ingot in a new container and run script again.
	exit

End:
	echo Material insufficient to cut to that size. Script exiting.
	exit