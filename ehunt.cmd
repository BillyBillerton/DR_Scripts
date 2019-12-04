


#%
#% READ ME
#%
#% General idea, to use something set it to the name of the spell/weapon/buff/etc. To not use something set it to none or off.
#% Example : var smalledge scimitar  = will train small edge with your scimitar
#% Example : var buff-spell-5 courage 25  = will keep courage on you at 25 mana
#% Example : var heavythrown none  =  will not train heavy thrown
#%
#%
#% snapshots can be set to on or off, bow/xbow/sling shoot can be set to fire, poach or snipe.
#% arrange-times is how many times you want to arrange the critters.
#% arrange-option can be skin, part, bone, or none for default arrange method.
#% exp-limit is when to switch skills, a/e if exp-limit is set to 30, it will swap to next skill when exp is above 30/34
#% attack-limit is a default 'after this many attacks switch to next skill' to keep you from spending 2 hours trying to lock small edge on a critter that dont teach good.
#%
#% Version 4.31



     var smalledge none
     var largeedge none
     var twohandededge none
     var edge-maneuver none
     var smallblunt none
     var largeblunt mace
     var twohandedblunt mace
     var blunt-maneuver none
     var staves none
     var staves-maneuver none
     var polearm none
     var polearm-maneuver none
     var crossbow none
     var crossbow-ammo none
     var crossbow-shoot none
     var crossbow-snapshots none
     var bow none
     var bow-ammo none
     var bow-shoot none
     var bow-snapshots off
     var slings none
     var sling-ammo none
     var sling-shoot none
     var sling-snapshots off
     var ranged-maneuver none
     var lightthrown none
     var lightthrown-attack throw
     var lightthrown-bond off
     var heavythrown none
     var heavythrown-bond off
     var heavythrown-attack none
     var thrown-maneuver none
     var offhand none
     var offhand-type melee
     var offhand-bond off
     var brawl on
     var brawl-maneuver none

     var train-stealths off
     var alwayshideFORmelee off
     var alwayshideFORranged off
 
     var targetmagic on
     var TM-spell-1 horn 6
     var TM-spell-2 ff 5
     var TM-spell-3 none
     var TM-weapon none

#% DEBIL
#% Debil cast can be set to area, creature, a specific command like "malediction offense" or none for general debil casts.

     var debilitation on
     var debil-spell sick
     var debil-cast none

     var arrange-times 5
     var arrange-option none

     var exp-limit 30

#% ATTACK LIMITS
#% These are 'if not mind locked by this many attacks move on to next skill' defaults.

     var smalledge-attack-limit 60
     var largeedge-attack-limit 60
     var twohandededge-attack-limit 60
     var smallblunt-attack-limit 30
     var largeblunt-attack-limit 60
     var twohandedblunt-attack-limit 60
     var staves-attack-limit 60
     var polearm-attack-limit 30
     var crossbow-attack-limit 30
     var bow-attack-limit 30
     var slings-attack-limit 30
     var lightthrown-attack-limit 30
     var heavythrown-attack-limit 30
     var offhand-attack-limit 30
     var brawl-attack-limit 60
     var TM-attack-limit 60


#% LOOT
     var lootgems on
     var lootcoins on
     var lootboxes off

     var box-holders sack
     var box-limit 9999

#% STANCES  EVA PARRY SHIELD ATTACK

     var change-stance on
     var smalledge-stance 100 40 40 100
     var largeedge-stance 100 40 40 100
     var twohandededge-stance 100 40 40 100
     var smallblunt-stance 100 40 40 100
     var largeblunt-stance 100 40 40 100
     var twohandedblunt-stance 100 40 40 100
     var staves-stance 100 40 40 100
     var polearm-stance 100 40 40 100
     var crossbow-stance 100 40 40 100
     var bow-stance 100 0 80 100
     var slings-stance 100 0 80 100
     var lightthrown-stance 100 40 40 100
     var heavythrown-stance 100 40 40 100
     var offhand-stance 100 40 40 100
     var brawl-stance 100 40 40 100
     var TM-stance 100 40 40 100

#% WARMAGE SUMMONING
     var wm-align air
     var wm-pathway power


     
#% BARD SCREAMS & WHISTLES
     var bard-screams off
     var bard-defiance off
     var smalledge-scream scream havoc
     var largeedge-scream scream concussive
     var twohandededge-scream whistle piercing
     var smallblunt-scream none
     var largeblunt-scream none
     var twohandedblunt-scream none
     var staves-scream none
     var polearm-scream none
     var crossbow-scream none
     var bow-scream none
     var slings-scream none
     var lightthrown-scream none
     var heavythrown-scream none
     var offhand-scream none
     var brawl-scream none


#% THIEF KHRI
     var thief-khri on
     var kneel-for-khris on
     var smalledge-khri avoid prowess haste
     var largeedge-khri avoid prowess haste
     var twohandededge-khri none
     var smallblunt-khri none
     var largeblunt-khri none
     var twohandedblunt-khri none
     var staves-khri none
     var polearm-khri none
     var crossbow-khri steady prowess avoid haste
     var bow-khri none
     var slings-khri none
     var lightthrown-khri none
     var heavythrown-khri none
     var offhand-khri none
     var brawl-khri strike avoid prowess

#% THIEF AMBUSH
     var thief-ambush on
     var smalledge-ambush stun
     var largeedge-ambush slash
     var twohandededge-ambush none
     var smallblunt-ambush none
     var largeblunt-ambush none
     var twohandedblunt-ambush none
     var staves-ambush stun
     var polearm-ambush none
     var crossbow-ambush none
     var bow-ambush none
     var slings-ambush none
     var lightthrown-ambush none
     var heavythrown-ambush none
     var offhand-ambush none
     var brawl-ambush none


#% BARB FORMS
     var barb-forms on
     var smalledge-forms dragon|bear
     var largeedge-forms turtle|eagle
     var twohandededge-forms none
     var smallblunt-forms none
     var largeblunt-forms none
     var twohandedblunt-forms none
     var staves-forms none
     var polearm-forms none
     var crossbow-forms none
     var bow-forms none
     var slings-forms none
     var lightthrown-forms none
     var heavythrown-forms none
     var offhand-forms none
     var brawl-forms none

#% BARB ROARS
     var barb-roars off
     var roar-1 none
     var roar-2 none
     var roar-3 none

#% BARB EXPERTISE
     var expertise on
     var analyze-1 flame
     var analyze-2 damage
     var analyze-3 none

#% Necro Rituals
     var necro-rituals on
     var ritual-1 none
     var ritual-2 none
     var ritual-3 none
     var necro-harvest on
     var necro-selfheal on
     var necro-heal-spell CF 5
     


#% SPELL BUFFS
     var buff-spell-1 center
     var buff-camb-1 none
     var buff-spell-2 mapp
     var buff-camb-2 none
     var buff-spell-3 none
     var buff-camb-3 none
     var buff-spell-4 none
     var buff-camb-4 none
     var buff-spell-5 none
     var buff-camb-5 none
     var buff-spell-6 none
     var buff-camb-6 none
     var buff-spell-7 none
     var buff-camb-7 none
     var buff-spell-8 none
     var buff-camb-8 none
     var buff-spell-9 none
     var buff-camb-9 none
     var buff-spell-10 none
     var buff-camb-10 none
     var minimum-attunement 10
     var camb-item none

     var cyclics off
     var cyclic-1 aewo 2
     var cyclic-1-cast none
     var cyclic-2 none
     var cyclic-2-cast none
     var cyclic-3 none
     var cyclic-3-cast none

#% AUTO LOG OUT
     var timelimit 28000


#% MODULES
     var modules off
     var module-1-name none
     var module-1-timing each kill
     var module-2-name none
     var module-2-timing per cycle
     var module-3-name none
     var module-3-timing skill change


#% CONTAINERS
     var sheath-1-name scabb
     var sheath-1-weapons mace
     var sheath-2-name none
     var sheath-2-weapons none
     var sheath-3-name none
     var sheath-3-weapons none
     var worn-weapons shortbow






#%
#% arrange-times can be set to a # to arrange kills that many times, 0 for none at all, or all if you have arrange all.
#% arrange-option can be skin, part, or bone.
#% will auto check for your fatigue & shit.
#% just set the vars above to your desire and start it up in the area you want to hunt at, will work anywhere :)
#%
 
 
 
