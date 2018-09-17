Script.begin:

echo ######################################################################
echo #############   SHARD LISTING   ######################################
echo ######################################################################
echo ####       Shard         ~~        City       ~~         Pillar    ###
echo #### _____________________________________________________________ ###
echo ####                                                               ###
echo ####  Rolagi                   Crossings               Nightmare   ###
echo #### ------------------------------------------------------------- ###
echo ####  Marendin                 Shard                      Secret   ###
echo #### ------------------------------------------------------------- ###
echo ####  Emalerje                 The Volcano                 Shrew   ###
echo #### ------------------------------------------------------------- ###
echo ####  Asharshpar'i             Leth Deriel               Heavens   ###
echo #### ------------------------------------------------------------- ###
echo ####  Erekinzil                Taisgath                  Heavens   ###
echo #### ------------------------------------------------------------- ###
echo ####  Dinegavren       	    Therenborough     	Introspection   ###
echo #### ------------------------------------------------------------- ###
echo ####  Mintais                  Throne City               Fortune   ###
echo #### ------------------------------------------------------------- ###
echo ####  Taniendar                Riverhaven                 Broken   ###
echo #### ------------------------------------------------------------- ###
echo ####  Dor'na'torna             Hibarnhvidar              Tradion   ###
echo #### ------------------------------------------------------------- ###
echo ####                                                       Unity   ###
echo #### ------------------------------------------------------------- ###
echo ####  Tamigen    Raven/Cragstone/Dragonpriest        Convergence   ###
echo #### ------------------------------------------------------------- ###
echo ####  Besoge                  Mer'kresh                   Besoge   ###
echo #### ------------------------------------------------------------- ###
echo ####  Tabelrem                Muspar'i                Nightmares   ###
echo #### ------------------------------------------------------------- ###
echo ####  Auilusi                 Aesry                    Tradition   ###
echo #### ------------------------------------------------------------- ###
echo ####  								###								###
echo ######################################################################
echo ######################################################################
echo
echo (Tiv|Hib|Crossing|Leth|Haven|Throne|Theren|Shard|Taisgath|Ratha|Kresh|Aesry|Muspari|Raven|Dragon|Cragstone)

var spell mg
var mana 
var harnessMana 30

