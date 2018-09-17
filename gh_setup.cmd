#Geniehunter Globals Setup Menu

# This script is designed to facilitate the initial setup for Geniehunter.
# The options below are for setting the initial global variables needed
# for basic functions such as: spell casting, ammo collection, box storage
# gem storage and weapon sheathes.
# It it *strongly recommended* [but not required] that you set a value for
# every item, even if you do not currently utilize it. This is to ensure
# that the necessary values are in place in case you decide to utilize them
# in the future.
#
	
#debug 10

Setup:
		var MAIN Settables|Done
		var SETTABLES Bow Ammo|Crossbow Ammo|Sling Ammo|Quiver|LT Sheath|HT Sheath|Box Container|Gem Container|Junk Container|Default Container|Pouch Container|Prep Message|Back
		var GLOBALS GH_CONTAINER_BOW_AMMO|GH_CONTAINER_XB_AMMO|GH_CONTAINER_SLING_AMMO|GH_CONTAINER_QUIVER|GH_CONTAINER_LT_SHEATH|GH_CONTAINER_HT_SHEATH|GH_CONTAINER_BOX_CONTAINER|GH_CONTAINER_GEM_CONTAINER|GH_CONTAINER_JUNK_CONTAINER|GH_CONTAINER_DEFAULT_CONTAINER|GH_CONTAINER_POUCH_CONTAINER|PREP_MESSAGE
		var DESCS This is ammo for your stick bows [ie.: arrow].|This is the ammo for your crossbows [ie.: bolt]|This is the ammow for your sling [ie.: rock]|This is the container that holds ammo for bows, crossbows and slings.|This is the container that holds your LT weapon.|This is the container that holds your HT weapon.|This is the container to stow boxes in.|This is the container to stow gems in.|This is the container to stow junk in.|This is the default container for items.|This is a container that holds pouches [For new gem pouches and such.]|This holds your prep message. Make sure it's exact up to the spell name! [You hastily trace, You close your eyes... etc.]
		var MENU_WINDOW Geniehunter Menu
		put #var selection MAIN
		
		pause 1
		echo
		echo ################
		put #echo cyan All typed user input MUST be preceeded by tilde (~) character.
		echo ################

MenuDisplay:
		var last.selection $selection
		counter set 0
		pause 0.3
		gosub Menu.Build "%$selection" "selection" "continue.script" "" "%MENU_WINDOW"
		waitforre continue.script
		put #var selection {#eval toupper("$selection")}
		if $selection = BACK then
			{
			put #var selection MAIN
			goto MenuDisplay
			}
		if $selection = DONE then gosub Finish
		if ($selection = SETTABLES) then goto MenuDisplay
		gosub array.match "%SETTABLES" "%GLOBALS" "$selection" "this.global"
		gosub array.match "%SETTABLES" "%DESCS" "$selection" "this.desc"
		gosub GlobalSet "%this.global" "%this.desc"
		
Finish:
		echo Globals set. Saving...
		put #var save
		echo Globals saved. Exiting.
		put #window close "%this.window"
		exit		

exit

Menu.Build:
##Menu Building Routine
##Function - Builds a numbered menu of options in link format that saves option information into a variable.
##pre - First parameter must be an array of the option names/values. Second parameter is the name of the
##	target global variable to store the result of the link click. Third parameyer is a string
##	that will be parsed to continue the script after the menu item has been selected. Fourth parameter
##	is a string or array of items that are exceptions to be excluded from the menu list. Fifth parameter is a
##	window name to echo output to (leave out to echo to Game window).
##post - Value of clicked link is stored in target global variable.

		action (input) var input $1;put #parse input.done when ~(.*)

		if !%c then
				{		
				var this.array $1
				var target.variable $2
				var script.trigger $3
				var exceptions $4
				if !($5 = "") then 
						{
						var this.window $5
						put #window add "%this.window"
						put #window open "%this.window"
						put #clear %this.window
						send #echo ">%this.window" cyan $selection Menu
						send #echo ">%this.window"
						}
				else var this.window Game
				var this.option 0
				eval array.length count("%this.array","|")
				}
		if %c > %array.length then
				{
				var this.option 0
				counter set 0
				return
				}
		var this.choice %this.array(%c)
		if matchre("%exceptions","%this.choice") then
				{
				counter add 1
				goto menu.build
				}
		counter add 1
		math this.option add 1
		send #link ">%this.window" "%this.option. - %this.choice" "#var %target.variable %this.choice;#parse %script.trigger"
		goto menu.build
		
GlobalSet:
		put #clear "%this.window"
		var this.global $1
		var extra_message $2
		action (input) on
		if matchre("$selection", "%TOGGLES") then goto TOGGLE
		if !(%extra_message = "") then put #echo ">%this.window" cyan %extra_message
		put #echo ">%this.window" cyan Enter value for $selection:
		waitforre input.done
		put #var %this.global %input
		action (input) off
		put #clear "%this.window"
		put #echo ">%this.window" cyan $selection has been set to: %input
		put #echo ">%this.window"
		send #link ">%this.window" "Click to continue..." "#parse %script.trigger"
		waitforre %script.trigger
		put #var selection %last.selection
		gosub clear
		goto MenuDisplay
		
array.match:
	var this.array $1
	var that.array $2
	var search.str $3
	var result.str $4
	eval this.array tolower("%this.array")
	eval this.array replacere("%this.array", "\(|\)", "")
	eval search.str tolower("%search.str")
	if !matchre("%this.array", "(.*(?:\||^)%search.str)(?:\||$)") then
		{
		var %result.str Null
		echo String %search.str does not exist in array.
		}
	else
		{
		var substring_element $1
		eval array.index count("%substring_element","|")
		var %result.str %that.array(%array.index)
		}
	return