#%
#%
#% DONT TOUCH ANYTHING BELOW HERE
#%
#%
#%
var randomskill off
if_1 then
{  
    if (("%1" = "off" || "%1" = "on") || ((%1 > 0) && (%1 < 18)) then
    {
        setvariable randomskill %1
        math randomskill subtract 1
        goto infostart
    }
 
    echo First Argument must be "off" or a number from the table below:
    echo 1. Small Edge
    echo 2. Large Edge
    echo 3. Two Handed Edge
    echo 4. Small Blunt
    echo 5. Large Blunt
    echo 6. Two Handed Blunt
    echo 7. Staves
    echo 8. Polearms
    echo 9. Crossbow
    echo 10. Bow
    echo 11. Slings
    echo 12. Heavy Thrown
    echo 13. Light Thrown
    echo 14. Offhand
    echo 15. Brawl
    echo 16. Targeted Magic
    echo 17. Modules
    exit
   
}
 
 
infostart:
put info
     waitforre Guild: *(\w+)
     var guild $1
 
     var starttime $gametime
     var internal-attunement %minimum-attunement
     math internal-attunement add 20
     if %internal-mana > 99 then var internal-mana 99
 
     action goto script-end when eval %t > %timelimit
 
     var offhandthr throw|thrown|throwing|lt|ht|LT|HT
     var offhandmelee melee|attack|tactic|tactics|att|none
     
     var skinmods preskin|pre skin|skin|pre loot|preloot|before skin|before loot|loot
     var killmods each kill|per kill|every kill|kill|each critter|each creature|per critter|per creature|each kill|every critter|every creature|critter|creature
     var skillmods swap skill|skill change|skill swap|skill|swap|change|weapon|per skill|per change|per swap
     var cyclemods per cycle|each cycle|when locked|locked|cycle
     var timermods timer|timed|time
 
     action instant setvariable arranged 10 when Try killing .* before you arrange it
     action put attack when You can not slam with
 
     action instant setvariable tactics $2|$4 when by landing (a|an) (\w+) and (a|an) (\w+)
     action instant setvariable tactics $2|attack when by landing (a|an) (\w+)\.
     action instant setvariable tactics $2|$4|$6 when by landing (a|an) (\w+), (a|an) (\w+) and (a|an) (\w+)
     action instant setvariable tactics $2|$4|$6|$8 when by landing (a|an) (\w+), (a|an) (\w+), (a|an) (\w+) and (a|an) (\w+)
 
     action instant setvariable hit-track 9999 when SWAPSKILL
 
     action instant setvariable crittername $1 when You turn to face .* (\S+)(\.|,)
     action instant setvariable crittername $1 when You .* are facing .* (\w+) .(\d+)
 
     var emptyspot1 purple dinosaur
     var emptyspot2 pink zebra
     
     var scream-timer 0
     var maneuver-timer $gametime
     math maneuver-timer add 70
     var attack-limit 30
 
 
 
     var weaponnames %smalledge|%largeedge|%twohandededge|%smallblunt|%largeblunt|%twohandedblunt|%staves|%polearm|%crossbow|%bow|%slings|%heavythrown|%lightthrown|%offhand|%brawl|%targetmagic|%modules
     var weapons smalledge|largeedge|twohandededge|smallblunt|largeblunt|twohandedblunt|staves|polearm|crossbow|bow|slings|heavythrown|lightthrown|offhand|brawl|TM|modules
     var stances smalledge-stance|largeedge-stance|twohandededge-stance|smallblunt-stance|largeblunt-stance|twohandedblunt-stance|staves-stance|polearm-stance|crossbow-stance|bow-stance|slings-stance|heavythrown-stance|lightthrown-stance|offhand-stance|brawl-stance|TM-stance|smalledge-stance|smalledge-stance|smalledge-stance
     var skills small edge|large edge|2HE|small blunt|large blunt|2HB|staves|pole|crossbow|bow|sling|HT|LT|offhand|brawl|targeted magic|module
     if matchre("%offhandthr","%offhand-type") then var attacks tactics|tactics|tactics|tactics|tactics|tactics|tactics|tactics|load|load|load|throw|throw|offhand|tactics|target|module
     if matchre("%offhandmelee","%offhand-type") then var attacks tactics|tactics|tactics|tactics|tactics|tactics|tactics|tactics|load|load|load|throw|throw|tactics|tactics|target|module
 
 
     var edges small edge|large edge|2HE
     var blunts small blunt|large blunt|2HB
     var loadedweapons bow|crossbow|sling
     var thrownweapons HT|LT
 
     var offhand-maneuver none
 
     var atttype throw
 
     if matchre("%offhandthr","%offhand-type") then var offhand-type thrown
     if matchre("%offhandthr","%offhand-type") then var offhand-type melee
 
     var SkillTrack 0
     eval SkillCount count("%weapons","|")
     math SkillCount add 1
     if "%randomskill" = "on" then
     {
    random 1 %SkillCount
    setvariable SkillTrack %r
     }
     if ((%randomskill < 17) && (%randomskill > 0)) then setvariable SkillTrack %randomskill
     setvariable range 0
     eval HolderCount count("%box-holders","|")
     math HolderCount add 1
     var BoxStowTrack 0
     action setvariable boxes 0;setvariable BoxStowTrack 0 when RESET boxes
     action setvariable train-stealths $1 when SET stealths (on|off)
     action setvariable alwayshideFORmelee $1 when SET alwayshideFORmelee (on|off)
     action setvariable alwayshideFORranged $1 when SET alwayshideFORranged (on|off)
     action setvariable $1 $2 when SET (\w+) (\w+)
     action setvariable $1 $2 when SET (\w+) (\d+)
     action var lost.target 1 when pattern dissipates with the loss of your
 
 
     eval CurrentStorage element("%box-holders", %BoxStowTrack)
     action instant setvariable range 1 when (closes to pole range on you|closes to melee range on you|begins to advance on you|advances from nearby)
     action instant setvariable range 0 when (You are already as far away|You retreat from combat|You sneak back out of combat)
     action instant setvariable fullaim 1 when (have your best shot possible|Your formation of a targeting pattern around|Your target pattern has finished forming)
     action instant setvariable fullprep 1 when You feel fully prepared to cast
     setvariable fullaim 0
     var gems morganite|agate|alexandrite|amber|amethyst|andulasites|andalusite|aquamarine|bead|beryl|bloodgem|bloodstone|carnelian|chrysoberyl|carnelian|chalcedony|chrysoberyl|chrysoprase|citrine|coral|crystal|diamond|diopside|emerald|egg|eggcase|garnet|gem|goldstone|glossy malachite|opal|pearl|pebble|peridot|quartz|ruby|sapphire|spinel|star-stone|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon|granite|hematite|iolite|ivory|jade|jasper|kunzite|lapis lazuli|malachite stone|moonstone|morganite|onyx|stones
     var otherloot scroll|tablet|vellum|sheiska leaf|ostracon|hhr'lav'geluhh bark|papyrus roll|smudged parchment|map|seishaka leaf|stones|kertig ingot|kertig bar|kertig tear|kertig fist|glaes fragment|glaes shard|glaes ingot|damite lump|damite ingot|damite bar|glaes bar|haralun lump|haralum ingot|haralun bar|animite bar|animite nugget|animite bar|tyrium bar|tyrium nugget|tyrium fragment|tyrium shard|tyrium ingot|silversteel bar|silversteel ingot|silversteel nugget|icesteel bar| ring
     var coins silver coin|gold coin|platinum coin|copper coin|bronze coin
     var ammotypes %crossbow-ammo|%bow-ammo|%sling-ammo|%lightthrown|%heavythrown|%offhand
     var boxtypes skippet|strongbox|chest|crate|caddy|coffer|casket|trunk|box
     setvariable cyclictimer $gametime
     var NextWeapon nil
     var commune-time $gametime
     math commune-time add 900
     var roartrack 1
     var formtrack 1
     var ritual-track 1
     var targettrack 1
     var cyclictrack 1
     var khritrack 1
     var khri none
     var buff-dur-1 0
     var buff-dur-2 0
     var buff-dur-3 0
     var buff-dur-4 0
     var buff-dur-5 0
     var buff-dur-6 0
     var buff-dur-7 0
     var buff-dur-8 0
     var buff-dur-9 0
     var buff-dur-10 0
     var skill-tracker 0
     var buff-tracker 0
     var autoswap-tracker 0
     var boxes 0
     var expertise-track 0
     var pray-tracker 0
     var stealths-locked 0
     var ambush-track 0
     if "%1" = "skipbuffs" then var buff-dur-1 900
     if "%1" = "skipbuffs" then var buff-dur-2 900
     if "%1" = "skipbuffs" then var buff-dur-3 900
     if "%1" = "skipbuffs" then var buff-dur-4 900
     if "%1" = "skipbuffs" then var buff-dur-5 900
     if "%1" = "skipbuffs" then var buff-dur-6 900
     if "%1" = "skipbuffs" then var buff-dur-7 900
     if "%1" = "skipbuffs" then var buff-dur-8 900
     if "%1" = "skipbuffs" then var buff-dur-9 900
     if "%1" = "skipbuffs" then var buff-dur-10 900
     if "%buff-spell-1" = "none" then var buff-dur-1 999999999999999
     if "%buff-spell-2" = "none" then var buff-dur-2 999999999999999
     if "%buff-spell-3" = "none" then var buff-dur-3 999999999999999
     if "%buff-spell-4" = "none" then var buff-dur-4 999999999999999
     if "%buff-spell-5" = "none" then var buff-dur-5 999999999999999
     if "%buff-spell-6" = "none" then var buff-dur-6 999999999999999
     if "%buff-spell-7" = "none" then var buff-dur-7 999999999999999
     if "%buff-spell-8" = "none" then var buff-dur-8 999999999999999
     if "%buff-spell-9" = "none" then var buff-dur-9 999999999999999
     if "%buff-spell-10" = "none" then var buff-dur-10 999999999999999
    if "%buff-spell-1" != "none" then
    {
        var preparedspell %buff-spell-1
        var buffer %buff-spell-1
        gosub set-dur
    }
    if "%buff-spell-2" != "none" then
    {
        var preparedspell %buff-spell-2
        var buffer %buff-spell-2
        gosub set-dur
    }
    if "%buff-spell-3" != "none" then
    {
        var preparedspell %buff-spell-3
        var buffer %buff-spell-3
        gosub set-dur
    }
     gosub timer
     var align-it 0
     if "%guild" = "Warrior" then if "%wm-align" != "none" then if "%wm-align" != "off" then var align-it 1
     if %align-it = 1 then gosub verb align %wm-align
     if "%guild" = "Thief" then gosub thief-khri
     if "%1" = "buff" then gosub spell-buffs
     if "%1" = "buff" then put #script pause
 
 
 
swap-skills:
     if "%attack" = "module" then var SkillTrack 0
     if $mana > %minimum-attunement then gosub spell-buffs
     if "%skill" = "reset" then var SkillTrack 0
     if %SkillTrack > %SkillCount then var SkillTrack 0
     var hit-track 0
 
     if "%skill" = "HT" then var thrown %heavythrown
     if "%skill" = "LT" then var thrown %lightthrown
     if "%skill" = "offhand" then var thrown %offhand
     if "%skill" = "offhand" then if "$lefthand" = "Empty" then gosub verb get %offhand
     if "%skill" = "HT" then if "$righthand" = "Empty" then gosub verb get %heavythrown
     if "%skill" = "LT" then if "$righthand" = "Empty" then gosub verb get %lightthrown
 
     var autoswap-tracker 0
     var gettmweapon 0
     if "%skill" = "targeted magic" then if "%TM-weapon" != "none" then if "%TM-weapon" != "off" then var gettmweapon 1
     if %gettmweapon = 1 then var NextWeapon %TM-weapon
     if "%WeapName" != "none" then gosub stow-wear
     if "$righthand" != "Empty" then gosub verb stow right
     if "$lefthand" != "Empty" then gosub verb stow left
     eval NextSkill element("%weapons", %SkillTrack)
     eval skill element("%skills", %SkillTrack)
     eval attack element("%attacks", %SkillTrack)
     eval NextWeapon element("%weaponnames", %SkillTrack)
     var stance-swap 0
     if "%NextWeapon" != "none" then if "%NextWeapon" != "off" then var stance-swap 1
     eval NextStance element("%stances", %SkillTrack)
     if %stance-swap = 1 then gosub change-stance %NextStance
     math SkillTrack add 1
     if "%NextWeapon" = "none" then goto swap-skills
     if "%NextWeapon" = "off" then goto swap-skills
     gosub check-mods-skill
     echo . [ Training %skill with %NextWeapon via %attack ]
     if matchre("%NextWeapon","%sheath-1-weapons") then gosub verb wield my %NextWeapon
     if matchre("%NextWeapon","%sheath-2-weapons") then gosub verb wield my %NextWeapon
     if matchre("%NextWeapon","%sheath-3-weapons") then gosub verb wield my %NextWeapon
     if matchre("%NextWeapon","%worn-weapons") then gosub verb remove my %NextWeapon
     var WeapName %NextWeapon
     if matchre("%skill","%edges") then var maneuver-type edges
     if matchre("%skill","%blunts") then var maneuver-type blunts
     if matchre("%skill","staves") then var maneuver-type staves
     if matchre("%skill","pole") then var maneuver-type polearm
     if matchre("%skill","%loadedweapons") then var maneuver-type bows
     if matchre("%skill","%thrownweapons") then var maneuver-type thrown
     if "$righthand" = "bone spear" then gosub swap-sword
     if "$righthand" = "half-handled riste" then gosub swap-sword
     if "$righthand" = "iron spear" then gosub swap-sword
     if "%NextWeapon" = "bastard sword" then gosub swap-sword
     if "%NextWeapon" = "bastard swor" then gosub swap-sword
     if "%NextWeapon" = "bast sword" then gosub swap-sword
     if "%NextWeapon" = "katana" then gosub swap-sword
     if "$righthand" = "partisan" then gosub swap-sword
     if "%NextWeapon" = "splitting maul" then gosub swap-sword
     if "$righthand" = "bar mace" then gosub swap-sword
     if "%skill" = "module" then gosub check-mods-cycle
     if "%skill" = "module" then goto swap-skills
 
 
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
 
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if "%skill" = "offhand" then gosub verb swap
     var gettmweapon 0
     if "%skill" = "targeted magic" then if "%TM-weapon" != "none" then if "%TM-weapon" != "off" then var gettmweapon 1
     if %gettmweapon = 1 then gosub verb get my %TM-weapon
     gosub set-attacklimit
     if "%train-stealths" = "on" then gosub stealthEXP
     if $gametime > %cyclictimer then gosub cyclictimer
     if "%skill" = "small edge" then if "%guild" = "Thief" then var attack attack
     if "%guild" = "Thief" then gosub thief-khri
     if "%guild" = "Barbarian" then gosub forms
     if "%attack" = "module" then goto swap-skills
     var align-it 0
     if "%guild" = "Warrior" then if "%wm-pathway" != "none" then if "%wm-pathway" != "off" then var align-it 1
     if %align-it = 1 then gosub wm-pathway
     goto %attack
 
stow-wear:
     if "$righthand" = "Empty" then if "$lefthand" = "Empty" then return
     if matchre("%WeapName","%sheath-1-weapons") then gosub verb sheath my %WeapName
     if matchre("%WeapName","%sheath-2-weapons") then gosub verb sheath my %WeapName
     if matchre("%WeapName","%sheath-3-weapons") then gosub verb sheath my %WeapName
     if matchre("%WeapName","%worn-weapons") then gosub verb wear my %WeapName
     return
 
change-stance:
     if "%change-stance" != "on" then return
     var tempstance %$0
     if "%tempstance" = "none" then return
     if "%tempstance = "off" then return
     gosub verb stance set %tempstance
     return
 
swap-sword.p:
     pause 0.5
swap-sword:
     if "%skill" = "offhand" then return
     if %t > %timelimit then goto script-end
     if $webbed = 1 then goto swap-sword.p
     if $health < 50 then goto script-end
     if "$righthandnoun" = "" then pause 0.5
put swap my $righthandnoun
     match swap-sword.p that while entangled in a web
     match swap-sword.p type ahead
     match swap-sword.p ...wait
     match swap-sword.p still stunned
     match swap-sword.p you don't feel like fighting
     matchre swap-sword.d You shift your .* to a (\w+)
     matchre swap-sword.d easily in your hands and end with it in position to be used as a (\w+)
     matchre swap-sword.d switch to a grip for using your .* as a (\w+)
     matchre swap-sword.d so that you can use it as a (\w+)
     matchre swap-sword.d can be used as a (\w+)
     matchre swap-sword.d you can use it (one-handed|two-handed)
     matchre swap-sword.d to a (one-handed|two-handed|heavy)
     matchre swap-sword.d you shift it to a (\w+)
     matchwait
swap-sword.d:
     if "$1" = "one-handed" then if "%skill" = "large edge" then return
     if "$1" = "two-handed" then if "%skill" = "2HE" then return
     if "$1" = "pike" then if "%skill" =  "pole" then return
     if "$1" = "short" then if "%skill" = "staves" then return
     if "$1" = "two" then if "%skill" = "2HE" then return
     if "$1" = "two-handed" then if "%skill" = "2HE" then return
     if "$1" = "two" then if "%skill" = "2HB" then return
     if "$1" = "two-handed" then if "%skill" = "2HB" then return
     if "$1" = "heavy" then if "%skill" = "large edge" then return
     if "$1" = "heavy" then if "%skill" = "large blunt" then return
     if "$1" = "quarter" then if "%skill" = "staves" then return
     if "$1" = "halberd" then if "%skill" = "pole" then return
     if "$1" = "medium" then if "%skill" = "small edge" then return
     if "$1" = "medium" then if "%skill" = "small blunt" then return
     goto swap-sword
 
 
stealthEXP:
     if %stealths-locked = 1 then if $Stealth.LearningRate > 10 then return
     var stealths-locked 0
     if $Stealth.LearningRate < 34 then return
     var stealths-locked 1
     return
 
 
 
attack.p:
     pause 0.5
attack:
     if $mana > %minimum-attunement then gosub spell-buffs
     if $webbed = 1 then goto attack.p
     if $health < 50 then goto script-end
     if $stamina < 80 then gosub fatigue-return
     math hit-track add 1
     if %hit-track > %attack-limit then goto swap-skills
     if $health < 50 then goto script-end
     random 1 4
     if %r = 2 then gosub thief-ambush
     gosub stalk
     if $standing = 0 then gosub verb stand
put backstab
     match ambush must be hid
     match ambush backstab that.
     match ambush need something a little lighter
     matchre attack.p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     matchre attack.w (There is nothing|At what are you|It's best you not do that to|Wouldn't it be better if you used|I could not find what you were|close enough|You must be closer to use tactical|It would help if you were closer)
     match killed balance]
     match killed balanced]
     match attack Roundtime
     match tactics You are unable to muster the energy
     matchwait 10
     goto ambush
