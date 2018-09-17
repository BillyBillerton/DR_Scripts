echo **************************************
echo *** Craft version 3.1
echo *** Created by Danoryiel Shadowsboon
echo *** version date 7/28/2013
echo *** 
echo *** This script is intended to cover
echo *** a wide range of crafting skills
echo *** and is currently incomplete.
echo *** Assistance in creating this
echo *** script is welcomed and encouraged.
echo ***
echo *** please send any suggestions or
echo *** improvements for this script to
echo *** danoryiel@yahoo.com and I will
echo *** do my best to incorporate them
echo *** in order to cover all crafting
echo *** disciplines.
echo ***
echo ***************************************

echo
echo Which craft will you be doing?
echo 
echo Engineering, Outfitting, or Alchemy
echo
echo
match ENG engineering
match ENG engineer
match ENG enginee
match ENG engine
match ENG engin
match ENG engi
match ENG eng
match OFT Outfitting
match OFT Outfit
match OFT outfi
match OFT outf
match OFT out
match ALC alchemy
match ALC alchem
match ALC alche
match ALC alch
match ALC alc
matchwait


ENG:
put read eng logbook
match NOWORK work order that has expired
match NOWORK is not currently tracking
match SMALLBLOCK small stone block
match THINSLAB thin stone slab
match LARGEBLOCK large stone block
match THICKSLAB thick stone slab
match S_POLE short stone pole
match L_POLE long stone pole
match S_BASIN shallow stone basin
match S_SPHERE a small stone sphere
match SL_ROD a slender stone stirring rod
match L_SPHERE a large stone sphere
match D_BASIN a deep stone basin
match ST_ROD stout stone stirring rod
match G_ROD grooved stone stirring rod
match N_ROD notched stone stirring rod
match F_ROD forked stone stirring rod
match C_KNIFE stone carving knife
match BLUDGEON stone bludgeon
match MATTOCK stone mattock
match MAUL stone maul
match FLAIL stone flail
match BRACELET stone bracelet
match ANKLET stone anklet
match PIN stone pin
match C_PIN stone cloak pin
match HAIRPIN stone hairpin
match TAILBAND stone tailband
match DIADEM stone diadem
match CIRCLET stone circlet
match NECKLACE stone necklace
match A_BELT articulated stone belt
match CROWN stone crown
match MASK stone mask
match HUMAN a Human image
match KALDAR a Kaldar image
match ELF an Elf image
matchwait

OFT:
put read out logbook
match NOWORK work order that has expired
match NOWORK is not currently tracking
match ANKLEBAND a cloth ankleband
match FINGERGLOVE some cloth fingerless gloves
match C_ARMBAND a cloth armband
match A_SOCKS some cloth ankle socks
match SOCK some cloth socks
match C_BELT a cloth belt
match HEADBAND a cloth headband
match ELBOWGLOVE some elbow-length gloves
match PLEATGLOVE some pleated cloth gloves
match KNEESOCK some cloth knee socks
match H_ROBES some hooded cloth robes
match CAPE a cloth cape
match H_CLOAK hooded cloth cloak
match TUNIC formal cloth tunic
match TABARD cloth tabard
match SS_TUNIC short-sleeved tunic
match D_SHIRT cloth dress shirt
match GOWN cloth gown
match FL_DRESS floor-length cloth dress
match D_PANTS some cloth dress pants
match DH_CLOAK deeply-hooded cloak
match SHAMANROBE cloth shaman's robe
match FLOWINGROBE some flowing cloth robes
match MAGEROBE cloth mage's robe
match NAPKIN a cloth napkin
match TOWEL a cloth towel
match RAG a cloth rag
match HIPPOUCH a cloth hip pouch
match W_STRAP a cloth weapon strap
match GEMPOUCH a cloth gem pouch
match THIGHBAG a cloth thigh bag
match POUCH a cloth pouch
match U_BELT a cloth utility belt
match SACK a cloth sack
match BAG a cloth bag
match ARMPOUCH a cloth arm pouch
match T_POUCH a cloth talisman pouch
match H_POUCH a cloth herb pouch
match CARRYALL cloth carryall
match KNAPSACK cloth knapsack
match BACKPACK cloth backpack
match CHARMBAG cloth charm bag
match BANDOLIER a cloth bandolier
match HAVERSACK a cloth haversack
match DUFFELBAG a cloth duffelbag
match S_RUCKSACK a small cloth rucksack
match RUCKSACK a cloth rucksack
match INSULVEST an insulated cloth vest
match INSULMANTLE an insulated cloth mantle
match INSULSHIRT an insulated cloth shirt
match INSULROBE an insulated cloth robe
match PADHAUBERK a padded cloth hauberk
match INSULHAUB an insulated cloth hauberk
matchwait

