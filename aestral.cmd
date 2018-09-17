Script.begin:

include base.cmd
Action clear

echo ########################################
echo #############   SHARD LISTING   ###############
echo ########################################
echo ####       Shard         ~~        City       ~~         Pillar       ###
echo #### _______________________________________ ###
echo ####                                                                               ###
echo ####  Rolagi                   Crossings               Nightmare   ###
echo #### ------------------------------------------------------------- ###
echo ####  Marendin                   Shard                      Secret   ###
echo #### ------------------------------------------------------------- ###
echo ####  Emalerje               The Volcano                 Shrew    ###
echo #### ------------------------------------------------------------- ###
echo ####  Asharshpar'i            Leth Deriel              Heavens   ###
echo #### ------------------------------------------------------------- ###
echo ####  Erekinzil                   Taisgath              Heavens     ###
echo #### -------------------------------------------------------------- ###
echo ####  Dinegavren       Therenborough     Introspection   ###
echo #### ------------------------------------------------------------- ###
echo ####  Mintais                 Throne City                 Fortune   ###
echo #### ------------------------------------------------------------- ###
echo ####  Taniendar             Riverhaven                  Broken   ###
echo #### -------------------------------------------------------------- ###
echo ####  Dor'na'torna          Hibarnhvidar              Tradion   ###
echo #### -------------------------------------------------------------- ###
echo ####                                                                    Unity   ###
echo #### ------------------------------------------------------------- ###
echo ####  Tamigen             Raven's Point       Convergence ###
echo #### ------------------------------------------------------------- ###
echo ####  Besoge                  Mer'kresh                               ###
echo #### ------------------------------------------------------------- ###
echo #######################################
echo #######################################
echo
echo (Tiv|Hib|Crossing|Leth|Haven|Throne|Theren|Shard|Taisgath|kresh)

var dest.shard null

if %1 == Tiv then var dest.shard Emalerje
if %1 == tiv then var dest.shard Emalerje

if %1 == Crossing then var dest.shard Rolagi
if %1 == crossing then var dest.shard Rolagi
if %1 == xing then var dest.shard Rolagi
if %1 == Xing then var dest.shard Rolagi

if %1 == Leth then var dest.shard Asharshpar'i
if %1 == leth then var dest.shard Asharshpar'i

if %1 == Haven then var dest.shard Taniendar
if %1 == haven then var dest.shard Taniendar
if %1 == riverhaven then var dest.shard Taniendar
if %1 == Riverhaven then var dest.shard Taniendar

if %1 == Throne then var dest.shard Mintais
if %1 == throne then var dest.shard Mintais
if %1 == tc then var dest.shard Mintais
if %1 == TC then var dest.shard Mintais

if %1 == Theren then var dest.shard Dinegavren
if %1 == theren then var dest.shard Dinegavren

if %1 == Shard then var dest.shard Marendin
if %1 == shard then var dest.shard Marendin

if %1 == Taisgath then var dest.shard Erekinzil
if %1 == taisgath then var dest.shard Erekinzil
if %1 == Taigs then var dest.shard Erekinzil
if %1 == taigs then var dest.shard Erekinzil
if %1 == Taisg then var dest.shard Erekinzil
if %1 == taisg then var dest.shard Erekinzil

if %1 == Raven then var dest.shard Tamigen
if %1 == raven then var dest.shard Tamigen

if %1 == Hib then var dest.shard Dor'na'torna
if %1 == hib then var dest.shard Dor'na'torna
if %1 == p5 then var dest.shard Dor'na'torna
if %1 == P5 then var dest.shard Dor'na'torna


if %1 == kresh then var dest.shard Besoge
if %1 == merkresh then var dest.shard Besoge
if %1 == mriss then var dest.shard Besoge
if %1 == riss then var dest.shard Besoge

if %1 == fang then var dest.shard Vellano

if %dest.shard = null then goto not.valid


Open.conduit:
GOSUB prep mg
GOSUB harness 30
pause 3
GOSUB cast grazhir

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

Find.microcosm1:
GOSUB power
GOSUB move %direction
 pause .5
if %at.microcosm != YES then goto Find.microcosm1
 else goto At.pillars

At.pillars:
 action clear
 action var in.conduit YES when You move into the chaotic tides of energy
 action var in.conduit YES when You reach out into the seemingly infinite strands of Lunar mana and find a conduit
 #if %dest.shard == Taniendar then GOSUB move down
 #if %dest.shard == Tamigen then GOSUB move up
GOSUB focus %dest.shard
 if %in.conduit == YES then goto Find.exit
GOSUB move east
 goto At.pillars



Find.exit:
 action clear
 action var direction north when You believe the end of the conduit lies north\.
 action var direction northeast when You believe the end of the conduit lies northeast\.
 action var direction northwest when You believe the end of the conduit lies northwest\.
 action var direction east when You believe the end of the conduit lies east\.
 action var direction west when You believe the end of the conduit lies west\.
 action var direction south when You believe the end of the conduit lies south\.
 action var direction southwest when You believe the end of the conduit lies southwest\.
 action var direction southeast when You believe the end of the conduit lies southeast\.
 action var at.exit YES when You also see the silvery-white shard

GOSUB power
GOSUB move %direction
 pause .5

 if %at.exit != YES then goto Find.exit
 else goto At.exit

At.exit:
GOSUB prep mg
GOSUB focus %dest.shard
GOSUB cast %dest.shard
goto exit1


not.valid:
 echo
 echo NOT A VALID DESTINATION
 echo
exit

exit1:
GOSUB release
 echo *** Arrived at %1 ***
exit