ambush:
     pause 0.1
     if $standing = 0 then gosub verb stand
     if $hidden = 1 then random 1 9
     if $hidden = 1 then if %r = 1 then setvariable bodypart head
     if $hidden = 1 then if %r = 2 then setvariable bodypart neck
     if $hidden = 1 then if %r = 3 then setvariable bodypart chest
     if $hidden = 1 then if %r = 4 then setvariable bodypart back
     if $hidden = 1 then if %r = 5 then setvariable bodypart abdomen
     if $hidden = 1 then if %r = 6 then setvariable bodypart left arm
     if $hidden = 1 then if %r = 7 then setvariable bodypart right arm
     if $hidden = 1 then if %r = 8 then setvariable bodypart left leg
     if $hidden = 1 then if %r = 9 then setvariable bodypart right leg
     if $hidden = 0 then put attack
     if $hidden = 1 then put attack %bodypart
     matchre attack.p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     matchre attack.w (There is nothing|At what are you|It's best you not do that to|Wouldn't it be better if you used|I could not find what you were|close enough|You must be closer to use tactical|It would help if you were closer)
     match killed balance]
     match killed balanced]
     match ambush It's best you not do that to
     match ambush Wouldn't it be better if you used
     match ambush I could not find what you were
     match attack Roundtime
     match tactics You are unable to muster the energy
     matchwait 10
     goto attack
 
 
throw.p:
     pause 0.5
throw:
     if $standing = 0 then gosub verb stand
     if "$lefthandnoun" = "material" then gosub verb empty left
     if "$righthandnoun" = "material" then gosub verb empty left
     if "%guild" = "Empath" then goto swap-skills
     if "%1" = "empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "emp" then goto swap-skills
     if "%1" = "Emp" then goto swap-skills
     if "%1" = "EMP" then goto swap-skills
     gosub set-exptracker
     if %LOCKEDUP = 1 then goto swap-skills
     if "%guild" = "Bard" then gosub bard-screams
     if "%skill" = "HT" then var thrown %heavythrown
     if "%skill" = "LT" then var thrown %lightthrown
     if matchre("$lefthand","%lightthrown") then gosub verb swap
     if matchre("$lefthand","%heavythrown") then gosub verb swap
     if "$righthand" = "Empty" then goto get.throw
     if $stamina < 80 then gosub fatigue-return
     math hit-track add 1
     if %hit-track > %attack-limit then goto swap-skills
     if $webbed = 1 then goto throw.p
     if $health < 50 then goto script-end
     if "%skill" = "LT" then var atttype %lightthrown-attack
     if "%skill" = "HT" then var atttype %heavythrown-attack
     if "%skill" = "offhand" then goto offhand
     if $gametime > %maneuver-timer then gosub thrown-maneuver
put %atttype
     matchre throw.p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     matchre attack.w (There is nothing|At what are you|It's best you not do that to|Wouldn't it be better if you used|I could not find what you were|close enough|You must be closer to use tactical)
     match killed balance]
     match killed balanced]
     match get.throw Roundtime
     matchwait 10
     goto get.throw
thrown-maneuver:
     var maneuver-timer $gametime
     math maneuver-timer add 70
     if "%thrown-maneuver" != "off" then if "%thrown-maneuver" != "none" then var atttype maneuver %thrown-maneuver
     return
 
 
offhand.p:
     pause 0.5
offhand:
     if "$lefthandnoun" = "material" then gosub verb empty left
     if "$righthandnoun" = "material" then gosub verb empty left
     if "%guild" = "Empath" then goto swap-skills
     if "%1" = "empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "emp" then goto swap-skills
     if "%1" = "Emp" then goto swap-skills
     if "%1" = "EMP" then goto swap-skills
     gosub set-exptracker
     if %LOCKEDUP = 1 then goto swap-skills
     if matchre("$righthand","%offhand") then gosub verb swap
     if "$lefthand" = "Empty" then goto get.throw
     if $standing = 0 then gosub verb stand
     var thrown %offhand
     if $stamina < 80 then gosub fatigue-return
     math hit-track add 1
     if %hit-track > %attack-limit then goto swap-skills
put throw left
     matchre offhand.p (type ahead|\.\.\.wait|You can't do that while)
     matchre attack.w (There is nothing|At what are you|It's best you not do that to|Wouldn't it be better if you used|I could not find what you were|close enough|You must be closer to use tactical)
     match killed balance]
     match killed balanced]
     match get.throw Roundtime
     matchwait 10
     goto get.throw
 
get.throw.p:
     pause 0.5
get.throw:
     if $webbed = 1 then goto get.throw.p
     if $health < 50 then goto script-end
     if "%skill" = "HT" then var thrown %heavythrown
     if "%skill" = "LT" then var thrown %lightthrown
put get %thrown    
     if "%skill" = "LT" then if "%lightthrown-bond" = "on" then put invoke bond
     if "%skill" = "LT" then if "%lightthrown-bond" = "on" then pause 1
     if "%skill" = "LT" then if "%lightthrown-bond" = "on" then goto %attack
     if "%skill" = "HT" then if "%heavythrown-bond" = "on" then put invoke bond
     if "%skill" = "HT" then if "%heavythrown-bond" = "on" then pause 1
     if "%skill" = "HT" then if "%heavythrown-bond" = "on" then goto %attack
     if "%skill" = "offhand" then if "%offhand-bond" = "on" then put invoke bond
     if "%skill" = "offhand" then if "%offhand-bond" = "on" then pause 1
     if "%skill" = "offhand" then if "%offhand-bond" = "on" then goto %attack
     match get.throw.p that while entangled in a web
     match get.throw.p type ahead
     match get.throw.p ...wait
     match get.throw.p still stunned
     match get.throw.p you don't feel like fighting
     matchre %attack (You fade in|You get|You pick|already holding)
     matchwait
     
