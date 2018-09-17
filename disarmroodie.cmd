var container1 haversack
var container2 backpack
var container3 tote
var lockring yes
var thief_hide no
var style 
guild_Check:
		match barb Barbarian
		match bard Bard
		match cleric Cleric
		match moonmage Moon Mage
		match ranger Ranger
		match thief Thief
		match warmage Warrior Mage
		match container_check1 Gender
		put info
		matchwait
 
barb:
	var style bash
	goto container_check1

bard:
	var style shriek
	goto container_check1
	
cleric:
	var container1 backpack
	var container2 bag
	var style pray
	goto container_check1

moonmage:
	var style focus
	goto container_check1
	
ranger:
	var style whistle
	goto container_check1

thief:
	if (toupper("%thief_hide") = "NO") then
	{
		var style shriek
		}
	goto container_check1
	
warmage:
	var container2 backpack
	var style fire
	goto container_check1

container_Check1:
		matchre get_For_Disarm (coffer|trunk|chest|strongbox|skippet|caddy|crate|casket|box)
		match container_Check2 Encumbrance
	put look in my %container1;enc
	matchwait

container_Check2:
		matchre get_For_Disarm (coffer|trunk|chest|strongbox|skippet|caddy|crate|casket|box)
		match container_Check3 Encumbrance
	put look in my %container2;enc
	matchwait


container_Check3:
		matchre get_For_Disarm (coffer|trunk|chest|strongbox|skippet|caddy|crate|casket|box)
		match no_boxes Encumbrance
	put look in my %container3;enc
	matchwait

get_For_Disarm:
	var box $1
	get_Box:
	put get my %box
	pause 1
	goto disarm_id

no_boxes:
	echo ****DONE****
	exit

#DISARMS START
disarm_id:
	counter set 0
	matchre dblind This trap is a laughable matter, you could do it blindfolded!|An aged grandmother
	matchre dquick is a trivially constructed|will be a simple matter for you to|should not take long with your skills
	matchre dcareful You have some chance|The trap has the edge on you|The odds are against you|some chance of being able|with persistence you believe you could|would be a longshot|minimal chance|You really don't have any chance|The odd are against
	matchre dnormal is precisely at your skill level|with only minor troubles|got a good shot at
	matchre dcareful Prayer would be a good start|You could just jump off a cliff|same shot as a snowball|pitiful snowball encased in the Flames
	matchre startover You don't see any reason to attempt to disarm that.
	matchre disarm_id Careful
	match lock_id Roundtime
	put disarm id
	matchwait

startover:
	put stow left
	put stow right
	goto container_check1

dblind:
var dtype blind
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto dnormal
	}
#	matchre dnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
#	matchre dquick You work with the trap for a while but are unable to make any progress.
	matchre disarm_id Roundtime
	matchre dquick fumbling fails to disarm|This is not likely to be a good thing|unable to make any progress
	matchre startover You don't see any
	matchre lock_id You are certain the %box is not trapped|You guess it is already disarmed|DISARM HELP for syntax help
	put disarm blind
	matchwait


dquick:
	var dtype quick
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto dnormal
	}
#	matchre dnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
#	matchre dquick You work with the trap for a while but are unable to make any progress.
	matchre disarm_id Roundtime
	matchre dquick fumbling fails to disarm|This is not likely to be a good thing|unable to make any progress
	matchre startover You don't see any
	matchre lock_id You are certain the %box is not trapped|You guess it is already disarmed|DISARM HELP for syntax help
	put disarm quick
	matchwait

dnormal:
	var dtype normal
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto dnormal
	}
#	matchre dnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
#	matchre dquick You work with the trap for a while but are unable to make any progress.
	matchre disarm_id Roundtime
	matchre dnormal fumbling fails to disarm|This is not likely to be a good thing|unable to make any progress
	matchre startover You don't see any
	matchre lock_id You are certain the %box is not trapped|You guess it is already disarmed|DISARM HELP for syntax help
	put disarm
	matchwait

dcareful:
	var dtype careful
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto dcareful
	}
#	matchre dnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
#	matchre dquick You work with the trap for a while but are unable to make any progress.
	matchre disarm_id Roundtime
	matchre dcareful fumbling fails to disarm|This is not likely to be a good thing|unable to make any progress
	matchre startover You don't see any
	matchre lock_id You are certain the %box is not trapped|You guess it is already disarmed|DISARM HELP for syntax help
	put disarm careful
	matchwait

#DISARMS END

#LOCKS START

lock_id:
	
	matchre disarm_id is not fully disarmed,
	matchre lock_ID fails to teach you anything about the lock guarding it|just broke
	matchre startover Pick what
	matchre pblind you could do it blindfolded!|An aged grandmother
	matchre pquick is a trivially constructed|will be a simple matter for you to|should not take long with your skills
	matchre pcareful Prayer|some chance of being able|with persistence you believe you could|would be a longshot|minimal chance|You really don't have any chance|The odd are against
	matchre pnormal is precisely at your skill level|with only minor troubles|got a good shot at
	matchre lock_id Careful	
	matchre loot not even locked|Roundtime
	put pick ID
	matchwait


pblind:
	
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto pnormal
	}
#	matchre pnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
	matchre lock_id With a soft click
	matchre pquick You are unable to make
	matchre loot not even locked
	matchre startover Pick what
	put pick blind
	matchwait

pquick:
	
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto pnormal
	}
#	matchre pnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
	matchre lock_id With a soft click
	matchre pquick You are unable to make
	matchre loot not even locked
	matchre startover Pick what
	put pick quick
	matchwait

pnormal:
	
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto pcareful
	}
#	matchre pcareful You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
	matchre lock_id With a soft click
	matchre pnormal You are unable to make
	matchre loot not even locked
	matchre startover Pick what
	put pick
	matchwait

pcareful:
	
	counter add 1
	if %c > 3 then 
	{
		counter set 0
		goto pcareful
	}
#	matchre pnormal You get the distinct feeling your manipulation caused something to shift inside the trap mechanism.  This is not likely to be a good thing.
	matchre lock_id With a soft click
	matchre pcareful You are unable to make
	matchre loot not even locked
	matchre startover Pick what
	put pick careful
	matchwait

loot:
	
	put open my %box
	pause 1
	put fill my gem pouch with my %box
	pause .5
	put fill my pouch with my %box
	pause .5
	put get coin
	pause .5
	put get coin
	pause .5
	put get coin
	pause .5
	put get coin
	pause .5
	put get coin

dismantle:
	matchre exp_check Roundtime
	matchre dismantle next 15 seconds
	put disman my %box %style
	matchwait
	goto container_check1

exp_check:
if $Locksmithing.LearningRate < 33 then goto container_check1
echo locks done