ALC:
put read alc logbook
match NOWORK is not currently tracking
match NOWORK work order that has expired
match FACEOINT some face ointment
match HEADSALVE some head salve
match CHESTSALVE some chest salve
match ABDSALVE some abdominal salve
match NECKSALVE some neck salve
match EYESALVE some eye salve
match BACKSALVE some back salve
match LIMBSALVE some limb salve
match SKINSALVE some skin salve
match HEADUNG some head ungent
match CHESTUNG some chest ungent
match ABDUNG some abdominal ungent
match NECKUNG some neck ungent
match EYEUNG some eye ungent
match BACKUNG some back ungent
match LIMBUNG some limb ungent
match SKINUNG some skin ungent
match HEADPOT a head potion
match CHESTPOT a chest potion
match ABDPOT a abdominal potion
match LIMBPOT a limb potion
match EYEPOT a eye potion
match SKINPOT a skin potion
match NECKPOT a neck potion
match BACKPOT a back potion
match HEADTON a head tonic
match CHESTTON a chest tonic
match ABDTON a abdominal tonic
match NECKTON a neck tonic
match EYETON a eye tonic
match BACKTON a back tonic
match LIMBTON a limb tonic
match SKINTON a skin tonic
match BODYOINT some body ointment
match LIMBOINT some limb ointment
match SKINOINT some skin ointment
match GPOINT some general ointment
match GPOINT some general purpose ointment
match FACEPOUL some face poultice
match BODYPOUL some body poultice
match LIMBPOUL some limb poultice
match SKINPOUL some skin poultice
match GPPOUL some general purpose poultice
match GPPOUL some general poultice
match FACEDRAUGHT a face draught
match BODYDRAUGHT a body draught
match LIMBDRAUGHT a limb draught
match SKINDRAUGHT a skin draught
match GPDRAUGHT a general purpose draught
match GPDRAUGHT a general draught
match FACEELIX a face elixir
match BODYELIX a body elixir
match LIMBELIX a limb elixir
match SKINELIX a skin elixir
match GPELIX a general purpose elixir
match GPELIX a general elixir
matchwait

NOWORK:
echo ***                                            ***
echo ***  You do not have a Work Order at this time ***
echo ***  Please ask your local trainer for work    ***
echo ***  and try again.                            ***
exit

SMALLBLOCK:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 1
goto MAIN

THINSLAB:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 2
goto MAIN

LARGEBLOCK:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 3
goto MAIN

THICKSLAB:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 4
goto MAIN

S_POLE:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 5
goto MAIN

L_POLE:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 6
goto MAIN

S_BASIN:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 7
goto MAIN

ST_ROD:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 8
goto MAIN

S_SPHERE:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 9
goto MAIN

D_BASIN:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 10
goto MAIN

SL_ROD:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 11
goto MAIN

L_SPHERE:
put stow logb
put get carv book
put turn book to chapt 1
put turn book to page 13
goto MAIN

G_ROD:
put stow logb
put get carv book
put turn book to chapter 1
put turn book to page 13
goto MAIN

N_ROD:
put stow logb
put get carv book
put turn book to chapter 1
put turn book to page 14
goto MAIN