debil:
     if "%guild" = "Barbarian" then return
     if "%guild" = "Thief" then return
     if "%guild" = "Trader" then return
     if "%debilitation" != "on" then return
     if matchre("$roomobjs","which appears dead") then return
     if $mana < %minimum-attunement then return
     gosub verb prep %debil-spell
     waitforre (fully prepared|you've already prepared)
     if "$1" = "you've alread prepared" then put release spell
     if "$1" = "you've alread prepared" then return
     if "%debil-cast" = "creature" then gosub verb cast creature
     if "%debil-cast" = "area" then gosub verb cast area
     if "%debil-cast" = "none" then gosub verb cast %crittername
     if "%debil-cast" != "creature" then if "%debil-cast" != "area" then if "%debil-cast" != "none" then put #send cast %debil-cast
     pause 0.5
     return
 
tactics:
     goto face-next
face-next.p:
     pause 0.5
face-next:
     if $webbed = 1 then goto face-next.p
     if $health < 50 then goto script-end
     if $standing = 0 then gosub verb stand
put face next
     match face-next.p that while entangled in a web
     match attack.w Face what
     matchre face-next.p (type ahead|\.\.\.wait|still stunned|you don't feel like fighting)
     match appraise-critter You turn
     matchre analyze (There is nothing|At what are you|It's best you not do that to|Wouldn't it be better if you used|I could not find what you were|close enough|You must be closer to use tactical)
     matchwait
appraise-critter:
     gosub verb app %crittername quick
     if "%guild" = "Empath" then goto shockcheck
appraise-critter.d:
     if "%guild" = "Barbarian" then gosub roars
     if "%guild" = "Bard" then gosub bard-screams
     gosub debil
     goto analyze
shockcheck.p:
     pause 0.5
shockcheck:
put assess
     waitfor You assess
     pause 0.5
put perc %crittername
     matchre shockcheck.p (type ahead|\.\.\.wait)
     matchre empathbrawl (You sense nothing special|Options Available)
     match appraise-critter.d will not cause shock if you attack it
     match empathbrawl Roundtime
     matchwait
empathbrawl:
     var tactics circle|bob|weave|circle|bob|weave
     gosub verb app %crittername quick
     goto analyze.d
 
analyze.p:
     pause 0.5
analyze:
#     if "%tactics_toggle" = "off" then goto attack
     if $standing = 0 then gosub verb stand
     if $mana > %minimum-attunement then gosub spell-buffs
     if $webbed = 1 then goto analyze.p
     if $health < 50 then goto script-end
     var swappie 0
     if "%skill" = "offhand" then if "$righthand" = "Empty" then var swappie 1
     if %swappie = 1 then gosub verb swap
     var analtype none
     if "%guild" = "Barbarian" then gosub expertise-check
     if "%analtype" = "none" then put analyze
     if "%analtype" != "none" then put %analtype
     match analyze.p do that while entangled in a web
     match analyze-baseattacks You fail to find any holes
     matchre analyze.p (type ahead|\.\.\.wait|still stunned|you don't feel like fighting)
     matchre attack.w (Analyze what|Face what|What are you|stand up first|You must be closer to use tactical abilities|There is nothing else to face)
     match analyze.d Roundtime
     match analyze.dpp You recall your combo
     match analyze.reset just recently completed that attack combination
     matchwait
analyze.reset:
     var analtype none
     goto analyze
analyze.dpp:
     pause 0.5
     goto analyze.d    
expertise-check:
     if "%expertise" = "off" then return
     if "%expertise" = "none" then return
     math expertise-track add 1
     var analtype none
     if %expertise-track = 1 then if "%analyze-1" != "none" then if "%analyze-1" != "off" then var analtype analyze %analyze-1
     if %expertise-track = 2 then if "%analyze-2" != "none" then if "%analyze-2" != "off" then var analtype analyze %analyze-2
     if %expertise-track = 3 then if "%analyze-3" != "none" then if "%analyze-3" != "off" then var analtype analyze %analyze-3
     if %expertise-track > 3 then var expertise-track 0
     if %expertise-track = 0 then goto expertise-check
     return
 
analyze-baseattacks:
     var tactics attack|attack|attack
analyze.d:
     var swappie 0
     if "%skill" = "offhand" then if "$lefthand" = "Empty" then var swappie 1
     if %swappie = 1 then gosub verb swap
     if "%1" = "empath" then var tactics circle|bob|weave
     if "%1" = "Empath" then var tactics circle|bob|weave
     if "%1" = "Empath" then var tactics circle|bob|weave
     if "%1" = "emp" then var tactics circle|bob|weave
     if "%1" = "Emp" then var tactics circle|bob|weave
     if "%1" = "EMP" then var tactics circle|bob|weave
     eval TacticCount count("%tactics","|")
     math TacticCount add 1
     var TacticTracker 0
tactics-combo:
     if %TacticTracker 0 = then gosub thief-ambush
     if %TacticTracker = %TacticCount then if "%guild" = "Empath" then goto shockcheck
     if %TacticTracker = %TacticCount then goto tactic-maneuver
     eval NextMove element("%tactics", %TacticTracker)
     math TacticTracker add 1
     goto tactic-attack
tactic-maneuver:
     if $gametime > %maneuver-timer then goto analyze
     var maneuver-timer $gametime
     math maneuver-timer add 70
     var NextMove none
     if "%maneuver-type" = "edges" then if "%edge-maneuver" != "off" then if "%edge-maneuver" != "none" then var NextMove maneuver %edge-maneuver
#     if "%maneuver-type" = "edges" then if "%edge-attack" != "off" then if "%edge-attack" != "none" then var NextMove %edge-attack
     if "%maneuver-type" = "blunts" then if "%blunt-maneuver" != "off" then if "%blunt-maneuver" != "none" then var NextMove maneuver %blunt-maneuver
#     if "%maneuver-type" = "blunts" then if "%blunt-attack" != "off" then if "%blunt-attack" != "none" then var NextMove %blunt-attack
     if "%maneuver-type" = "staves" then if "%staves-maneuver" != "off" then if "%staves-maneuver" != "none" then var NextMove maneuver %staves-maneuver
     if "%maneuver-type" = "polearm" then if "%polearm-maneuver" != "off" then if "%polearm-maneuver" != "none" then var NextMove maneuver %polearm-maneuver
     if "%skill" = "brawl" then if "%brawl-maneuver" != "none" then var NextMove maneuver %brawl-maneuver
     if "%NextMove" = "none" then goto analyze
 
tactic-attack.p:
     pause 0.5
tactic-attack:
     if $stamina < 80 then gosub fatigue-return
     if $standing = 0 then gosub verb stand
     math hit-track add 1
     if %hit-track > %attack-limit then goto swap-skills
     if $webbed = 1 then goto tactic-attack.p
     if $health < 50 then goto script-end
     gosub set-exptracker
     if %LOCKEDUP = 1 then goto swap-skills
     var meleestalk 0
     if "%train-stealths" = "on" then if %stealths-locked = 0 then var meleestalk 1
     if $Stealth.LearningRate > 30 then var meleestalk 0
     if "%alwayshideFORmelee" = "on" then var meleestalk 1
     if %meleestalk = 1 then gosub stalk
     if "%skill" != "offhand" then put %NextMove
     if "%skill" = "offhand" then put %NextMove left
     matchre tactic-attack.p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     matchre attack.w (There is nothing|At what are you| stand up first|It's best you not do that to|Wouldn't it be better if you used|I could not find what you were|close enough|You must be closer to use tactical)
     match killed balance]
     match killed balanced]
     match tactic-attack.wx flying too high for you to attack
     match tactics-combo Roundtime
     matchwait 10
     goto analyze
tactic-attack.wx:
     pause 5
     goto tactic-attack
 
thief-ambush:
     if "%guild" != "Thief" then return
     if "%thief-ambush" != "on" then return
     if $standing = 0 then gosub verb stand
     if matchre("%NextSkill","%weapons") then var amb %$0-ambush
     if "%amb" = "off" then return
     if "%amb" = "none" then return
ambushing:
     gosub ambushstalk
     if $hidden = 0 then goto ambushing
put ambush %amb
     match ambushing type ahead
     match ambushing ...wait
     match thief-ambush.d Roundtime
     match ambushing You must be hidden
     match thief-ambush.d even standing up
     match thief-ambush.d already
     match thief-ambush.d There is nothing else
     match thief-ambush.d close enough
     match thief-ambush.d You don't think you have enough focus
     matchwait
thief-ambush.d:
     return
 
 
 
 
pray-kill:
     var pray-tracker 0
     if "%guild" != "Cleric" then return
     if matchre("$roomobjs","(\w+) which appears dead") then gosub verb pray $1
     gosub verb stand
     gosub verb pray murrula
     gosub verb stand
     return
 
load3.p:
     pause 0.5
load3:
put load
     matchre load3.p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     match load3.p Roundtime
     match load3.d already loaded
     matchwait
load3.d:
     return
 
 
 
load.p:
     pause 0.5
load:
     if "%guild" = "Empath" then goto swap-skills
     if "%1" = "empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "emp" then goto swap-skills
     if "%1" = "Emp" then goto swap-skills
     if "%1" = "EMP" then goto swap-skills
     if "%guild" = "Bard" then gosub bard-screams
     if $mana > %minimum-attunement then gosub spell-buffs
     math hit-track add 1
     if %hit-track > %attack-limit then goto swap-skills
     gosub set-exptracker
     if %LOCKEDUP = 1 then goto swap-skills
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if $webbed = 1 then goto load.p
     if $health < 50 then goto script-end
     if $standing = 0 then gosub verb stand
     if matchre("$righthand","riot") then if "%skill" = "crossbow" then goto turn-cross
     if matchre("$righthand","repeat") then goto turn-cross
load2:
     if "%skill" = "bow" then put load my $righthandnoun with my %bow-ammo
     if "%skill" = "crossbow" then if "%crossbow-ammo" != "magic" then put load my $righthandnoun with my %crossbow-ammo
     if "%skill" = "crossbow" then if "%crossbow-ammo" = "magic" then put load my crossbow
     if "%skill" = "sling" then put load my $righthandnoun with my %sling-ammo
     matchre load.p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     match aim.pre Roundtime
     if matchre("$righthand","riot") then match aim-repeater-1 already loaded
     if matchre("$righthand","repeat") then match aim-repeater-1 already loaded
     if matchre("$righthand","riot") then matchwait
     if matchre("$righthand","repeat") then matchwait
     match aim already loaded
     matchwait
aim.pre:
     if matchre("$righthand","riot") then goto load2
     if matchre("$righthand","repeat") then goto load2
     goto aim
turn-cross:
     pause 0.5
put push my $righthandnoun
     matchre turn-cross (type ahead|\.\.\.wait)
     match aim rapid series of clicks emanate
     match aim You realize readying more than one
     match load2 sharp click signals that you've exhausted
     matchwait
aim-repeater-1:
     goto turn-cross
aim-p:
     pause 0.5
aim:
     if $standing = 0 then gosub verb stand
     setvariable fullaim 0
     setvariable targetwait 0
     if matchre("$roomobjs","%otherloot") then gosub verb stow $0
     if $stamina < 80 then gosub fatigue-return
     if $webbed = 1 then goto aim-p
     if $standing = 0 then gosub verb stand
     if $health < 50 then goto script-end
     gosub ranged-maneuver
put aim
     match attack.w There is nothing else
     matchre aim-p (type ahead|\.\.\.wait|You can't do that while|still stunned|you don't feel like fighting)
     matchre aiming (You begin to target|You are already targetting)
     matchwait
ranged-maneuver:
     var maneuver-shoot none
     if $gametime < %maneuver-timer then return
     if "%ranged-maneuver" != "none" then if "%ranged-maneuver" != "off" then var maneuver-shoot maneuver %ranged-maneuver
     var maneuver-timer $gametime
     math maneuver-timer add 70
     return
 
aiming:
     pause 0.5
     math targetwait add 1
     if %fullaim = 1 then goto fire
     if %targetwait > 25 then goto fire
     if $standing = 0 then gosub verb stand
     if "%skill" = "bow" then if "%bow-snapshots" = "on" then if %targetwait > 5 then goto fire
     if "%skill" = "crossbow" then if "%crossbow-snapshots" = "on" then if %targetwait > 5 then goto fire
     if "%skill" = "sling" then if "%sling-snapshots" = "on" then if %targetwait > 5 then goto fire
     goto aiming
fire-p:
     pause 0.5
fire:
     if $standing = 0 then gosub verb stand
     if $webbed = 1 then goto fire-p
     if $health < 50 then goto script-end
     if "%skill" = "bow" then var firetype %bow-shoot
     if "%skill" = "crossbow" then var firetype %crossbow-shoot
     if "%skill" = "sling" then var firetype %sling-shoot
     if "%firetype" = "snipe" then gosub ambuhshstalk
     if "%firetype" = "poach" then gosub ambushstalk
     if $standing = 0 then gosub verb stand
     var stalkit 0
     if "%firetype" = "fire" then if "%train-stealths" = "on" then if "%stealths-locked" = 0 then var stalkit 1
     if $Stealth.LearningRate > 30 then var stalkit 0
     if "%alwayshideFORranged" = "on" then var stalkit 1
     if %stalkit = 1 then gosub stalk
     if "%maneuver-shoot" = "none" then put %firetype
     if "%maneuver-shoot" != "none" then put %maneuver-shoot
     match attack.w There is nothing else
     matchre fire-p (type ahead|\.\.\.wait|How can you poach|You can't do that while|still stunned|you don't feel like fighting|you are not hidden)
     match fire-p How can you snipe
     match killed balance]
     match killed balanced]
     match load Roundtime
     matchwait 5
     goto load
 