look:
match look \.\.\.
match In.astral.plane [Astral Plane
put look
matchwait 1
 
#########################################################################################
Open.conduit:
ECHO Open.conduit
 gosub destinations
 gosub shortcut
 gosub initialShard
 gosub prep
 gosub focus
 gosub harness
 gosub pause
 gosub cast

#########################################################################################
In.astral.plane: 
 gosub destinations
 gosub clear
 goto Find.microcosm

######################################################################################### 
Find.microcosm:
 action var direction north when You believe the center of the microcosm is to the north\.
 action var direction south when You believe the center of the microcosm is to the south\.
 action var direction east when You believe the center of the microcosm is to the east\.
 action var direction west when You believe the center of the microcosm is to the west\.
 action var direction northeast when You believe the center of the microcosm is to the northeast\.
 action var direction northwest when You believe the center of the microcosm is to the northwest\.
 action var direction southwest when You believe the center of the microcosm is to the southwest\.
 action var direction southeast when You believe the center of the microcosm is to the southeast\.
 action var at.microcosm YES when Astral Plane, Pillar
 action var at.microcosm YES when Obvious exits: east, west, up, down

Find.axis:
echo Find.axis
 gosub perceive
 gosub move
 var direction clear
 if %at.microcosm != YES then goto Find.axis
 gosub clear
 goto At.pillars

##########################################################################################
At.pillars:
echo At.pillars
 action clear
 var direction east
 action var in.conduit YES when You move into the chaotic tides of energy
 action var in.conduit YES when You reach out into the seemingly infinite strands of Lunar mana and find a conduit

 gosub destinations
 gosub focus
 gosub move
 gosub evaluate.location
 gosub clear
 goto At.pillars

########################################################################################### 
Find.exit:
echo Find.exit
 action clear
 action var direction north when You believe the end of the conduit lies north\.
 action var direction northeast when You believe the end of the conduit lies northeast\.
 action var direction northwest when You believe the end of the conduit lies northwest\.
 action var direction east when You believe the end of the conduit lies east\.
 action var direction west when You believe the end of the conduit lies west\.
 action var direction south when You believe the end of the conduit lies south\.
 action var direction southwest when You believe the end of the conduit lies southwest\.
 action var direction southeast when You believe the end of the conduit lies southeast\.
 action var at.microcosm YES when Astral Plane, Pillar
 action var at.microcosm YES when Obvious exits: east, west, up, down
 action var at.exit YES when silvery-white shard

 gosub clear
 gosub perceive
 gosub move
 ## if %at.microcosm = YES then gosub perceive
 if %at.exit != YES then goto Find.exit
 goto At.exit
 
############################################################################################
At.exit:
echo At.exit
 gosub prep
 gosub focus
 gosub cast
 goto Exit

############################################################################################# 
Exit:
echo Exit
 gosub release
 echo *** Arrived at %1 ***
 exit

############################################################################################# 
cast:
echo cast
 match cast \.\.\.
 match return You gesture
 put cast %focus
 matchwait 3
 if $spelltime != 0 then gosub cast
 return
 
destinations:
 if %1 == Tiv then var focus Emalerje
 if %1 == tiv then var focus Emalerje

 if %1 == muspari then var focus Tabelrem
 if %1 == muspar then var focus Tabelrem
 if %1 == muspa then var focus Tabelrem
 if %1 == musp then var focus Tabelrem
 if %1 == mus then var focus Tabelrem

 if %1 == Crossing then var focus Rolagi
 if %1 == crossing then var focus Rolagi
 if %1 == xing then var focus Rolagi
 if %1 == Xing then var focus Rolagi

 if %1 == Leth then var focus Asharshpar'i
 if %1 == leth then var focus Asharshpar'i

 if %1 == Haven then var focus Taniendar
 if %1 == haven then var focus Taniendar
 if %1 == riverhaven then var focus Taniendar
 if %1 == Riverhaven then var focus Taniendar 

 if %1 == Throne then var focus Mintais
 if %1 == throne then var focus Mintais
 if %1 == tc then var focus Mintais
 if %1 == TC then var focus Mintais

 if %1 == Theren then var focus Dinegavren
 if %1 == theren then var focus Dinegavren
 if %1 == there then var focus Dinegavren
 if %1 == ther then var focus Dinegavren
 if %1 == the then var focus Dinegavren

 if %1 == Shard then var focus Marendin
 if %1 == shard then var focus Marendin 

 if %1 == Taisgath then var focus Erekinzil
 if %1 == taisgath then var focus Erekinzil
 if %1 == Taisg then var focus Erekinzil
 if %1 == taisg then var focus Erekinzil
 if %1 == Taisg then var focus Erekinzil
 if %1 == taisg then var focus Erekinzil
 if %1 == tais then var focus Erekinzil
 if %1 == Ratha then var focus Erekinzil
 if %1 == ratha then var focus Erekinzil
 if %1 == Rath then var focus Erekinzil
 if %1 == rath then var focus Erekinzil
 if %1 == Rat then var focus Erekinzil
 if %1 == rat then var focus Erekinzil

 if %1 == Raven then var focus Tamigen
 if %1 == raven then var focus Tamigen
 if %1 == dragonpriest then var focus Tamigen
 if %1 == dragon then var focus Tamigen
 if %1 == dp then var focus Tamigen
 if %1 == cragstone then var focus Tamigen
 if %1 == cragston then var focus Tamigen
 if %1 == cragsto then var focus Tamigen
 if %1 == cragst then var focus Tamigen
 if %1 == crags then var focus Tamigen 

 if %1 == Hib then var focus Dor'na'torna
 if %1 == hib then var focus Dor'na'torna
 if %1 == p5 then var focus Dor'na'torna
 if %1 == P5 then var focus Dor'na'torna

 if %1 == Aesry then var focus Auilusi
 if %1 == Aesr then var focus Auilusi
 if %1 == Aes then var focus Auilusi
 if %1 == aesry then var focus Auilusi
 if %1 == aesr then var focus Auilusi
 if %1 == aes then var focus Auilusi

 if %1 == kresh then var focus Besoge
 if %1 == Kresh then var focus Besoge
 if %1 == Merkresh then var focus Besoge
 if %1 == merkresh then var focus Besoge
 if %1 == mriss then var focus Besoge
 if %1 == riss then var focus Besoge
 if %1 == Mriss then var focus Besoge
 if %1 == Riss then var focus Besoge
 return 
 
focus:
echo focus
 match focus \.\.\.
 match return but cannot find the conduit you are looking for here
 match return referring
 match Find.exit You reach out into the seemingly infinite strands of Lunar mana and find a conduit anchored by the presence
 put focus %focus
 matchwait 3
 return

evaluate.location: 
echo evaluate.location
 if %in.conduit == YES then goto Find.exit
 goto At.pillars
 
harness:
echo harness
 match harness \.\.\.
 match return You tap
 put harn %harnessMana
 matchwait 3
 return
 
initialShard: 
 var focus Grazhir
 if "$zoneid" = "7" then if "$roomid" = "696" then var focus Emalerje
 if "$zoneid" = "8a" then if "$roomid" = "14" then var focus Rolagi
 if "$zoneid" = "32" then if "$roomid" = "80" then var focus Taniendar
 if "$zoneid" = "35" then if "$roomid" = "196" then var focus Mintais
 if "$zoneid" = "42" then if "$roomid" = "292" then var focus Dinegavren
 if "$zoneid" = "47" then if "$roomid" = "199" then var focus Tabelrem
 if "$zoneid" = "63" then if "$roomid" = "116" then var focus Asharshpar'i
 if "$zoneid" = "67" then if "$roomid" = "541" then var focus Marendin
 if "$zoneid" = "69" then if "$roomid" = "266" then var focus Tamigen
 if "$zoneid" = "99" then if "$roomid" = "280" then var focus Auilusi
 if "$zoneid" = "90d" then if "$roomid" = "2" then var focus Erekinzil
 if "$zoneid" = "107" then if "$roomid" = "301" then var focus Besoge
 if "$zoneid" = "116" then if "$roomid" = "185" then var focus Dor'na'torna
 return
  
move:
echo move
 match move \.\.\.
 match return You move
 match return referring
 put %direction
 matchwait 2
 var direction clear
 return

pause:
echo pause
 pause 8
 return 

perceive:
echo perceive
 match perceive \.\.\.
 match find.axis referring
 match return You sense a constant flow
 match At.pillars You sense an immense source of Lunar mana flowing
 match At.pillars From this vantage point
 match At.pillars [Astral Plane, Pillar
 put perceive
 matchwait 

prep:
echo prep
 match prep \.\.\.
 match return You raise
 put prep %spell %mana
 matchwait 3
 if $spelltime = 0 then gosub prep
 return

release:
 put release
 match release \.\.\.
 put release
 matchwait 2
 return 

return:
 return

shortcut:
 ## Wolf Clan to Leth Deriel
 if "$zoneid" = "4" then if "$roomid" = "118" then goto teleport
 
 ## Promado Village to Throne City
 if "$zoneid" = "9b" then if "$roomid" = "77" then if %focus = Mintais then goto teleport
 
 ## Dirge to Throne City
 if "$zoneid" = "13" then if "$roomid" = "119" then if %focus = Mintais then goto teleport
 
 ## Riverhaven to Tiv (Inside the Fortress)
 if "$zoneid" = "30" then if %focus = Emalerje then goto teleport

 ## Zaulfung, Standing Stones to Throne City
 if "$zoneid" = "31" then if "$roomid" = "25" then if %focus = Mintais then goto teleport
 
 ## Road to Therenborough to Therenborough
 if "$zoneid" = "33a" then if %focus = Dinegavren then goto teleport
 
 ## Rossmans to Therenborough
 if "$zoneid" = "34a" then if "$roomid" = "77" then if %focus = Dinegavren then goto teleport
 
 ## Selgotha to Crossing
 if "$zoneid" = "50" then if %focus = Rolagi then goto teleport
 
 ## Horseclan to Hibarnhvidar
 if "$zoneid" = "69" then if %focus = Dor'na'torna then goto teleport
 
 ## Hara'jaal to Ratha
 if "$zoneid" = "106" then if %focus = Erekinzil then goto teleport 
 
 ## Mer'kresh to M'riss
 if "$zoneid" = "108" then if %focus = Besoge then goto teleport
 
 ## Boar Clan to Muspar'i
 if "$zoneid" = "127" then if "$roomid" = "190" then if %focus = Tabelrem then goto teleport
 return
 
teleport:
 ECHO Teleport on a moonbeam that you do not have set. Don't gate. Keep out of the Astral Plane on this one. You don't need it.
 exit