F_ROD:
put stow logb
put get carv book
put turn book to chapter 1
put turn book to page 15
goto MAIN

C_KNIFE:
put stow logb
put get carv book
put turn book to chapt 3
put turn book to page 3
goto MAIN

BLUDGEON:
put stow logb
put get carv book
put turn book to chapt 3
put turn book to page 4
goto MAIN

MATTOCK:
put stow logb
put get carv book
put turn book to chapter 3
put turn book to page 17
goto MAIN

MAUL:
put stow logb
put get carv book
put turn book to chapter 3
put turn book to page 16
goto MAIN

FLAIL:
put stow logb
put get carv book
put turn book to chapt 3
put turn book to page 18
goto MAIN

BRACELET:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 4
goto MAIN

ANKLET:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 5
goto MAIN

PIN:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 6
goto MAIN

C_PIN:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 7
goto MAIN

HAIRPIN:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 8
goto MAIN

TAILBAND:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 9
goto MAIN

DIADEM:
put stow logb
put get carv book
put turn book to chapter 4
put turn book to page 23
goto MAIN

CIRCLET:
put stow logb
put get carv book
put turn book to chapter 4
put turn book to page 24
goto MAIN

NECKLACE:
put stow logb
put get carv book
put turn book to chapter 4
put turn book to page 25
goto MAIN

A_BELT:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 27
goto MAIN

CROWN:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 26
goto MAIN

MASK:
put stow logb
put get carv book
put turn book to chapt 4
put turn book to page 28
goto MAIN

HUMAN:
put stow logb
put get carv book
put turn book to chapt 5
put turn book to page 1
goto MAIN

KALDAR:
put stow logb
put get carv book
put turn book to chapt 5
put turn book to page 2
goto MAIN

ELF:
put stow logb
put get carv book
put turn book to chapt 5
put turn book to page 3
goto MAIN

ANKLEBAND:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 1
goto MAIN2

FINGERGLOVE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 2
goto MAIN2

C_ARMBAND:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 3
goto MAIN2

A_SOCKS:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 4
goto MAIN2

SOCK:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 5
goto MAIN2

C_BELT:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 6
goto MAIN2

HEADBAND:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 7
goto MAIN2

ELBOWGLOVE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 8
goto MAIN2

PLEATGLOVE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 9
goto MAIN2

KNEESOCK:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 10
goto MAIN2

H_ROBES:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 42
goto MAIN2

CAPE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 43
goto MAIN2

H_CLOAK:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 44
goto MAIN2

TABARD:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 45
goto MAIN2

TUNIC:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 46
goto MAIN2

SS_TUNIC:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 47
goto MAIN2

D_SHIRT:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 48
goto MAIN2

GOWN:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 49
goto MAIN2

FL_DRESS:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 50
goto MAIN2

D_PANTS:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 51
goto MAIN2

DH_CLOAK:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 52
goto MAIN2

SHAMANROBE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 55
goto MAIN2

FLOWINGROBE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 54
goto MAIN2

MAGEROBE:
put stow logb
put get tailor book
put turn book to chapt 2
put turn book to page 53
goto MAIN2

NAPKIN:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 1
goto MAIN2

HIPPOUCH:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 2
goto MAIN2

RAG:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 3
goto MAIN2

GEMPOUCH:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 4
goto MAIN2

W_STRAP:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 5
goto MAIN2

POUCH:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 6
goto MAIN2

THIGHBAG:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 7
goto MAIN2

TOWEL:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 8
goto MAIN2

H_POUCH:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 9
goto MAIN2

T_POUCH:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 10
goto MAIN2

ARMPOUCH:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 11
goto MAIN2

BAG:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 12
goto MAIN2

SACK:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 13
goto MAIN2

U_BELT:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 14
goto MAIN2

CHARMBAG:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 15
goto MAIN2

BACKPACK:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 16
goto MAIN2

KNAPSACK:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 17
goto MAIN2

CARRYALL:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 18
goto MAIN2