stalk:
     if $standing = 0 then gosub verb stand
     if $Stealth.LearningRate > 32 then if "%alwayshideFORmelee" = "off" then if "%alwayshideFORranged" = "off" then return
     gosub verb hide
     gosub verb stalk
     return
 
ambushstalk:
     if $standing = 0 then gosub verb stand
#     if $Stealth.LearningRate > 32 then if "%alwayshideFORmelee" = "off" then if "%alwayshideFORranged" = "off" then return
     gosub verb hide
     gosub verb stalk
     return
 
target.p:
     pause 0.5
target:
     if "%guild" = "Empath" then goto swap-skills
     if "%1" = "empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "Empath" then goto swap-skills
     if "%1" = "emp" then goto swap-skills
     if "%1" = "Emp" then goto swap-skills
     if "%1" = "EMP" then goto swap-skills
     if $standing = 0 then gosub verb stand
     if "%guild" = "Barbarian" then goto swap-skills
     if "%guild" = "Thief" then goto swap-skills
     if "%guild" = "Trader" then goto swap-skills
     if $standing = 0 then gosub verb stand
     if $webbed = 1 then goto target.p
     gosub set-exptracker
     if %LOCKEDUP = 1 then goto swap-skills
     if matchre("$roomobjs","which appears dead") then goto killed
     math hit-track add 1
     if %hit-track > %attack-limit then goto swap-skills
     setvariable fullaim 0
     setvariable targetwait 0
     if %targettrack > 3 then var targettrack 1
     if %targettrack = 1 then var targetspell %TM-spell-1
     if %targettrack = 2 then var targetspell %TM-spell-2
     if %targettrack = 3 then var targetspell %TM-spell-3
     math targettrack add 1
     if "%TM-spell-1" = "none" then if "%TM-spell-2" = "none" then if "%TM-spell-3" = "none" then goto swap-skills
     if "%targetspell" = "none" then goto target
     var lost.target 0