DUFFELBAG:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 19
goto MAIN2

HAVERSACK:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 20
goto MAIN2

BANDOLIER:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 21
goto MAIN2

S_RUCKSACK:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 22
goto MAIN2

RUCKSACK:
put stow logb
put get tailor book
put turn book to chapt 3
put turn book to page 23
goto MAIN2

INSULVEST:
put stow logb
put get tailor book
put turn book to chapt 4
put turn book to page 40
goto MAIN2

INSULMANTLE:
put stow logb
put get tailor book
put turn book to chapt 4
put turn book to page 41
goto MAIN2

INSULROBE:
put stow logb
put get tailor book
put turn book to chapt 4
put turn book to page 42
goto MAIN2

PADHAUBERK:
put stow logb
put get tailor book
put turn book to chapt 4
put turn book to page 43
goto MAIN2

INSULSHIRT:
put stow logb
put get tailor book
put turn book to chapt 4
put turn book to page 44
goto MAIN2

INSULHAUB:
put stow logb
put get tailor book
put turn book to chapt 4
put turn book to page 45
goto MAIN2

HEADSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 1
goto MAIN3
 
CHESTSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 2
goto MAIN3

ABDSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 3
goto MAIN3

NECKSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 4
goto MAIN3

EYESALVE:
put get rem book
put turn book to chapt 3
put turn book to page 5
goto MAIN3

BACKSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 6
goto MAIN3

LIMBSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 7
goto MAIN3

SKINSALVE:
put get rem book
put turn book to chapt 3
put turn book to page 8
goto MAIN3

HEADUNG:
put get rem book
put turn book to chapt 3
put turn book to page 9
goto MAIN3

CHESTUNG:
put get rem book
put turn book to chapt 3
put turn book to page 10
goto MAIN3

ABDUNG:
put get rem book
put turn book to chapt 3
put turn book to page 11
goto MAIN3

NECKUNG:
put get rem book
put turn book to chapt 3
put turn book to page 12
goto MAIN3

EYEUNG:
put get rem book
put turn book to chapt 3
put turn book to page 13
goto MAIN3

BACKUNG:
put get rem book
put turn book to chapt 3
put turn book to page 14
goto MAIN3

LIMBUNG:
put get rem book
put turn book to chapt 3
put turn book to page 15
goto MAIN3

SKINUNG:
put get rem book
put turn book to chapt 3
put turn book to page 16
goto MAIN3

HEADPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 4
goto MAIN3a

CHESTPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 3
goto MAIN3a

ABDPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 2
goto MAIN3a

NECKPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 1
goto MAIN3a

EYEPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 6
goto MAIN3a

BACKPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 5
goto MAIN3a

LIMBPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 8
goto MAIN3a

SKINPOT:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 7
goto MAIN3a

HEADTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 12
goto MAIN3a

CHESTTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 11
goto MAIN3a

ABDTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 10
goto MAIN3a

NECKTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 9
goto MAIN3a

EYETON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 14
goto MAIN3a

BACKTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 13
goto MAIN3a

LIMBTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 16
goto MAIN3a

SKINTON:
put stow logb
put get rem book
put turn book to chapt 4
put turn book to page 15
goto MAIN3a

FACEOINT:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 1
goto MAIN3

BODYOINT:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 2
goto MAIN3

LIMBOINT:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 3
goto MAIN3

SKINOINT:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 4
goto MAIN3

FACEPOUL:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 5
goto MAIN3

GPOINT:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 6
goto MAIN3

BODYPOUL:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 7
goto MAIN3

LIMBPOUL:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 8
goto MAIN3

SKINPOUL:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 9
goto MAIN3

GPPOUL:
put stow logb
put get rem book
put turn book to chapt 5
put turn book to page 10
goto MAIN3

FACEDRAUGHT:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 1
goto MAIN3a

BODYDRAUGHT:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 2
goto MAIN3a

LIMBDRAUGHT:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 3
goto MAIN3a

SKINDRAUGHT:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 4
goto MAIN3a

GPDRAUGHT:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 5
goto MAIN3a

FACEELIX:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 6
goto MAIN3a

BODYELIX:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 7
goto MAIN3a

LIMBELIX:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 8
goto MAIN3a

SKINELIX:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 9
goto MAIN3a

GPELIX:
put stow logb
put get rem book
put turn book to chapt 6
put turn book to page 10
goto MAIN3a


MAIN:
echo -------------------------------
echo =  You have made %c %2 's
echo =
echo -------------------------------
put get my deed
put tap my deed
put get book
put study book
waitfor roundtime
pause 2
put stow book
put get chisels
match riff jagged edges
match rasp uneven
match rasp no longer level
match polish discol
match carve roundtime
put carve %1 with chis
matchwait

carve:
put stow
put get chis
put hum %3
match stow You cannot figure
match assemble [Ingredients
match riff jagged edges
match rasp uneven
match rasp no longer level
match polish discol
match carve roundtime
match carve ...w
put carve %2 with chis
matchwait

riff:
match riff ...w
match assemble [Ingredients
match stow Applying the final
match carve roundtime
put stow chis
put get riff
put rub %2 with riff
matchwait

rasp:
match rasp ...w
match assemble [Ingredients
match stow Applying the final
match carve roundtime
put stow chis
put get rasp
put scrape %2 with rasp
matchwait


polish:
match polish ...w
match assemble [Ingredients
match stow Applying the final
match carve roundtime
put stow chis
put get polish
put apply polish to %2
matchwait

assemble:
match cord cord to continue
match pole pole to continue
match cord pole is not required
match pole cord is not required
match assemble ...w
put stow right
put get chis
put carve %2 with chis
matchwait

cord:
match carve further carving
match carve You do not see anything
match rasp rasp
match riff riffler
match polish polish
match pole cord is not required
put stow right
put get cord in my bag
put assemble %2 with my cord
put analyze %2
matchwait

pole:
match carve further carving
match carve You do not see anything
match rasp rasp
match riff riffler
match polish polish
match cord pole is not required
put stow right
put get pole in my bag
put assemble %2 with my pole
put analyze %2
matchwait

stow:
put analyze %2
waitfor roundtime
pause 1
put stow %2
counter add 1
goto MAIN


MAIN2:
match slickstone a quick ironing
match slickstone a deep crease develops
match pins Two layers of the fabric won't cooperate
match sew roundtime
match sew ...w
echo -------------------------------
echo =  You have made %c %2 's
echo =
echo -------------------------------
put stow l
put stow r
put get my %1
put swap
put get tailor book
put study tailor book
waitfor roundtime
pause 2
put stow tailor book
put get scissors
put cut my %1 with scissors
matchwait

sew:
match rethread The needles need to have thread
match stow2 You cannot figure
match slickstone a quick ironing
match slickstone a deep crease develops
match pins Two layers of the fabric won't cooperate
match pins The fabric keeps folding back
match yardstick from some remeasuring
match sew roundtime
match sew ...w
match assemble2 pad
match stow2 Applying the final touches
match stow2 You realize that cannot be repaired
match stow2 is not damaged enough to warrant repair.
put stow
put get needle
put push %2 with needle
matchwait


assemble2:
put stow right
put get pad in bag
put assemble padd with %2
goto sew

slickstone:
match slickstone ...w
match stow2 Applying the final touches
match sew roundtime
put stow needle
put get slickstone
put rub %2 with slickstone
matchwait

pins:
match pins ...w
match stow2 Applying the final touches
match sew roundtime
put stow needle
put get pins
put poke %2 with pins
matchwait

yardstick:
pause 2
put stow needle
put get yardstick
put measure %2 with yardstick
waitfor roundtime
pause 2
put stow yardstick
put get scissors
put cut %2 with scissors
pause 36
goto sew

rethread:
put stow %2
put get thread in my bag
put put thread on needle
put get %2 in my bag
goto sew

stow2:
put analyze %2
waitfor roundtime
pause 1
put stow right
put get stamp
put mark %2 with my stamp
waitfor roundtime
pause 1
put stow %2
put stow r
counter add 1
goto MAIN2


MAIN3:
put get my remedy book
put study my book
waitfor roundtime
pause 2
put stow my book
put get my mortar
put get %1
pause 1
put put %1 in my mort
pause 1
put get pestle
goto CRUSH

CRUSH:
put crush %1 with pestle
waitfor roundtime
put stow pestle
put get %2
put pour %2 in mortar
put stow %2
put analyze %3
match CRUSH2 you do not see
match CRUSH2 appears free of defects
match CRUSH2 composition looks accurate
match TURN clumps of material
match SMELL takes on an odd hue
match SIEVE a thick froth coats
matchwait

CRUSH2:
pause 2
put stow left
put get pestle
put crush %3 with pestle
match CRUSH2 Roundtime
match CATALYST catalyst material
match TURN clumps
match SMELL transition colors
match SIEVE butting
match STOW3 interesting thought really
matchwait

TURN:
pause 2
put turn mortar
match CRUSH2 Roundtime
match CATALYST catalyst material
matchwait

SMELL:
pause 2
put smell %3
match CRUSH2 Roundtime
match CATALYST catalyst material
matchwait

SIEVE:
pause 2
put stow l
put get sieve
put push %3 with sieve
match CRUSH2 Roundtime
match CATALYST catalyst material
matchwait

CATALYST:
pause 2
put stow l
put get %4
put put %4 in mortar
put stow %4
put analyze %3
match CRUSH2 you do not see
match CRUSH2 appears free of defects
match CRUSH2 composition looks accurate
match TURN clumps of material
match SMELL takes on an odd hue
match SIEVE a thick froth coats
matchwait

MAIN3a:
put get my remedy book
put study my book
waitfor roundtime
pause 2
put stow my book
put get my bowl
put get %1
put put %1 in my bowl
pause 1
put get my stick
goto MIX

MIX:
put mix bowl with stick
waitfor roundtime
put stow stick
put get %2
put pour %2 in bowl
put stow %2
put analyze %3
match MIX2 you do not see
match MIX2 appears free of defects
match MIX2 composition looks accurate
match TURN2 clumps of material
match SMELL2 takes on an odd hue
match SIEVE2 a thick froth coats
matchwait

MIX2:
pause 2
put stow left
put get stick
put mix bowl with stick
match MIX2 Roundtime
match CATALYST2 catalyst material
match TURN2 clumps
match SMELL2 transition colors
match SIEVE2 butting
match STOW3a interesting thought really
match STOW3a Try as you might
matchwait

TURN2:
pause 2
put turn bowl
match MIX2 Roundtime
match CATALYST2 catalyst material
matchwait

SMELL2:
pause 2
put smell %3
match MIX2 Roundtime
match CATALYST2 catalyst material
matchwait

SIEVE2:
pause 2
put stow l
put get sieve
put push %3 with sieve
match MIX2 Roundtime
match CATALYST2 catalyst material
matchwait

CATALYST2:
pause 2
put stow l
put get %4
put put %4 in bowl
put stow %4
put analyze %3
match MIX2 you do not see
match MIX2 appears free of defects
match MIX2 composition looks accurate
match TURN2 clumps of material
match SMELL2 takes on an odd hue
match SIEVE2 a thick froth coats
matchwait


STOW3:
put stow l
put get stamp
put mark %3 with stamp
waitfor roundtime
pause 2
put stow l
put get %3
put stow %3
counter add 1
echo -------------------------------
echo =  You have made %c %3 's
echo =
echo -------------------------------
goto MAIN3

STOW3a:
put stow l
put get stamp
put mark %3 with stamp
waitfor roundtime
pause 2
put stow l
put get %3
put stow %3
counter add 1
echo -------------------------------
echo =  You have made %c %3 's
echo =
echo -------------------------------
goto MAIN3a