put target %targetspell
     matchre target.p (type ahead|\.\.\.wait|still stunned|you don't feel like fighting|while entangled)
     match targeting You begin to weave mana lines into a target pattern
     match targeting You begin to weave mana lines into a targeting pattern
     match target-release There is nothing else to face
     match target-release What are you trying to attack
     match target-release you must specify a target
     match target-release You are not engaged
     matchwait
target-release:
     gosub verb release spell
     if matchre("$roomobjs","which appears dead") then goto killed
     goto attack.w
targeting:
     pause 0.5
     math targetwait add 1
     if %fullaim = 1 then goto castTM
     if $standing = 0 then gosub verb stand
     if %targetwait > 25 then goto castTM
     if %lost.target = 1 then goto target-release
     goto targeting
castTM.p:
     pause 0.5
castTM:
     if %TM-harness > 0 then gosub verb harn %TM-harness
     if $standing = 0 then gosub verb stand
     if $webbed = 1 then goto castTM.p
put cast
     match castTM.p your bindings make it impossible to hide
     match castTM.p ...wait
     match castTM.p type ahead
     match castTM.p still stunned
     match castTM.p you don't feel like fighting
     match target-release Your target pattern dissipates
     match target-release There is nothing else to face
     match target-release What are you trying to attack
     match target-release you must specify a target
     match target-release You are not engaged
     match target-release You clench your fist
     match target-release too mentally fatigued to finish the pattern
     match target.p You gesture
     match target.p You lift
     match target.p Roundtime
     match target.p You raise
     matchwait
 
 
killed:
     if matchre("$roomobjs","(\w+) which appears dead") then var critname $1
     math pray-tracker add 1
     if %pray-tracker > 4 then gosub pray-kill
     var necro-skin 0
     var reskin 0
     gosub check-mods-skin
     if "%guild" = "Necromancer" then gosub necrohealcheck
     if "%guild" = "Necromancer" then gosub necro-rituals
     if "%guild" = "Necromancer" then if "%necro-rituals" = "on" then goto skip-skin
reskin:
     var reskin 0
     if "%arrange-option" != "none" then if "%arrange-option" != "off" then var arrangeverb %critname for %arrange-option
     if "%arrange-option" = "none" then var arrangeverb %critname
     if "%arrange-option" = "off" then var arrangeverb %critname
     if %arrange-times > 0 then gosub arrange-times
     if "%arrange-times" = "all" then gosub verb arrange all %arrangeverb
     if %necro-skin = 0 then gosub skin
skip-skin:
     if %reskin = 1 then goto reskin
     gosub loot
     if matchre("$roomobjs","%bow-ammo") then gosub verb stow $0
     if matchre("$roomobjs","%bow-ammo") then gosub verb stow $0
     if matchre("$roomobjs","%bow-ammo") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","basilisk head arrow") then gosub verb stow basilisk arrow
     if matchre("$roomobjs","basilisk head arrow") then gosub verb stow basilisk arrow
     if matchre("$roomobjs","basilisk head arrow") then gosub verb stow basilisk arrow
     if matchre("$roomobjs","drake head arrow") then gosub verb stow drake arrow
     if matchre("$roomobjs","drake head arrow") then gosub verb stow drake arrow
     if matchre("$roomobjs","drake head arrow") then gosub verb stow drake arrow
 
#%     if matchre("$roomobjs","which appears dead") then goto killed
     if $mana > %minimum-attunement then gosub spell-buffs
     if matchre("$righthand","riot") then gosub load3
     if matchre("$righthand","repeat") then gosub load3
     if %t > %timelimit then goto script-end
     if $gametime > %cyclictimer then gosub cyclictimer
put skill %skill
     waitforre (\d+)/34
     echo Hits : %hit-track ~ Skill : %skill ~ Attack Limit : %attack-limit ~ EXP : $1
     if $1 > %exp-limit then goto swap-skills
     if $Perception.LearningRate < 30 then gosub verb hunt
     if $Attunement.LearningRate < 30 then gosub perc
     if $gametime > %commune-time then gosub commune
     gosub check-mods-timer
     gosub check-mods-kill
     pause
     goto %attack
 
perc:
     if "%guild" = "Barbarian" then return
     if "%guild" = "Thief" then return
     if "%guild" = "Trader" then return
     if "%guild" = "Moon" then
     {
    put perc mana
    wait
    pause 1
    return
     }
     gosub verb perc
     return
 
commune:
     var commune-time $gametime
     math commune-time add 900
     return
     if "%guild" != "Cleric" then return
     gosub retreat
put .meraudcommune
     waitfor SCRIPT DONE
     return
 
arrange-times:
     var arranged 0
arranging:
     if %arranged = %arrange-times then return
     if %arranged > %arrange-times then return
     gosub verb arrange %arrangeverb
     math arranged add 1
     goto arranging
 
 
necrohealcheck:
     if "%necro-selfheal" = "off" then return
     pause
put heal
     matchre necro-selfheal.ch2 You have .* (all over the skin|left arm|right arm|left eye|right eye|head|neck|abdomen|chest|left hand|right hand|left leg|right leg|back|twitching\.)
     match skip-necroheal You have no
     matchwait
necro-selfheal.ch2:
     var bodypart $1
     pause 0.1
put heal
     matchre necro-selfheal.ch3 (\w+) (\w+) (to the|along the|about the) %bodypart
     matchwait 0.5
     goto necro-selfheal.set
necro-selfheal.ch3:
     var damage-level $1 $2
     if matchre("%damage-level","scratches|abrasions|scuffing|faint|invisible|tiny") then return
necro-selfheal.set:
     if "%bodypart" = "all over the skin" then var bodypart skin
     if "%bodypart" = "twitching" then var bodypart nerve
     if "%bodypart" = "twitching." then var bodypart nerve
     if "%bodypart" = "twitching\." then var bodypart nerve
     goto necro-selfheal
skip-necroheal:
     return
 
 
     
 
 
 
fatigue-return:
     put bob
     wait
     pause .5
     if $stamina > 95 then return
     pause 0.5
     goto fatigue-return
     
verb:
     setvariable verb $0
     goto verb.a
verb.p:
     pause 0.5
verb.a:
     if $webbed = 1 then goto verb.p
     if $health < 50 then goto script-end
     if $stunned = 1 then goto verb.p
     pause 0.1
put %verb
     match verb.p your bindings make it impossible to hide
     match verb.p type ahead
     match verb.p ...wait
     match verb.p still stunned
     match verb.p you don't feel like fighting
     match verb.p can't do that while entangled in a web
     matchre verb.d (skin briefly withers and tightens|fluid and stealthy movements|lick the tip of your finger and trace|Having no further use|You focus on infusing|You secure|You focus on manipulating|You lack the necessary|You release an accompaniment|The first gentle notes|You let your voice fade|You begin to chant a mesmerizing|With a rising crescendo in your voice|You begin your enchante|The air gradually stills|With a sharp cut to your voice|A few fleeting|You begin to hum the soothing|marches off and become gradually quieter|With a resounding|As your rendition of|You release an accompaniment|You begin to sing|flick of your wrist you stealthily unsheathe|Praying for|eyes darken to black as a starless night|release an accompaniment of elemental air|begin to chant a mesmerizing cadence designed|into your bundle|You release an accompaniment of elemental fire|you begin to chant the rhythm that heralds|trace a careful sigil|You raise your arms skyward|mutter a foul-sounding phrase to yourself|trace a curving sigil|that is already in your inventory|determine anything about this creature|mutter blasphemies to yourself|already dead|mutter incoherently to yourself while preparing|wailing of lost souls accompanies|has already been arranged|blue frost crackles up your arms|you can't arrange|Your heart skips a beat|newfound fluidity of your mind|orange flames blaze between your fingertips|You deftly|You strap|You stuff|With calm movements|You attach|You remove|You can also|Smiling slyly|not ready|You clench your hands|You hold out your arms to either side as|You fade in|You whisper the final word of your spell so that none may notice your effort|too cluttered|Stalk what|You clap|You speak|Arrange what|With rigid movements|You close yours eyes|With tense movements|You let your concentration|You make a holy gesture|cannot be skinned|You find yourself unable to hunt|could not find what|You clap your hands|You easily strap|That area is not bleeding|You take a step back|could not find what|You strain, but cannot focus your mind|You attempt to relax your mind|You get|You put|STOW HELP|You push|think pushing that would have any effect|You move|You're already using the Sight|You have not recovered from your previous use|careful focus, you adjust your eyes to see in shadow as they|You close your eyes|You're not ready to do that again|was just recently mined by someone else|Roundtime|area has already been tended to|work carefully at tending your wound|The spell pattern collapses|You are unable to control|not damaged enough to warrant repair|cannot figure out how to do that|You're not ready to do that|Drink what|What were you referring|You eat|You drink|You stand|Your analysis has revealed no additional resources|You look around, but can't see any place to hide yourself|stalking|following|already hidden|You pick up|You cannot|You gesture|You trace a hasty sigil in the air|is now set at|You detach|You snuff|You sling|You begin chanting|You bend|You are already|Quietly touching|You recite| turns up fruitless|You pour|You sprinkle|already stand|You grind|You feel warmth|already empty|You recall|You struggle|You open|You raise|You reach for its center and forge a magical link to it|You trace an angular sigil|cannot produce|You drop|already been skinned|before you arrange|inherently stealthy endeavor|try being out of sight|cannot muster enough energy to vocalize|cannot collect anything|Setting your|You trace a geometric sigil|don't have a spell prepared|already preparing|already fully prepared|preparing a spell|harnessing any mana|You aren't preparing|You slip|no matter how you arrange it|There isn't any more room|With meditative movements|You draw out your|You sheath|You are already holding|You're already holding|But you're already|preparing a spell|Slow, rich tones form a somber introduction)
     matchwait
verb.d:
     return
 
skin.p:
     pause 0.5
skin:
     if $webbed = 1 then goto skin.p
     if "$lefthand" = "Empty" then var whichhand left
     if "$righthand" = "Empty" then var whichhand right
put skin
     match skin.p can't do that while entangled in a web
     match skin.p type ahead
     match skin.p still stunned
     match skin.p you don't feel like fighting
     match skin.p ...wait
     match skin.d into your bundle
     match skin.d Roundtime
     match skin.d already been skinned
     match skin.d already been harvested
     match skin.d not dead
     match skin.d living
     matchre skin.d (Skin what|can't skin|not skin|t be skinned|Skin what)
     matchwait
skin.d:
     var temp1 nil
     if matchre("$roomobjs","bundle") then if "%whichhand" = "left" then if "$lefthand" != "Empty" then var temp1 put $lefthandnoun in bundle
     if matchre("$roomobjs","bundle") then if "%whichhand" = "right" then if "$righthand" != "Empty" then var temp1 put $righthandnoun in bundle
     if "%temp1" != "nil" then gosub verb %temp1
     var temp1 nil
     if "%whichhand" = "left" then if "$lefthand" != "Empty" then var temp1 empty left
     if "%whichhand" = "right" then if "$righthand" != "Empty" then var temp1 empty right
     if "%temp1" != "nil" then gosub verb %temp1
     return
 
     if matchre("$roomobjs","bundle") then if "%attack" = "throw" then put put $righthandnoun in bundle
     if matchre("$roomobjs","bundle") then if "%attack" = "offhand" then put put $righthandnoun in bundle
     if matchre("$roomobjs","bundle") then if "%skill" = "brawl" then put put $righthandnoun in bundle
     if matchre("$roomobjs","bundle") then if "%attack" != "throw" then if "%attack" != "offhand" then put put $lefthandnoun in bundle
     if "%attack" = "throw" then gosub verb empty right
     if "%attack" = "offhand" then gosub verb empty right
     if "%attack" != "offhand" then gosub verb empty left
     if "%skill" = "brawl" then gosub verb empty right
     return
loot.p:
     pause 0.5
loot:
     if $webbed = 1 then goto loot.p
put loot
     match loot.p can't do that while entangled in a web
     match loot.p type ahead
     match loot.p still stunned
     match loot.p you don't feel like fighting
     match loot.p ...wait
     match loot.d could not find
     match loot.d You search
     matchwait
loot.d:
     pause 0.1
     if matchre("$roomobjs","%gems") then gosub lootgem
     if matchre("$roomobjs","%coins") then gosub lootcoin
     if matchre("$roomobjs","%boxtypes") then gosub lootbox
     if matchre("$roomobjs","%otherloot") then gosub verb stow $0
     if matchre("$roomobjs","%otherloot") then gosub verb stow $0
     if matchre("$roomobjs","%otherloot") then gosub verb stow $0
     if matchre("$roomobjs","%otherloot") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","%ammotypes") then gosub verb stow $0
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     if matchre("$roomobjs","midnight black arrow") then gosub verb stow mid arrow
     return
 
lootgem:
     if "%lootgems" != "on" then return
     if matchre("$roomobjs","%gems") then gosub verb stow gem
     if matchre("$roomobjs","%gems") then gosub verb stow gem
     if matchre("$roomobjs","%gems") then gosub verb stow gem
     return
lootcoin:
     if "%lootcoins" != "on" then return
     if matchre("$roomobjs","%coins") then gosub verb stow $0
     if matchre("$roomobjs","%coins") then gosub verb stow $0
     if matchre("$roomobjs","%coins") then gosub verb stow $0
     return
lootbox:
     if "%lootboxes" != "on" then return
     if %BoxStowTrack = %HolderCount then return
     if %boxes = %box-limit then return
     if %boxes > %box-limit then return
     if matchre("$roomobjs","%boxtypes") then math boxes add 1
     if matchre("$roomobjs","%boxtypes") then var tempbox $0
     if matchre("$roomobjs","%boxtypes") then gosub pickup-box $0
     pause 0.1
     if "$righthand" != "Empty" then if "$lefthand" != "Empty" then put drop %tempbox
     return
 
pickup-box.p:
     pause 0.5
pickup-box:
put get %tempbox
     matchre pickup-box.p (type ahead|...wait)
     matchre pickup-box.d (You pick up|You get|already hold)
     matchre noboxtoget (could not find|What were you)
     matchwait
noboxtoget:
     return
pickup-box.d:
     goto stow-box
stow-box.p:
     pause 0.5
stow-box:
put stow my %tempbox
     matchre stow-box.p (type ahead|...wait)
     matchre stow-box.d (You put|could not find|What were you)
     matchre stow-box.d (how you arrange|t to fit|more room|more space|too heavy)
     matchwait
stow-box.d:
     return
swap-box-stow:
     math BoxStowTrack add 1
     if %BoxStowTrack = %HolderCount then return
     eval CurrentStorage element("%box-holders", %BoxStowTrack)
     goto stow-box
 
 
 
retreat.p:
     pause 0.5
retreat:
     if $webbed = 1 then goto retreat.p
put retreat
     matchre retreat.p (type ahead|...wait|still stunned|you don't feel like fighting)
     match retreat.p You retreat back to pole range
     match retreat.p Roundtime
     matchre retreat.d (You retreat from combat|You are already as far away)
     match retreat.p can't do that while entangled in a web
     matchwait
retreat.d:
     return
 
timer:
     timer clear
     timer reset
     timer start
     return
     
attack.w:
     pause 1
     if $monstercount = 0 then gosub verb collect rock
     if $monstercount = 0 then put #send 5 kick pile
     if $monstercount > 0 then if $hidden = 1 then put #send dance
     if $monstercount > 0 then put #send advance
     matchre %attack (melee|pole|balance|position)
     matchwait 30
     if $monstercount > 0 then goto %attack
     if $monstercount = 0 then put exp
     goto attack.w
 
mana-wait:
     pause 5
     if $mana > %internal-attunement then return
     goto mana-wait
 
spell-buffs:
     if "%guild" = "Barbarian" then return
     if "%guild" = "Thief" then return
     if "%guild" = "Trader" then return
     if $mana < %minimum-attunement then return
     if $gametime > %buff-dur-1 then var buffcamb %buff-camb-1
     if $gametime > %buff-dur-1 then gosub prep-buff %buff-spell-1
     if $gametime > %buff-dur-2 then var buffcamb %buff-camb-2
     if $gametime > %buff-dur-2 then gosub prep-buff %buff-spell-2
     if $gametime > %buff-dur-3 then var buffcamb %buff-camb-3
     if $gametime > %buff-dur-3 then gosub prep-buff %buff-spell-3
     if $gametime > %buff-dur-4 then var buffcamb %buff-camb-4
     if $gametime > %buff-dur-4 then gosub prep-buff %buff-spell-4
     if $gametime > %buff-dur-5 then var buffcamb %buff-camb-5
     if $gametime > %buff-dur-5 then gosub prep-buff %buff-spell-5
     if $gametime > %buff-dur-6 then var buffcamb %buff-camb-6
     if $gametime > %buff-dur-6 then gosub prep-buff %buff-spell-6
     if $gametime > %buff-dur-7 then var buffcamb %buff-camb-7
     if $gametime > %buff-dur-7 then gosub prep-buff %buff-spell-7
     if $gametime > %buff-dur-8 then var buffcamb %buff-camb-8
     if $gametime > %buff-dur-8 then gosub prep-buff %buff-spell-8
     if $gametime > %buff-dur-9 then var buffcamb %buff-camb-9
     if $gametime > %buff-dur-9 then gosub prep-buff %buff-spell-9
     if $gametime > %buff-dur-10 then var buffcamb %buff-camb-10
     if $gametime > %buff-dur-10 then gosub prep-buff %buff-spell-10
     return
 
 
prep-buff:
     var buffer $0
     gosub setspell %buffer
     if $mana < %minimum-attunement then return
     if "%buffer" = "none" then return
     if "%spellname" = "MF" then gosub verb remove staff
     if "%spellname" = "PoM" then gosub verb remove staff
     if "%spellname" = "Mf" then gosub verb remove staff
     if "%spellname" = "POM" then gosub verb remove staff
     if "%spellname" = "mf" then gosub verb remove staff
     if "%spellname" = "pom" then gosub verb remove staff
     gosub verb prep %buffer
     setvariable fullprep 0
     setvariable targetwait 0
     if %buffcamb > 0 then gosub verb charge my %camb-item %buffcamb
     if %buffcamb > 0 then gosub verb invoke my %camb-item
     if "$preparedspell" = "Murrula's Flames" then gosub verb invoke staff
     if "$preparedspell" = "Persistence of Mana" then gosub verb invoke staff
     var prepedspell $preparedspell
prepping-buff:
     pause 0.5
     math targetwait add 1
     if %fullprep = 1 then goto cast-buff
     if %targetwait > 50 then goto cast-buff
     goto prepping-buff
cast-buff:
     gosub verb cast
     if "%spellname" = "MF" then gosub verb wear staff
     if "%spellname" = "PoM" then gosub verb wear staff
     if "%spellname" = "Mf" then gosub verb wear staff
     if "%spellname" = "POM" then gosub verb wear staff
     if "%spellname" = "mf" then gosub verb wear staff
     if "%spellname" = "pom" then gosub verb wear staff
     gosub set-dur
     return
setspell:
     var spellname $1
return
 
 
set-dur.p:
     pause 0.5
set-dur:
     if $stunned = 1 then goto set-dur.p
put perc
     matchre set-dur.p (type ahead|\.\.\.wait|still stunned)
     matchre setspelldur1 %prepedspell.* (a|one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|ninteen|twenty|thirty|fourty|fifty|sixty|seventy|eighty|ninty|ninety|hundred) roisaen
     matchre setspelldur2 %prepedspell.* (twenty|thirty|fourty|fifty|sixty|seventy|eighty|ninety|ninty)-(one|two|three|four|five|six|seven|eight|nine) roisaen
     matchre setspelldur3 %prepedspell.* (hundred|hundred and) (a|one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve|thirteen|fourteen|fifteen|sixteen|seventeen|eighteen|ninteen|twenty|thirty|fourty|fifty|sixty|seventy|eighty|ninty|ninety) roisaen
     matchre setspelldur4 %prepedspell.* (hundred|hundred and) (twenty|thirty|fourty|fifty|sixty|seventy|eighty|ninety|ninty)-(one|two|three|four|five|six|seven|eight|nine) roisaen
     match defaultdur Roundtime
     matchwait
setspelldur1:
     var ts $1
     if "%ts" = "hundred" then var ts 100
     goto convertduration
setspelldur2:
     var ts $1-$2
     goto convertduration
setspelldur3:
     var ts $1$2
     goto convertduration
setspelldur4:
     var ts $1$2-$3
     goto convertduration
 
convertduration:
     eval ts replacere("%ts", "hundred and", "1")
     eval ts replacere("%ts", "hundred", "1")
     eval ts replacere("%ts", "ninety-", "9")
     eval ts replacere("%ts", "ninty-", "9")
     eval ts replacere("%ts", "ninety", "90")
     eval ts replacere("%ts", "ninty", "90")
     eval ts replacere("%ts", "eighty-", "8")
     eval ts replacere("%ts", "eighty", "80")
     eval ts replacere("%ts", "seventy-", "7")
     eval ts replacere("%ts", "sixty-", "6")
     eval ts replacere("%ts", "fifty-", "5")
     eval ts replacere("%ts", "fourty-", "4")
     eval ts replacere("%ts", "seventy", "70")
     eval ts replacere("%ts", "sixty", "60")
     eval ts replacere("%ts", "fifty", "50")
     eval ts replacere("%ts", "fourty", "40")
     eval ts replacere("%ts", "ten", "10")
     eval ts replacere("%ts", "eleven", "11")
     eval ts replacere("%ts", "twelve", "12")
     eval ts replacere("%ts", "thirteen", "13")
     eval ts replacere("%ts", "fourteen", "14")
     eval ts replacere("%ts", "fifteen", "15")
     eval ts replacere("%ts", "sixteen", "16")
     eval ts replacere("%ts", "seventeen", "17")
     eval ts replacere("%ts", "eightteen", "18")
     eval ts replacere("%ts", "eighteen", "18")
     eval ts replacere("%ts", "nineteen", "19")
     eval ts replacere("%ts", "twenty-", "2")
     eval ts replacere("%ts", "thirty-", "3")
     eval ts replacere("%ts", "twenty", "20")
     eval ts replacere("%ts", "thirty", "30")
     eval ts replacere("%ts", "one", "1")
     eval ts replacere("%ts", "two", "2")
     eval ts replacere("%ts", "three", "3")
     eval ts replacere("%ts", "four", "4")
     eval ts replacere("%ts", "five", "5")
     eval ts replacere("%ts", "six", "6")
     eval ts replacere("%ts", "seven", "7")
     eval ts replacere("%ts", "eight", "8")
     eval ts replacere("%ts", "nine", "9")
     eval ts replacere("%ts", "a", "1")
reset-ts:
     if %ts > 0 then math ts multiply 60
     if %ts > 0 then math ts add $gametime
     if %ts > 0 then goto ts-end
defaultdur:
     setvariable ts 20
     goto reset-ts
ts-end:
     if "%buffer" = "%buff-spell-1" then var buff-dur-1 %ts
     if "%buffer" = "%buff-spell-2" then var buff-dur-2 %ts
     if "%buffer" = "%buff-spell-3" then var buff-dur-3 %ts
     if "%buffer" = "%buff-spell-4" then var buff-dur-4 %ts
     if "%buffer" = "%buff-spell-5" then var buff-dur-5 %ts
     if "%buffer" = "%buff-spell-6" then var buff-dur-6 %ts
     if "%buffer" = "%buff-spell-7" then var buff-dur-7 %ts
     if "%buffer" = "%buff-spell-8" then var buff-dur-8 %ts
     if "%buffer" = "%buff-spell-9" then var buff-dur-9 %ts
     if "%buffer" = "%buff-spell-10" then var buff-dur-10 %ts
     echo [ Setting %buffer timer to %ts
     return
 
     
 
 
cyclictimer:
     if "%cyclics" = "off" then return
     if %cyclictrack > 3 then var cyclictrack 0
     if %cyclictrack = 1 then var tcyc %cyclic-1
     if %cyclictrack = 2 then var tcyc %cyclic-2
     if %cyclictrack = 3 then var tcyc %cyclic-3
     if %cyclictrack = 1 then var ccyc-cast %cyclic-1-cast
     if %cyclictrack = 2 then var ccyc-cast %cyclic-2-cast
     if %cyclictrack = 3 then var ccyc-cast %cyclic-3-cast
     var SLS 0
     if matchre("%tcyc","sls") then var SLS 1
     if matchre("%tcyc","starlight sphere") then var SLS 1
     if %SLS = 1 then put time
     if %SLS = 1 then matchre sls-pass (evening|night|almost dawn)
     if %SLS = 1 then match skip-sls Anlas
     if %SLS = 1 then matchwait 3
sls-pass:
     math cyclictrack add 1
     if "%tcyc" = "none" then goto cyclictimer
put rel cyc
     pause 0.1
     gosub verb prep %tcyc
     setvariable cyclictimer $gametime
     math cyclictimer add 600
     waitfor fully prepared
     if "%cyc-cast" = "none" then gosub verb cast
     if "%cyc-cast" != "none" then gosub verb cast %ccyc-cast
     return
skip-sls:
     math cyclictrack add 1
     return
	  
repairs:
     var returnroom $roomid
     gosub move %RepairRoom
     if "$lefthand" != "Empty" then gosub verb stow left
     if "$righthand" != "Empty" then gosub verb stow right
     eval repaircount count("%LeatherRepairs","|")
     math repaircount add 1
     var repairtrack 0
leatherrep:
     if %repairtrack = %repaircount then goto leatherrepdone
     eval NextRep element("%LeatherRepairs", %repairtrack)
     if "%NextRep" != "none" then gosub repleath
     if "%NextRep" != "none" then gosub repleath
     math repairtrack add 1
     goto leatherrep
leatherrepdone:
     gosub move %returnroom
     goto swap-skills
     
 
repleath:
     gosub verb remove my %NextRep
     gosub verb get my needles
     gosub verb push my %NextRep with my needles
     gosub verb stow my needles
     gosub verb get my slickstone
     gosub verb rub my %NextRep with my slickstone
     gosub verb stow my slickstone
     gosub verb wear my %NextRep
     return
 
roars:
     if "%barb-roars" = "off" then return
     if "%guild" != "Barbarian" then return
     if "%roar-1" = "none" then if "%roar-2" = "none" then if "%roar-3" = "none" then return
     if %roartrack > 3 then var roartrack 1
     if %roartrack = 1 then var roar %roar-1
     if %roartrack = 2 then var roar %roar-2
     if %roartrack = 3 then var roar %roar-3
     math roartrack add 1
     if "%roar" = "none" then goto roars
put roar %roar
     pause 2
     return
     
forms:
     if "%barb-forms" = "off" then return
     if "%guild" != "Barbarian" then return
put form stop all
forms2:
     pause 0.5
     if matchre("%NextSkill","%weapons") then gosub check-form $0
     return
 
check-form:
     var form-array %$1-forms
     if "%form-array" = "off" then return
     if "%form-array" = "none" then return
     eval FormCount count("%form-array","|")
     math FormCount add 1
     if %FormCount = 1 then goto secondary-forms
     var FormTrack 0
primary-forms:
     if %FormTrack = %FormCount then goto forms-done
     eval NextForm element("%form-array", %FormTrack)
     gosub start-form %NextForm
     math FormTrack add 1
     goto primary-forms
secondary-forms:
     gosub start-form %form-array
forms-done:
     return
 
start-form:
     var form $0
     if "%form" = "off" then return
     if "%form" = "none" then return
put form start %form
     pause 2
     pause 1
     return
     
set-attacklimit:
     if matchre("%NextSkill","%weapons") then var attack-limit %$0-attack-limit
     return
 
thief-khri:
     if "%thief-khri" = "off" then return
     if "%kneel-for-khris" = "on" then put kneel
     if "%kneel-for-khris" = "on" then pause 0.1
     if "%guild" != "Thief" then return
     var oldkhri %khri
     if matchre("%NextSkill","%weapons") then var khri %$0-khri
     if "%khri" = "off" then return
     if "%khri" = "none" then return
     if "%khri" != "%oldkhri" then put khri stop
     pause 1
put khri start %khri
     pause 2
     if "%kneel-for-khris" = "on" then gosub verb stand
     return
 
necro-ritual.p:
     pause 0.5
necro-rituals:
     if "%guild" != "Necromancer" then return
     if "%necro-rituals" = "off" then return
     if "%ritual-1" = "none" then if "%ritual-2" = "none" then if "%ritual-3" = "none" then return
     if "%ritual-1" = "off" then if "%ritual-2" = "off" then if "%ritual-3" = "off" then return
     if matchre("$roomobjs","(\w+) which appears dead") then var crittername $1
     if %ritual-track > 3 then var ritual-track 1
     if %ritual-track = 1 then var rittype %ritual-1
     if %ritual-track = 2 then var rittype %ritual-2
     if %ritual-track = 3 then var rittype %ritual-3
     if "%rittype" = "none" then math ritual-track add 1
     if "%rittype" = "off" then math ritual-track add 1
     if "%rittype" = "none" then goto necro-rituals
     if "%rittype" = "off" then goto necro-rituals
     if "%rittype" = "arise" then goto necro-arise
put perform %rittype on %crittername
     matchre necro-ritual.p (type ahead|\.\.\.wait)
     matchre ritual.d (your cuts fail|prevents a meaningful dissection|but are unable to discern where to direct your thanatological|A failed or completed|This corpse has already|may only be performed on a corpse|may only be performed on a creature's corpse|do not work upon the undead)
     match ritual-harvest Roundtime
     matchwait
ritual-harvest.p:
     pause 0.5
ritual-harvest:
     if "%necro-harvest" != "on" then var reskin 1
     if "%necro-harvest" != "on" then goto ritual.d
put perform harvest on %crittername
     matchre ritual-harvest.p (type ahead|\.\.\.wait)
     matchre ritual.d (but are unable to discern where to direct your thanatological|unusable for your purposes|already been harvested|may only be performed|A failed or completed|prevents its harvesting|do not work upon the undead|You do not have the knowledge required)
     match ritual.d Roundtime
     matchwait
ritual.d:
     var necro-skin 0
     math ritual-track add 1
     if "$righthandnoun" = "material" then put empty right
     if "$lefthandnoun" = "material" then put empty left
     pause 0.1
 
     var tverb nil
     if "%skill" = "brawl" then if "$righthand" != "Empty" then var tverb stow right
     if "%skill" = "targeted magic" then if "$righthand" != "Empty" then var tverb stow right
     if "%skill" != "brawl" then if "%skill" != "targeted magic" then if "%skill" != "offhand" then if "$lefthand" != "Empty" then var tverb stow left
     if "%skill" = "offhand" then if "$righthand" != "Empty" then var tverb stow right
     if "%tverb" != "nil" then gosub verb %tverb
     return
     
     if "%skill" = "brawl" then if "$righthand" != "Empty" then put stow right
     if "%skill" = "targeted magic" then if "$righthand" != "Empty" then put stow right
     if "%skill" != "brawl" then if "%skill" != "targeted magic" then if "$lefthand" != "Empty" then put stow left
     return
 
 
necro-arise:
     pause 0.5
put perform preserve on %crittername
     matchre necro-arise (type ahead|\.\.\.wait)
     matchre ritual.d (but are unable to discern where to direct your thanatological|A failed or completed|This corpse has already|may only be performed on a corpse|may only be performed on a creature's corpse|do not work upon the undead)
     match necro-arise-2 Roundtime
     matchwait
necro-arise-2:
     pause 0.5
put perform arise on %crittername
     matchre necro-arise-2 (type ahead|\.\.\.wait)
     matchre ritual.d (but are unable to discern where to direct your thanatological|A failed or completed|This corpse has already|may only be performed on a corpse|may only be performed on a creature's corpse|do not work upon the undead)
     match ritual-harvest Roundtime
     matchwait
 
necro-selfheal.p:
     pause 0.5
necro-selfheal:
     if "%necro-selfheal" = "off" then return
put perform cons on %crittername
     matchre necro-selfheal.p (type ahead|\.\.\.wait)
     matchre necro-selfheal.f (but are unable to discern where to direct your thanatological|may only be performed on|do not work upon the undead)
     match perform-necroheal Roundtime
     matchwait
necro-selfheal.f:
     return
perform-necroheal:
     gosub verb prep %necro-heal-spell
     waitfor fully prep
put cast %bodypart;release spell
     pause
     return
 
bard-screams:
     if "%bard-screams" = "off" then return
     if "%bard-screams" = "none" then return
     if %scream-timer > $gametime then return
     gosub set-scream %NextSkill
     if "%scream" = "none" then return
     if "%scream" = "off" then return
     var scream-timer $gametime    
     math scream-timer add 90
     pause 0.5
put %scream
     pause
     pause 0.5
     var scream-timer $gametime
     math scream-timer add 60
     return
 
set-scream:
     var scream %$1-scream
     return
 
     
wm-pathway:
     var pathtrack 0
summon-adm:
     pause 0.5
     if $webbed = 1 then goto summon-adm
     math pathtrack add 1
     if %pathtrack > 4 then goto summon-adm.done
put summon adm
     match summon-adm type ahead
     match summon-adm ...wait
     match summon-adm that while entangled in a web
     match summon-adm.done any further while in this plane would be fatal
     match summon-adm Roundtime
     matchwait
summon-adm.done:
     gosub verb pathway focus %wm-pathway
     gosub verb stand
     return
 
 
 
module:
     gosub check-mods-cycle
     goto swap-skills
 
check-mods-skin:
     if "%modules" != "on" then return
     if matchre("%skinmods","%module-1-timing") then if "%module-1-name" != "none" then if "%module-1-name" != "off" then gosub runmodule %module-1-name
     if matchre("%skinmods","%module-2-timing") then if "%module-2-name" != "none" then if "%module-2-name" != "off" then gosub runmodule %module-2-name
     if matchre("%skinmods","%module-3-timing") then if "%module-3-name" != "none" then if "%module-3-name" != "off" then gosub runmodule %module-3-name
     return
check-mods-kill:
     if "%modules" != "on" then return
     if matchre("%killmods","%module-1-timing") then if "%module-1-name" != "none" then if "%module-1-name" != "off" then gosub runmodule %module-1-name
     if matchre("%killmods","%module-2-timing") then if "%module-2-name" != "none" then if "%module-2-name" != "off" then gosub runmodule %module-2-name
     if matchre("%killmods","%module-3-timing") then if "%module-3-name" != "none" then if "%module-3-name" != "off" then gosub runmodule %module-3-name
     return
check-mods-skill:
     if "%modules" != "on" then return
     if matchre("%skillmods","%module-1-timing") then if "%module-1-name" != "none" then if "%module-1-name" != "off" then gosub runmodule %module-1-name
     if matchre("%skillmods","%module-2-timing") then if "%module-2-name" != "none" then if "%module-2-name" != "off" then gosub runmodule %module-2-name
     if matchre("%skillmods","%module-3-timing") then if "%module-3-name" != "none" then if "%module-3-name" != "off" then gosub runmodule %module-3-name
     return
check-mods-cycle:
     if "%modules" != "on" then return
     if matchre("%cyclemods","%module-1-timing") then if "%module-1-name" != "none" then if "%module-1-name" != "off" then gosub runmodule %module-1-name
     if matchre("%cyclemods","%module-2-timing") then if "%module-2-name" != "none" then if "%module-2-name" != "off" then gosub runmodule %module-2-name
     if matchre("%cyclemods","%module-3-timing") then if "%module-3-name" != "none" then if "%module-3-name" != "off" then gosub runmodule %module-3-name
     return
check-mods-timer:
     if "%modules" != "on" then return
     if matchre("%timermods","%module-1-timing") then if "%module-1-name" != "none" then if "%module-1-name" != "off" then gosub checkmodtimer %module-1-name|%module-1-timing
     if matchre("%timermods","%module-2-timing") then if "%module-2-name" != "none" then if "%module-2-name" != "off" then gosub checkmodtimer %module-2-name|%module-2-timing
     if matchre("%timermods","%module-3-timing") then if "%module-3-name" != "none" then if "%module-3-name" != "off" then gosub checkmodtimer %module-3-name|%module-3-timing
     return
checkmodtimer:
     var timecheck $1
     eval tempname element("%timecheck", 0)
     eval timecheck element("%timecheck", 3)
     var currenttime $gametime
     math currenttime subtract %timecheck
     if %currenttime > %starttime then gosub runmodule %tempname
     if %currenttime > %starttime then var starttime $gametime
     return
 
runmodule:
     var modulename $0
     echo . [ Running module %modulename ... ]
put .%modulename
      waitforre (SCRIPT DONE|SCRIPT COMPLETE|MOD DONE|MODULE DONE|MOD COMPLETE|MOD FINISHED|SCRIPT FINISHED|MODULE COMPLETE|MODULE FINISHED)
      pause 0.5
      return
     
set-exptracker:
     var LOCKEDUP 0
     if %exp-limit > 33 then var exp-limit 33
     if "%skill" = "small edge" then if $Small_Edged.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "large edge" then if $Large_Edged.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "2HE" then if $Twohanded_Edged.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "small blunt" then if $Small_Blunt.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "large blunt" then if $Large_Blunt.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "2HB" then if $Twohanded_Blunt.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "staves" then if $Staves.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "pole" then if $Polearms.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "bow" then if $Bow.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "crossbow" then if $Crossbow.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "sling" then if $Slings.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "HT" then if $Heavy_Thrown.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "LT" then if $Light_Thrown.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "offhand" then if $Offhand.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "brawl" then if $Brawling.LearningRate > %exp-limit then var LOCKEDUP 1
     if "%skill" = "targeted magic" then if $Targeted_Magic.LearningRate > %exp-limit then var LOCKEDUP 1
     return      
 
 
script-end:
     echo
     echo Time Out!
     echo Exiting Script and Logging You Out!
     echo
put #send 1 quit
     pause
put #send 1 quit
     pause
put #send 1 quit
     pause