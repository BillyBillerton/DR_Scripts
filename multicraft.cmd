echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo |            Multicraft version 3.5
echo | 
echo | Written by: Danoryiel Shadowsboon
echo | Special thanks to: Ievora
echo | Testers: Sendithu,Kasrendyr,-,-,
echo | 
echo | For ease of editting:
echo |
echo | Alchemy section starts on/near line 10206
echo | Enchanting section starts on/near line TBD
echo | Engineering section starts on/near line 0212
echo | Forging section starts on/near line 2761
echo | Outfitting section starts on/near line 6649
echo | *********************************************************
echo | ***This script makes the assumption that you have all
echo | ***materials on hand and it will hang if it cannot
echo | ***find them in some cases, or quit the script in others.
echo | *********************************************************
echo | 
echo | 
echo | 
echo | 
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


COUNTER SET 1
MAINMENU:
pause 2
echo ********************************************************************************
echo *** Which craft will you be doing?
echo ***
echo *** 1. Alchemy
echo *** 2. Enchanting
echo *** 3. Engineering
echo *** 4. Forging
echo *** 5. Outfitting
echo ***
echo *** Enter the name (at least three letters) or the number of the one you want
echo ***
echo ********************************************************************************
matchre ALC /(alchemy|alchem|alche|alch|alc|one|1)/i
matchre ENC /(enchanting|enchantin|enchanti|enchant|enchan|encha|ench|enc|two|2)/i
matchre ENG /(engineering|engineerin|engineeri|engineer|enginee|engine|engin|engi|eng|three|3)/i
matchre FOR /(forging|forgin|forgi|forg|for|four|4)/i
matchre OUT /(outfitting|outfittin|outfitti|outfitt|outfit|outfi|outf|out|five|5)/i
matchwait

ALC:
pause 2
echo ALCHEMY
echo *******************************************************************************
echo ***Which discipline will you be working in?
echo ***
echo *** 1. Remedies
echo *** 2. Poisons
echo *** 3. Cooking
echo *** 4. Back
echo *** 5. Start-up Syntax
echo ***
echo *** Enter the name (at least three letters) or the number of the one you want
echo ***
echo ******************************************************************************* 
matchre REMEDY /Remedies|Remedie|Remedi|Remed|Reme|Rem|one|1/i
matchre POISON /Poison|Poiso|Pois|Poi|Two|2/i
matchre COOKING /Cooking|Cookin|Cooki|Cook|Coo|Three|3/i
matchre MAINMENU /back|four|4/i
matchre ALC_HELP /five|5/i
matchwait

ALC_HELP:
echo | Special instructions to start the script:
echo | Enter "Back" at any time without the quotes to return to the Main Menu
echo |
echo | Start-up syntax:
echo |
echo | Alchemy (Remedies): .multicraft (%1)
echo | %1 = the catalyst material you will be using 
echo | e.g. .multicraft seolarn or .multicraft niniam.ingot or .multicraft pewter.nugget
echo |
echo | At this time, support for multiple catalysts is not supported. If your chosen catalyst item
echo | runs out during the script, you will have to abort the script and either purchase more catalyst
echo | items or choose a new one and finish the current product being made manually.
echo |
echo |
echo |
match MAINMENU back
matchwait 

ENC:
pause 2
echo ENCHANTING
echo *******************************************************************************
echo ***Which discipline will you be working in?
echo ***
echo *** 1. Runecrafting
echo *** 2. Binding
echo *** 3. Invoking
echo *** 4. Back
echo ***
echo *** Enter the name (at least four letters) or the number of the one you want
echo ***
echo ******************************************************************************* 
matchre RUNECRAFT /Runecrafting|Runecraftin|Runecrafi|Runecraft|Runecraf|Runecra|Runecr|Runec|Rune|one|1/i
matchre BINDING /Binding|Bindin|Bindi|Bind|Two|2/i
matchre INVOKING /Invoking|Invokin|Invoki|Invok|Invo|Three|3/i
matchre MAINMENU /back|four|4/i
matchwait

ENG:
pause 2
echo ENGINEERING
echo *******************************************************************************
echo ***Which discipline will you be working in?
echo ***
echo *** 1. Carving
echo *** 2. Shaping
echo *** 3. Tinkering
echo *** 4. Back
echo ***
echo *** Enter the name (at least three letters) or the number of the one you want
echo ***
echo ******************************************************************************* 
matchre CARVING /Carving|Carvin|Carv|Car|one|1/i
matchre SHAPING /Shaping|Shapin|Shapi|Shap|Sha|Two|2/i
matchre TINKERING /Tinkering|Tinkerin|Tinkeri|Tinker|Tinke|Tink|Tin|Three|3/i
matchre MAINMENU /back|four|4/i
matchwait

FOR:
pause 2
echo FORGING
echo *******************************************************************************
echo ***Which discipline will you be working in?
echo ***
echo *** 1. Blacksmithing
echo *** 2. Weaponsmithing
echo *** 3. Armorsmithing
echo *** 4. Back
echo ***
echo *** Enter the name (at least fourletters) or the number of the one you want
echo ***
echo ******************************************************************************* 
matchre BLACKSMITH /Blacksmithing|Blacksmithin|Blacksmithi|Blacksmith|Blacksmit|Blacksmi|Blacksm|Blacks|Black|Blac|one|1/i
matchre WEAPONSMITH /Weaponsmithing|Weaponsmithin|Weaponsmithi|Weaponsmith|Weaponsmit|Weaponsmi|Weaponsm|Weapons|Weapon|Weapo|Weap|Two|2/i
matchre ARMORSMITH /Armorsmithing|Armorsmithin|Armorsmithi|Armorsmith|Armorsmit|Armorsmi|Armorsm|Armors|Armor|Armo|Three|3/i
matchre MAINMENU /back|four|4/i
matchwait

OUT:
pause 2
echo OUTFITTING
echo *******************************************************************************
echo ***Which discipline will you be working in?
echo ***
echo *** 1. Tailoring
echo *** 2. Artistry
echo *** 3. Jewelry Making
echo *** 4. Back
echo ***
echo *** Enter the name (at least three letters) or the number of the one you want
echo ***
echo ******************************************************************************* 
matchre TAILOR /Tailoring|Tailorin|Tailori|Tailor|Tailo|Tail|Tai|one|1/i
matchre ARTIST /Artistry|Artistr|Artist|Artis|Arti|Art|Two|2/i
matchre JEWELRY /Jewelry|Jewelr|Jewel|Jewe|Jew|Three|3/i
matchre MAINMENU /back|four|4/i
matchwait

NOWORK:
echo *********************************************************
echo *** You do not have an active work order. Please see  ***
echo *** your local society trainer for a new one in order ***
echo *** to begin.                                         ***
echo *********************************************************
exit

POISON:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

COOKING:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

ARTIST:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

JEWELRY:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

CARVING:
SETVARIABLE book carving book
match NOWORK work order that has expired
match NOWORK is not currently tracking
match ST_SMLBLOCK small stone block
match ST_THINSLAB thin stone slab
match ST_LRGBLOCK large stone block
match ST_THICKSLAB thick stone slab
match ST_SHORTPOLE short stone pole
match ST_LONGPOLE long stone pole
match ST_SHALLOWBASIN shallow stone basin
match ST_SMALLSPHERE a small stone sphere
match ST_SLENDROD a slender stone stirring rod
match ST_LRGSPHERE a large stone sphere
match ST_DEEPBASIN a deep stone basin
match ST_STOUTROD stout stone stirring rod
match ST_GROOVEROD grooved stone stirring rod
match ST_POLISHSLICK polished slickstone
match ST_SMOOTHSLICK smooth slickstone
match ST_FLATSLICK flat slickstone
match ST_NOTCHROD notched stone stirring rod
match ST_FORKROD forked stone stirring rod
match ST_ROUGHTABLE rough stone table
match ST_HIGHTABLE high stone table
match ST_SQTABLE square stone table
match ST_RDTABLE round stone table
match ST_OVALTABLE oval stone table
match ST_LNGTABLE long stone table
match ST_BUFTABLE stone buffet table
match ST_DNGTABLE stone dining table
match ST_REFTABLE stone refectory table
match ST_MEDTABLE stone meditation table
match ST_PARTABLE stone parquet table
match ST_SMOOTHSTONE some smooth stones
match ST_BLUDGEON stone bludgeon
match ST_CARVEKNIFE stone carving knife
match ST_ELONGSTONE some elongated stones
match ST_HANDAXE stone hand axe
match ST_WARCLUB stone war club
match ST_BALANCESTONE some balanced stones
match ST_WARHAMMER stone war hammer
match ST_SPIKES some stone spikes
match ST_SHARDS some stone shards
match ST_BOLA a stone bola
match ST_HANDSWORD a stone hand sword
match ST_MALLET heavy stone mallet
match ST_JAVELIN stone javelin
match ST_SPEAR stone spear
match ST_MATTOCK stone war mattock
match ST_MAUL stone maul
match ST_FLAIL stone flail
match ST_BAND stone band
match ST_TOERING a stone toe ring
match ST_NOSERING a stone nose ring
match ST_PIN a stone pin
match ST_BRACELET stone bracelet
match ST_ANKLET stone anklet
match ST_CLOAKPIN stone cloak pin
match ST_HAIRPIN stone hairpin
match ST_TAILBAND stone tailband
match ST_EARRING pair of stone earrings
match ST_MEDALLION a stone medallion
match ST_AMULET a stone amulet
match ST_PENDANT a stone pendant
match ST_BROOCH a stone brooch
match ST_EARCUFF a stone earcuff
match ST_TALISCASE a stone talisman case
match ST_BELTBUCKLE a stone belt buckle
match ST_ARMBAND a stone armband
match ST_ARTBRACELET an articulated stone bracelet
match ST_TIARA a stone tiara
match ST_LOCKET a stone locket
match ST_CHOKER a stone choker
match ST_DIADEM stone diadem
match ST_CIRCLET stone circlet
match ST_ARTNECKLACE articulated stone necklace
match ST_CROWN a stone crown
match ST_ARTBELT articulated stone belt
match ST_MASK stone mask
match ST_HUMAN a Human image
match ST_KALDAR a Kaldar image
match ST_ELF an Elf image
match ST_GORTOG a Gor'Tog image
match ST_HALFLING a Halfling image
match ST_GNOME a Gnome image
match ST_ELOTH an Elothean image
match ST_PRYDAEN a Prydaen image
match ST_RAKASH a Rakash image
match ST_SKRA a S'kra Mur image
match ST_DWARF a Dwarf image
match BO_SHORTPOLE short bone pole
match BO_LONGPOLE long bone pole
match BO_RDTABLE round bone table
match BO_SQTABLE square bone table
match BO_BLUDGEON bone bludgeon
match BO_CARVEKNIFE bone carving knife
match BO_HANDAXE bone hand axe
match BO_WARCLUB bone war club
match BO_SHIV bone shiv
match BO_HANDSWORD a bone hand sword
match BO_MALLET heavy stone mallet
match BO_JAVELIN bone javelin
match BO_SPEAR light bone spear
match BO_MATTOCK bone war mattock
match BO_MAUL a bone maul
match BO_FLAIL bone flail
match BO_BAND a bone band
match BO_NOSERING a bone nose ring
match BO_TOERING a bone toe ring
match BO_BRACELET a bone bracelet
match BO_ANKLET a bone anklet
match BO_PIN a bone pin
match BO_CLOAKPIN a bone cloak pin
match BO_HAIRPIN a bone hairpin
match BO_TAILBAND a bone tailband
match BO_SHALLCUP a shallow bone cup
match BO_PENDANT a bone pendant
match BO_AMULET a bone amulet
match BO_MEDALLION a bone medallion
match BO_EARRING pair of bone earrings
match BO_EARCUFF a bone earcuff
match BO_BROOCH a bone brooch
match BO_ARMBAND a bone armband
match BO_BELTBUCKLE a bone belt buckle
match BO_CHOKER a bone choker
match BO_LOCKET a bone locket
match BO_TIARA a bone tiara
match BO_ARTBRACELET an articulated bone bracelet
match BO_BANGLES some bone bangles
match BO_ARTNECKLACE articulated bone necklace
match BO_CIRCLET a bone circlet
match BO_CROWN a bone crown
match BO_COMB a bone comb
match BO_HAIRCOMB a bone haircomb
match SEGAVENT segmented bone aventail
match SEGMASK segmented bone mask
match SEGGLOVES segmented bone gloves
match SEGCAP segmented bone cap
match NOTCHAVENT notched bone aventail
match NOTCHMASK notched bone mask
match SEGHELM segmented bone helm
match NOTCHGLOVE notched bone gloves
match NOTCHCAP notched bone cap
match RIBAVENT ribbed bone aventail
match RIBMASK ribbed bone mask
match SEGTASSET segmented bone tasset
match SEGVAMBRACE segmented vambraces
match SEGGREAVE segmented bone greaves
match SEGBALA segmented bone balaclava
match NOTCHHELM notched bone helm
match RIBGLOVE ribbed bone gloves
match RIBCAP ribbed bone cap
match SEGTABARD segmented bone tabard
match SEGMANTLE segmented bone mantle
match SEGVEST segmented bone vest
match NOTCHTASSET notched bone tasset
match SEGSLEEVE segmented bone sleeves
match NOTCHVAMBRACE notched vambraces
match NOTCHGREAVE notched bone greaves
match NOTCHBALA notched bone balaclava
match RIBHELM ribbed bone helm
match SEGCOAT segmented bone coat
match SEGROBE segmented bone robe
match NOTCHTABARD notched bone tabard
match NOTCHMANTLE notched bone mantle
match NOTCHVEST notched bone vest
match RIBTASSET ribbed bone tasset
match RIBSLEEVE ribbed bone sleeves
match RIBVAMBRACE ribbed vambraces
match RIBGREAVE ribbed bone greaves
match RIBBALA ribbed bone balaclava
match SEGHAUB segmented bone hauberk
match NOTCHCOAT notched bone coat
match NOTCHROBE notched bone robe
match RIBTABARD ribbed bone tabard
match RIBMANTLE ribbed bone mantle
match RIBVEST ribbed bone vest
match RIBSLEEVE ribbed bone sleeves
match NOTCHHAUB notched bone hauberk
match RIBCOAT ribbed bone coat
match RIBROBE ribbed bone robe
match RIBHAUB ribbed bone hauberk
put read eng logbook
matchwait

ST_SMLBLOCK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_THINSLAB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_LRGBLOCK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_THICKSLAB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_SHORTPOLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_LONGPOLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_SHALLOWBASIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_SMALLSPHERE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_SLENDROD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_LRGSPHERE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_DEEPBASIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_STOUTROD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_GROOVEROD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_POLISHSLICK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_SMOOTHSLICK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_FLATSLICK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_NOTCHROD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_FORKROD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 1
match CAR_START %s
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page 1
matchwait

ST_ROUGHTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_HIGHTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_SQTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_RDTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_OVALTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_LNGTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_DNGTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_REFTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_MEDTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page 1
matchwait

ST_PARTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 2
match CAR_START %s
matchre CAR_CHAPT2
put turn my book to page 1
matchwait

ST_SMOOTHSTONE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_BLUDGEON:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_CARVEKNIFE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_ELONGSTONE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_HANDAXE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_WARCLUB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_BALANCESTONE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_WARHAMMER:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_SPIKES:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_SHARDS:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_BOLA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_HANDSWORD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_MALLET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_JAVELIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_SPEAR:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_MATTOCK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_MAUL:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_FLAIL:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 3
match CAR_START %s
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page 1
matchwait

ST_TOERING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_BAND:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_NOSERING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_PIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_BRACELET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_ANKLET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_CLOAKPIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_HAIRPIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_TAILBAND:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_EARRING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_MEDALLION:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_AMULET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_PENDANT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_BROOCH:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_EARCUFF:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_TALISCASE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_BELTBUCKLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_ARMBAND:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_ARTBRACELET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_TIARA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_LOCKET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_CHOKER:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_DIADEM:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_CIRCLET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_ARTNECKLACE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_CROWN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_ARTBELT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_MASK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 4
match CAR_START %s
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page 1
matchwait

ST_HUMAN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_KALDAR:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_RAKASH:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_GORTOG:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_SKRA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_ELOTH:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_GNOME:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_HALFLING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_ELF:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_PRYDAEN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

ST_DWARF:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 5
match CAR_START %s
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page 1
matchwait

BO_SHORTPOLE:
SETVARIABLE product pole
SETVARIABLE mat stack
SAVE "a short bone pole"
put stow logb
put get my %book
put turn my book to chapter 6
match CAR_START2 %s
matchre CAR_CHAPT6 /bleaching|pole/
put turn book to page 1
matchwait

BO_LONGPOLE:
SETVARIABLE product pole
SETVARIABLE mat stack
SAVE "a long bone pole"
put stow logb
put get my %book
put turn my book to chapter 6
match CAR_START2 %s
matchre CAR_CHAPT6 /bleaching|pole/
put turn book to page 1
matchwait

BO_RDTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 7
match CAR_START2 %s
matchre CAR_CHAPT7 /table|desk|chair|bench|workbench|shelf|shelves/
put turn book to page 1
matchwait

BO_SQTABLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 7
match CAR_START2 %s
matchre CAR_CHAPT7 /table|desk|chair|bench|workbench|shelf|shelves/
put turn book to page 1
matchwait

BO_BLUDGEON:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_CARVEKNIFE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_HANDAXE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_WARCLUB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_SHIV:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_HANDSWORD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_MALLET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_JAVELIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_SPEAR:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_MATTOCK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_MAUL:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_FLAIL:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 8
match CAR_START2 %s
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page 1
matchwait

BO_BAND:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_TOERING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_NOSERING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_BRACELET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_ANKLET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_PIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_CLOAKPIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_HAIRPIN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_TAILBAND:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_SHALLCUP:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_PENDANT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_AMULET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_MEDALLION:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_EARRING:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_EARCUFF:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_BROOCH:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_ARMBAND:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_BELTBUCKLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_CHOKER:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_LOCKET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_TIARA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_ARTBRACELET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_BANGLES:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_ARTNECKLACE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_CIRCLET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_CROWN:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_COMB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

BO_HAIRCOMB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 9
match CAR_START2 %s
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page 1
matchwait

SEGAVENT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGMASK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGGLOVES:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGCAP:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHAVENT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHMASK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGHELM:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHGLOVE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHCAP:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBAVENT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBMASK:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGTASSET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGVAMBRACE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGGREAVE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGBALA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHHELM:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBGLOVE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBCAP:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGTABARD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGMANTLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGVEST:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHTASSET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGSLEEVE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHVAMBRACE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHGREAVE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHBALA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBHELM:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGCOAT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGROBE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHTABARD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHMANTLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHVEST:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBTASSET:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBSLEEVE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBBALA:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

SEGHAUB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHCOAT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHROBE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBTABARD:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBMANTLE:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBVEST:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

NOTCHHAUB:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBCOAT:
SETVARIABLE product
SETVARIABLE mat
SAVE
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBROBE:
SETVARIABLE product robe
SETVARIABLE mat stack
SAVE "a ribbed bone robe"
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

RIBHAUB:
SETVARIABLE product hauberk
SETVARIABLE mat stack
SAVE "a ribbed bone hauberk"
put stow logb
put get my %book
put turn my book to chapter 10
match CAR_START2 %s
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page 1
matchwait

CAR_CHAPT1:
pause 1
counter add 1
match CAR_START %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT1 /block|slab|pole|slickstone|rod|basin|sphere/
put turn book to page %c
matchwait

CAR_CHAPT2:
pause 1
counter add 1
match CAR_START %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT2 /rough|high|square|round|oval|long|buffet|dining|refectory|meditation|parquet/
put turn book to page %c
matchwait

CAR_CHAPT3:
pause 1
counter add 1
match CAR_START %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT3 /stones|spikes|shards|bludgeon|knife|axe|club|hammer|bola|sword|javelin|spear|mattock|maul|flail|mallet/
put turn book to page %c
matchwait

CAR_CHAPT4:
pause 1
counter add 1
match CAR_START %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT4 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|belt|mask|diadem|case/
put turn book to page %c
matchwait

CAR_CHAPT5:
pause 1
counter add 1
match CAR_START %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT5 /Human|Kaldar|Elf|Gor'Tog|Halfling|Gnome|Elothean|Prydaen|Rakash|S'Kra Mur|Dwarf/
put turn book to page %c
matchwait

CAR_CHAPT6:
pause 1
counter add 1
match CAR_START2 %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT6 /bleaching|pole/
put turn book to page %c
matchwait

CAR_CHAPT7:
pause 1
counter add 1
match CAR_START2 %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT7 /table|desk|chair|bench|workbench|shelf|shelves/
put turn book to page %c
matchwait

CAR_CHAPT8:
pause 1
counter add 1
match CAR_START2 %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT8 /bludgeon|knife|axe|club|shiv|sword|mallet|javelin|spear|maul|mattock|flail/
put turn book to page %c
matchwait

CAR_CHAPT9:
pause 1
counter add 1
match CAR_START2 %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT9 /band|ring|bracelet|anklet|pin|hairpin|tailband|cup|pendant|amulet|medallion|earrings|earcuff|brooch|armband|buckle|choker|locket|tiara|bangles|necklace|circlet|crown|comb|haircomb/
put turn book to page %c
matchwait

CAR_CHAPT10:
pause 1
counter add 1
match CAR_START2 %s
match ERROR1 This chapter does not have
matchre CAR_CHAPT10 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|tabard|coat|mantle|robe|balaclava|sleeves|vest|hauberk/
put turn book to page %c
matchwait

CAR_START:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my chisel
matchre ERROR2 /I could not find|What were you/
match CAR_FIRSTCUT You get
put get my %deed
matchwait

CAR_START2:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my bone saw
matchre ERROR2 /I could not find|What were you/
match CAR_FIRSTCUT2 You get
put get my %mat
matchwait

CAR_FIRSTCUT:
pause 1
put tap my %deed
put carve %mat with my chisel
waitfor Roundtime
goto CAR_CARVE

CAR_FIRSTCUT2:
pause 1
put saw my %mat with my bone saw
waitfor Roundtime
goto CAR_SAW

CAR_CARVE:
pause 1
put stow right
put get my chisel
pause 1
match CAR_CARVE Roundtime
match CAR_POLISH discolor
match CAR_RIFFLER jagged edges
matchre CAR_RASP /uneven|no longer level 
match CAR_ASSEMBLE [Ingredients
match CAR_STOW You cannot figure
put carve %product with my chisel
matchwait

CAR_ASSEMBLE:
put stow right
matchre ERROR1 /I could not find|What were you
match CAR_ASSEMBLEa you get
put get my %part
matchwait

CAR_ASSEMBLEa:
put assemble my %part with my %product
matchre CAR_CARVE /You do not see|chisel|further carving|unable to discern/
match CAR_RASP rasp
match CAR_POLISH polish
match CAR_RIFFLER riffler
put analyze %product
matchwait

CAR_RASP:
put stow right
put get my rasp
match CAR_ASSEMBLE [Ingredients
match CAR_CARVE Roundtime
put scrape %product with my rasp
matchwait

CAR_RIFFLER:
put stow right
put get my riffler
match CAR_ASSEMBLE [Ingredients
match CAR_CARVE Roundtime
put rub %product with my riffler
matchwait

CAR_POLISH:
put stow right
put get my polish
match CAR_ASSEMBLE [Ingredients
match CAR_CARVE Roundtime
put apply polish to %product
matchwait

CAR_SAW:
pause 1
put stow right
put get my bone saw
pause 1
match CAR_SAW Roundtime
match CAR_POLISH2 discolor
match CAR_RIFFLER2 jagged edges
matchre CAR_RASP2 /uneven|no longer level 
match CAR_ASSEMBLE2 [Ingredients
match CAR_STOW2 You cannot figure
put carve %product with my chisel
matchwait

CAR_ASSEMBLE2:
put stow right
matchre ERROR1 /I could not find|What were you
match CAR_ASSEMBLE2a you get
put get my %part
matchwait

CAR_ASSEMBLE2a:
put assemble my %part with my %product
matchre CAR_SAW /You do not see|chisel|further carving|unable to discern/
match CAR_RASP2 rasp
match CAR_POLISH2 polish
match CAR_RIFFLER2 riffler
put analyze %product
matchwait

CAR_RASP2:
put stow right
put get my rasp
match CAR_ASSEMBLE2 [Ingredients
match CAR_SAW Roundtime
put scrape %product with my rasp
matchwait

CAR_RIFFLER2:
put stow right
put get my riffler
match CAR_ASSEMBLE2 [Ingredients
match CAR_SAW Roundtime
put rub %product with my riffler
matchwait

CAR_POLISH2:
put stow right
put get my polish
match CAR_ASSEMBLE2 [Ingredients
match CAR_SAW Roundtime
put apply polish to %product
matchwait


SHAPING:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

TINKERING:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

RUNECRAFT:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

BINDING:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

INVOKING:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

BLACKSMITH:
SETVARIABLE book blacksmith book
match NOWORK work order that has expired
match NOWORK is not currently tracking
match DIAGONALPEEN_MALLET diagonal-peen mallet
match DIAGONALPEEN_HAMMER diagonal-peen hammer
match CURVED_METAL_SHOVEL curved metal shovel
match CROSSPEEN_HAMMER metal cross-peen hammer
match STRAIGHT_METAL_TONGS straight metal tongs
match STOUT_METAL_PICKAXE stout metal pickaxe
match FLATBLADED_TONGS flat-bladed tongs
match CURVED_METAL_TONGS curved metal tongs
match SQUARE_METAL_SHOVEL square metal shovel
match NARROW_METAL_PICKAXE narrow metal pickaxe
match STRAIGHTPEEN_HAMMER straight-peen hammer
match ANGULAR_METAL_TONGS angular metal tongs
match TAPERED_METAL_SHOVEL tapered metal shovel
match METAL_BOLT_TONGS metal bolt tongs
match SLENDER_METAL_PICKAXE slender metal pickaxe
match STRAIGHTPEEN_MALLET straight-peen mallet
match BALLPEEN_HAMMER ball-peen hammer
match STURDY_METAL_SHOVEL sturdy metal shovel
match FLATHEADED_METAL_PICKAXE flat-headed metal pickaxe
match SEGMENTED_TONGS segmented tongs
match WIDE_METAL_SHOVEL wide metal shovel
match BOXJAW_TONGS box-jaw tongs
match WEIGHTED_METAL_PICKAXE weighted metal pickaxe
match ARTICULATED_TONGS articulated tongs
match BALLPEEN_MALLET ball-peen mallet
match SHORT_METAL_CHISEL short metal chisels
match LONG_METAL_CHISEL long metal chisels
match SQUARE_METAL_RIFFLER square metal rifflers
match THIN_METAL_RASP thin metal rasp
match METAL_STRAIGHT_BONESAW metal straight bone saw
match SQUAT_METAL_RIFFLER squat metal rifflers
match PLAIN_METAL_PLIER plain metal pliers
match STURDY_METAL_CHISEL sturdy metal chisel
match COARSE_METAL_RASP coarse metal rasp
match CURVED_METAL_PLIER curved metal pliers
match METAL_CURVED_BONESAW metal curved bone saw
match REINFORCED_CHISEL reinforced chisels
match CURVED_METAL_RIFFLER curved metal rifflers
match TEXTURED_METAL_RASP textured metal rasp
match ROUGH_METAL_PLIER rough metal pliers
match METAL_SLENDER_BONESAW metal slender bone saw
match SHARPENED_CHISEL sharpened chisels
match ELONGATED_RIFFLER elongated rifflers
match FLAT_METAL_RASP flat metal rasp
match THICK_METAL_PLIER thick metal pliers
match TAPERED_METAL_RASP tapered metal rasp
match HOOKED_METAL_PLIER hooked metal pliers
match METAL_TAPERED_BONESAW metal tapered bone saw
match METAL_SERRATED_BONESAW metal serrated bone saw
match METAL_HIDE_SCRAPER metal hide scraper
match SMOOTH_KNITTING_NEEDLES smooth knitting needles
match STOUT_METAL_YARDSTICK stout metal yardstick
match PLAIN_SEWING_NEEDLES plain sewing needles
match STRAIGHT_METAL_SCISSORS straight metal scissors
match CURVED_HIDE_SCRAPER curved hide scraper
match POINTED_METAL_AWL pointed metal awl
match TAPERED_KNITTING_NEEDLES tapered knitting needle
match FLAT_METAL_YARDSTICK flat metal yardstick
match CURVED_METAL_SCISSORS curved metal scissors
match RIBBED_SEWING_NEEDLES ribbed sewing needles
match NARROW_METAL_AWL narrow metal awl
match SQUAT_KNITTING_NEEDLES squat knitting needles
match KNOBBY_SEWING_NEEDLES knobby sewing needles
match RECTANGULAR_YARDSTICK rectangular yardstick
match BENT_METAL_SCISSORS bent metal scissors
match SERRATED_HIDE_SCRAPER serrated hide scraper
match COMPACT_METAL_AWL compact metal awl
match POLISHED_KNITTING_NEEDLES polished knitting needle
match SLENDER_METAL_AWL slender metal awl
match DETAILED_YARDSTICK detailed yardstick
match SERRATED_SCISSORS serrated scissors
match THIN_SEWING_NEEDLES thin sewing needles
match FLAT_MIXING_STICK flat mixing stick
match TAPERED_PESTLE tapered pestle
match TAPERED_MIXING_STICK tapered mixing stick
match SQUARE_WIRE_SIEVE square wire sieve
match FLAT_PESTLE flat pestle
match ROUND_MIXING_STICK round mixing stick
match TRIANGULAR_WIRE_SIEVE triangular wire sieve
match ROUND_PESTLE round pestle
match GROOVED_MIXING_STICK grooved mixing stick
match OBLONG_WIRE_SIEVE oblong wire sieve
match GROOVED_PESTLE grooved pestle
match TRAPEZOIDAL_WIRE_SIEVE trapezoidal wire sieve
match SHALLOW_METAL_CUP shallow metal cup
match SLENDER_METAL_ROD slender metal rod
match TALL_METAL_MUG tall metal mug
match SHORT_METAL_MUG short metal mug
match SOFT_METAL_KEYBLANK soft metal keyblank
match METAL_HORSESHOE metal horseshoe
match BACK_SCRATCHER back scratcher
match METAL_BARBELLS metal barbells
match LARGE_METAL_HORSESHOE large metal horseshoe
match SMALL_METAL_FLASK small metal flask
match METAL_ANKLEBAND metal ankle band
match METAL_LOCKPICK_CASE metal lockpick case
match METAL_ORIGAMI_CASE metal origami case
match METAL_BOLT_BOX metal bolt box
match METAL_TALISMAN_CASE metal talisman case
match METAL_FLASK metal flask
match METAL_OIL_LANTERN metal oil lantern
match METAL_LOCKPICK_RING metal lockpick ring
match METAL_HERBAL_CASE metal herbal case
match METAL_JEWELRY_BOX metal jewelry box
match METAL_FLIGHT_BOX metal flights box
match METAL_RAZOR metal razor
match LARGE_METAL_FLASK large metal flask
match METAL_ARMBAND metal armband
match METAL_INSTRUMENT_CASE metal instrument case
match METAL_CHEST metal chest
match METAL_BACKTUBE metal backtube
match METAL_STARCHART metal starchart tube
match METAL_CLIPPERS metal clippers
match METAL_CROWN metal crown
match METAL_TORQUE metal torque
match METAL_MASK metal mask
match METAL_HEADDRESS metal headdress
put read forg logbook
matchwait

DIAGONALPEEN_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a diagonal-peen mallet"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|shovel|tongs|pickaxe|(ball-peen|straight-peen) mallet/
put turn my book to page 1
matchwait

CURVED_METAL_SHOVEL:
SETVARIABLE product shovel
SETVARIABLE mat ingot
SAVE "a curved metal shovel"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|pickaxe|(square metal|tapered metal|wide metal|sturdy metal) shovel/
put turn my book to page 1
matchwait

DIAGONALPEEN_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a diagonal-peen hammer"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /mallet|shovel|tongs|pickaxe|(cross-peen|ball-peen|straight-peen) hammer/
put turn my book to page 1
matchwait

STOUT_METAL_PICKAXE:
SETVARIABLE product pickaxe
SETVARIABLE mat ingot
SAVE "a stout metal pickaxe"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|shovel|(narrow metal|slender metal|flat-headed metal|weighted metal) pickaxe/
put turn my book to page 1
matchwait

STRAIGHT_METAL_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some straight metal tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|shovel|pickaxe|(curved metal|flat-bladed|angular metal|bolt|segmented|box-jaw|articulated) tongs/
put turn my book to page 1
matchwait

CROSSPEEN_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a metal cross-peen hammer"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /mallet|tongs|pickaxe|(ball-peen|diagonal-peen|straight-peen) hammer/
put turn my book to page 1
matchwait

NARROW_METAL_PICKAXE:
SETVARIABLE product pickaxe
SETVARIABLE mat ingot
SAVE "a narrow metal pickaxe"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|shovel|(stout metal|slender metal|flat-headed|weighted metal) pickaxe/
put turn my book to page 1
matchwait

SQUARE_METAL_SHOVEL:
SETVARIABLE product shovel
SETVARIABLE mat ingot
SAVE "a square metal shovel"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|pickaxe|(curved metal|tapered metal|sturdy metal|wide metal) shovel/
put turn my book to page 1
matchwait

CURVED_METAL_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some curved metal tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(flat-bladed|straight metal|angular metal|bolt|segmented|box-jaw|articulated) tongs/
put turn my book to page 1
matchwait

FLATBLADED_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some flat-bladed tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(straight metal|curved metal|angular metal|bolt|segmented|box-jaw|articulated) tongs/
put turn my book to page 1
matchwait

TAPERED_METAL_SHOVEL:
SETVARIABLE product shovel
SETVARIABLE mat ingot
SAVE "a tapered metal shovel"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|pickaxe|(curved metal|square metal|sturdy metal|wide metal) shovel/
put turn my book to page 1
matchwait

ANGULAR_METAL_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some angular metal tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(flat-bladed|straight metal|curved metal|bolt|segmented|box-jaw|articulated) tongs/
put turn my book to page 1
matchwait

STRAIGHTPEEN_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a straight-peen hammer"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /mallet|tongs|shovel(diagonal-peen|cross-peen|ball-peen) hammer/
put turn my book to page 1
matchwait

STRAIGHTPEEN_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a straight-peen mallet"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|shovel|tongs|pickaxe|(ball-peen|diagonal-peen) mallet/
put turn my book to page 1
matchwait

SLENDER_METAL_PICKAXE:
SETVARIABLE product pickaxe
SETVARIABLE mat ingot
SAVE "a slender metal pickaxe"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|shovel|(stout metal|narrow metal|flat-headed metal|weighted metal) pickaxe/
put turn my book to page 1
matchwait

METAL_BOLT_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some metal bolt tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(flat-bladed|straight metal|curved metal|angular metal|segmented|box-jaw|articulated) tongs/
put turn my book to page 1
matchwait

FLATHEADED_METAL_PICKAXE:
SETVARIABLE product pickaxe
SETVARIABLE mat ingot
SAVE "a flat-headed metal pickaxe"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|shovel|(stout metal|narrow metal|slender metal|weighted metal) pickaxe/
put turn my book to page 1
matchwait

STURDY_METAL_SHOVEL:
SETVARIABLE product shovel
SETVARIABLE mat ingot
SAVE "a sturdy metal shovel"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|pickaxe|(curved metal|square metal|tapered metal|wide metal) shovel/
put turn my book to page 1
matchwait

BALLPEEN_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a ball-peen hammer"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /mallet|tongs|shovel(diagonal-peen|cross-peen|straight-peen) hammer/
put turn my book to page 1
matchwait

WIDE_METAL_SHOVEL:
SETVARIABLE product shovel
SETVARIABLE mat ingot
SAVE "a wide metal shovel"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|pickaxe|(curved metal|square metal|tapered metal|sturdy metal) shovel/
put turn my book to page 1
matchwait

SEGMENTED_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some segmented tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(flat-bladed|straight metal|curved metal|angular metal|bolt|box-jaw|articulated) tongs/
put turn my book to page 1
matchwait

WEIGHTED_METAL_PICKAXE:
SETVARIABLE product pickaxe
SETVARIABLE mat ingot
SAVE "a flat-headed metal pickaxe"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|tongs|shovel|(stout metal|narrow metal|slender metal|flat-headed metal) pickaxe/
put turn my book to page 1
matchwait

BOXJAW_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some box-jaw tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(flat-bladed|straight metal|curved metal|angular metal|bolt|segmented|articulated) tongs/
put turn my book to page 1
matchwait

ARTICULATED_TONGS:
SETVARIABLE product tongs
SETVARIABLE mat ingot
SAVE "some articulated tongs"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|mallet|pickaxe|shovel|(flat-bladed|straight metal|curved metal|angular metal|bolt|box-jaw|segmented) tongs/
put turn my book to page 1
matchwait

BALLPEEN_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a ball-peen mallet"
put stow logb
put get my %book
put turn my book to chapter 2
match BLACK_START %s
matchre BLACK_CHAPT2 /hammer|shovel|tongs|pickaxe|(straight-peen|diagonal-peen) mallet/
put turn my book to page 1
matchwait

SHORT_METAL_CHISEL:
SETVARIABLE product chisels
SETVARIABLE mat ingot
SAVE "some short metal chisels"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|rifflers|pliers|(long metal|sturdy metal|reinforced|sharpened) chisels/
put turn my book to page 1
matchwait

METAL_STRAIGHT_BONESAW:
SETVARIABLE product saw
SETVARIABLE mat ingot
SAVE "a metal straight bone saw"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /pliers|rifflers|chisels|rasp|(serrated|curved|slender|tapered) bone saw/
put turn my book to page 1
matchwait

THIN_METAL_RASP:
SETVARIABLE product rasp
SETVARIABLE mat ingot
SAVE "a thin metal rasp"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|pliers|(coarse metal|textured metal|flat metal|tapered metal) rasp/
put turn my book to page 1
matchwait

SQUARE_METAL_RIFFLER:
SETVARIABLE product rifflers
SETVARIABLE mat ingot
SAVE "some square metal rifflers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|chisels|pliers|(squat metal|curved metal|elongated) rifflers/
put turn my book to page 1
matchwait

LONG_METAL_CHISEL:
SETVARIABLE product chisels
SETVARIABLE mat ingot
SAVE "some long metal chisels"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|rifflers|pliers|(short metal|sturdy metal|reinforced|sharpened) chisels/
put turn my book to page 1
matchwait

PLAIN_METAL_PLIER:
SETVARIABLE product pliers
SETVARIABLE mat ingot
SAVE "some plain metal pliers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|rasp|(curved metal|rough metal|thick metal|hooked metal) pliers/
put turn my book to page 1
matchwait

SQUAT_METAL_RIFFLER:
SETVARIABLE product rifflers
SETVARIABLE mat ingot
SAVE "some squat metal rifflers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|chisels|pliers|(square metal|curved metal|elongated) rifflers/
put turn my book to page 1
matchwait

METAL_CURVED_BONESAW:
SETVARIABLE product saw
SETVARIABLE mat ingot
SAVE "a metal curved bone saw"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /pliers|rifflers|chisels|rasp|(straight|serrated|slender|tapered) bone saw/
put turn my book to page 1
matchwait

CURVED_METAL_PLIER:
SETVARIABLE product pliers
SETVARIABLE mat ingot
SAVE "some curved metal pliers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|rasp|(plain metal|rough metal|thick metal|hooked metal) pliers/
put turn my book to page 1
matchwait

COARSE_METAL_RASP:
SETVARIABLE product rasp
SETVARIABLE mat ingot
SAVE "a coarse metal rasp"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|pliers|(thin metal|textured metal|flat metal|tapered metal) rasp/
put turn my book to page 1
matchwait

STURDY_METAL_CHISEL:
SETVARIABLE product chisels
SETVARIABLE mat ingot
SAVE "some short metal chisels"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|rifflers|pliers|(long metal|short metal|reinforced|sharpened) chisels/
put turn my book to page 1
matchwait

CURVED_METAL_RIFFLER:
SETVARIABLE product rifflers
SETVARIABLE mat ingot
SAVE "some curved metal rifflers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|chisels|pliers|(squat metal|square metal|elongated) rifflers/
put turn my book to page 1
matchwait

REINFORCED_CHISEL:
SETVARIABLE product chisels
SETVARIABLE mat ingot
SAVE "some reinforced chisels"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|rifflers|pliers|(long metal|sturdy metal|short metal|sharpened) chisels/
put turn my book to page 1
matchwait

METAL_SLENDER_BONESAW:
SETVARIABLE product saw
SETVARIABLE mat ingot
SAVE "a metal slender bone saw"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /pliers|rifflers|chisels|rasp|(straight|curved|serrated|tapered) bone saw/
put turn my book to page 1
matchwait

ROUGH_METAL_PLIER:
SETVARIABLE product pliers
SETVARIABLE mat ingot
SAVE "some rough metal pliers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|rasp|(curved metal|plain metal|thick metal|hooked metal) pliers/
put turn my book to page 1
matchwait

TEXTURED_METAL_RASP:
SETVARIABLE product rasp
SETVARIABLE mat ingot
SAVE "a textured metal rasp"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|pliers|(coarse metal|thin metal|flat metal|tapered metal) rasp/
put turn my book to page 1
matchwait

THICK_METAL_PLIER:
SETVARIABLE product pliers
SETVARIABLE mat ingot
SAVE "some thick metal pliers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|rasp|(curved metal|rough metal|plain metal|hooked metal) pliers/
put turn my book to page 1
matchwait

FLAT_METAL_RASP:
SETVARIABLE product rasp
SETVARIABLE mat ingot
SAVE "a flat metal rasp"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|pliers|(coarse metal|textured metal|thin metal|tapered metal) rasp/
put turn my book to page 1
matchwait

ELONGATED_RIFFLER:
SETVARIABLE product rifflers
SETVARIABLE mat ingot
SAVE "some elongated rifflers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|chisels|pliers|(squat metal|curved metal|square metal) rifflers/
put turn my book to page 1
matchwait

SHARPENED_CHISEL:
SETVARIABLE product chisels
SETVARIABLE mat ingot
SAVE "some sharpened chisels"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rasp|rifflers|pliers|(long metal|sturdy metal|reinforced|short metal) chisels/
put turn my book to page 1
matchwait

METAL_TAPERED_BONESAW:
SETVARIABLE product saw
SETVARIABLE mat ingot
SAVE "a metal tapered bone saw"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /pliers|rifflers|chisels|rasp|(straight|curved|slender|serrated) bone saw/
put turn my book to page 1
matchwait

HOOKED_METAL_PLIER:
SETVARIABLE product pliers
SETVARIABLE mat ingot
SAVE "some hooked metal pliers"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|rasp|(curved metal|rough metal|thick metal|plain metal) pliers/
put turn my book to page 1
matchwait

TAPERED_METAL_RASP:
SETVARIABLE product rasp
SETVARIABLE mat ingot
SAVE "a thin metal rasp"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /bone saw|rifflers|chisels|pliers|(coarse metal|textured metal|flat metal|thin metal) rasp/
put turn my book to page 1
matchwait

METAL_SERRATED_BONESAW:
SETVARIABLE product saw
SETVARIABLE mat ingot
SAVE "a metal serrated bone saw"
put stow logb
put get my %book
put turn my book to chapter 3
match BLACK_START %s
matchre BLACK_CHAPT3 /pliers|rifflers|chisels|rasp|(straight|curved|slender|tapered) bone saw/
put turn my book to page 1
matchwait

STOUT_METAL_YARDSTICK:
SETVARIABLE product yardstick
SETVARIABLE mat ingot
SAVE "a stout metal yardstick"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|knitting needles|sewing needles|awl|scissors|(flat metal|rectangular|detailed) yardstick/
put turn my book to page 1
matchwait

SMOOTH_KNITTING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some smooth knitting needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|sewing needles|awl|scissors|(tapered|squat) knitting needles/
put turn my book to page 1
matchwait

METAL_HIDE_SCRAPER:
SETVARIABLE product scraper
SETVARIABLE mat ingot
SAVE "a metal hide scraper"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /yardstick|knitting needles|sewing needles|awl|scissors|(curved hide|serrated hide) scraper/
put turn my book to page 1
matchwait

STRAIGHT_METAL_SCISSORS:
SETVARIABLE product scissors
SETVARIABLE mat ingot
SAVE "some straight metal scissors"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|awl|(curved metal|bent metal|serrated metal) scissors/
put turn my book to page 1
matchwait

PLAIN_SEWING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some plain sewing needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|awl|scissors|(ribbed|knobby|thin) sewing needles/
put turn my book to page 1
matchwait

CURVED_METAL_SCISSORS:
SETVARIABLE product scissors
SETVARIABLE mat ingot
SAVE "some curved metal scissors"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|awl|(straight metal|bent metal|serrated metal) scissors/
put turn my book to page 1
matchwait

FLAT_METAL_YARDSTICK:
SETVARIABLE product yardstick
SETVARIABLE mat ingot
SAVE "a flat metal yardstick"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|knitting needles|sewing needles|awl|scissors|(stout metal|rectangular|detailed) yardstick/
put turn my book to page 1
matchwait

TAPERED_KNITTING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some tapered knitting needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|sewing needles|awl|scissors|(smooth|squat|polished) knitting needles/
put turn my book to page 1
matchwait

POINTED_METAL_AWL:
SETVARIABLE product awl
SETVARIABLE mat ingot
SAVE "a pointed metal awl"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|scissors|(compact metal|narrow metal|slender metal) awl/
put turn my book to page 1
matchwait

CURVED_HIDE_SCRAPER:
SETVARIABLE product scraper
SETVARIABLE mat ingot
SAVE "a curved hide scraper"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /yardstick|knitting needles|sewing needles|awl|scissors|(metal hide|serrated hide) scraper/
put turn my book to page 1
matchwait

RIBBED_SEWING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some ribbed sewing needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|awl|scissors|(plain|knobby|thin) sewing needles/
put turn my book to page 1
matchwait

BENT_METAL_SCISSORS:
SETVARIABLE product scissors
SETVARIABLE mat ingot
SAVE "some bent metal scissors"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|awl|(curved metal|straight metal|serrated metal) scissors/
put turn my book to page 1
matchwait

RECTANGULAR_YARDSTICK:
SETVARIABLE product yardstick
SETVARIABLE mat ingot
SAVE "a rectangular yardstick"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|knitting needles|sewing needles|awl|scissors|(flat metal|stout metal|detailed) yardstick/
put turn my book to page 1
matchwait

KNOBBY_SEWING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some knobby sewing needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|awl|scissors|(ribbed|plain|thin) sewing needles/
put turn my book to page 1
matchwait

SQUAT_KNITTING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some squat knitting needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|sewing needles|awl|scissors|(tapered|smooth|polished) knitting needles/
put turn my book to page 1
matchwait

NARROW_METAL_AWL:
SETVARIABLE product awl
SETVARIABLE mat ingot
SAVE "a narrow metal awl"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|scissors|(pointed metal|compact metal|slender metal) awl/
put turn my book to page 1
matchwait

POLISHED_KNITTING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some polished knitting needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|sewing needles|awl|scissors|(tapered|smooth|squat) knitting needles/
put turn my book to page 1
matchwait

COMPACT_METAL_AWL:
SETVARIABLE product awl
SETVARIABLE mat ingot
SAVE "a compact metal awl"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|scissors|(pointed metal|narrow metal|slender metal) awl/
put turn my book to page 1
matchwait

SERRATED_HIDE_SCRAPER:
SETVARIABLE product scraper
SETVARIABLE mat ingot
SAVE "a serrated hide scraper"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /yardstick|knitting needles|sewing needles|awl|scissors|(curved hide|metal hide) scraper/
put turn my book to page 1
matchwait

SERRATED_SCISSORS:
SETVARIABLE product scissors
SETVARIABLE mat ingot
SAVE "some serrated metal scissors"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|awl|(curved metal|bent metal|straight metal) scissors/
put turn my book to page 1
matchwait

DETAILED_YARDSTICK:
SETVARIABLE product yardstick
SETVARIABLE mat ingot
SAVE "a detailed yardstick"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|knitting needles|sewing needles|awl|scissors|(flat metal|rectangular|stout metal) yardstick/
put turn my book to page 1
matchwait

SLENDER_METAL_AWL:
SETVARIABLE product awl
SETVARIABLE mat ingot
SAVE "a slender metal awl"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|sewing needles|scissors|(pointed|narrow|compact) awl/
put turn my book to page 1
matchwait

THIN_SEWING_NEEDLES:
SETVARIABLE product needles
SETVARIABLE mat ingot
SAVE "some thin sewing needles"
put stow logb
put get my %book
put turn my book to chapter 4
match BLACK_START %s
matchre BLACK_CHAPT4 /scraper|yardstick|knitting needles|awl|scissors|(ribbed|knobby|plain) sewing needles/
put turn my book to page 1
matchwait

TAPERED_PESTLE:
SETVARIABLE product pestle
SETVARIABLE mat ingot
SAVE "a tapered pestle"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|sieve|(flat|round|grooved) pestle/
put turn my book to page 1
matchwait

FLAT_MIXING_STICK:
SETVARIABLE product stick
SETVARIABLE mat ingot
SAVE "a flat mixing stick"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /pestle|sieve|(tapered mixing|round mixing|grooved mixing) stick/
put turn my book to page 1
matchwait

SQUARE_WIRE_SIEVE:
SETVARIABLE product sieve
SETVARIABLE mat ingot
SAVE "a square wire sieve"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|pestle|(triangular wire|oblong wire|trapezoidal wire) sieve/
put turn my book to page 1
matchwait

TAPERED_MIXING_STICK:
SETVARIABLE product stick
SETVARIABLE mat ingot
SAVE "a tapered mixing stick"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /pestle|sieve|(flat mixing|round mixing|grooved mixing) stick/
put turn my book to page 1
matchwait

FLAT_PESTLE:
SETVARIABLE product pestle
SETVARIABLE mat ingot
SAVE "a flat pestle"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|sieve|(tapered|round|grooved) pestle/
put turn my book to page 1
matchwait

TRIANGULAR_WIRE_SIEVE:
SETVARIABLE product sieve
SETVARIABLE mat ingot
SAVE "a triangular wire sieve"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|pestle|(square wire|oblong wire|trapezoidal wire) sieve/
put turn my book to page 1
matchwait

ROUND_MIXING_STICK:
SETVARIABLE product stick
SETVARIABLE mat ingot
SAVE "a round mixing stick"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /pestle|sieve|(tapered mixing|grooved mixing|flat mixing) stick/
put turn my book to page 1
matchwait

ROUND_PESTLE:
SETVARIABLE product pestle
SETVARIABLE mat ingot
SAVE "a round pestle"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|sieve|(flat|tapered|grooved) pestle/
put turn my book to page 1
matchwait

GROOVED_PESTLE:
SETVARIABLE product pestle
SETVARIABLE mat ingot
SAVE "a grooved pestle"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|sieve|(flat|round|tapered) pestle/
put turn my book to page 1
matchwait

OBLONG_WIRE_SIEVE:
SETVARIABLE product sieve
SETVARIABLE mat ingot
SAVE "an oblong wire sieve"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|pestle|(triangular wire|square wire|trapezoidal wire) sieve/
put turn my book to page 1
matchwait

GROOVED_MIXING_STICK:
SETVARIABLE product stick
SETVARIABLE mat ingot
SAVE "a grooved mixing stick"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /pestle|sieve|(tapered mixing|round mixing|flat mixing) stick/
put turn my book to page 1
matchwait

TRAPEZOIDAL_WIRE_SIEVE:
SETVARIABLE product sieve
SETVARIABLE mat ingot
SAVE "a trapezoidal wire sieve"
put stow logb
put get my %book
put turn my book to chapter 5
match BLACK_START %s
matchre BLACK_CHAPT5 /stick|pestle|(triangular wire|oblong wire|square wire) sieve/
put turn my book to page 1
matchwait

SLENDER_METAL_ROD:
SETVARIABLE product rod
SETVARIABLE mat ingot
SAVE "a slender metal rod"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /cup|horseshoe|keyblank|mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

SHALLOW_METAL_CUP:
SETVARIABLE product cup
SETVARIABLE mat ingot
SAVE "a shallow metal cup"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|horseshoe|keyblank|mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_HORSESHOE:
SETVARIABLE product horseshoe
SETVARIABLE mat ingot
SAVE "a metal horseshoe"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|large metal horseshoe|keyblank|mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

SOFT_METAL_KEYBLANK:
SETVARIABLE product keyblank
SETVARIABLE mat ingot
SAVE "a soft metal keyblank"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

SHORT_METAL_MUG:
SETVARIABLE product mug
SETVARIABLE mat ingot
SAVE "a short metal mug"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

TALL_METAL_MUG:
SETVARIABLE product mug
SETVARIABLE mat ingot
SAVE "a tall metal mug"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|short metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

LARGE_METAL_HORSESHOE:
SETVARIABLE product horseshoe
SETVARIABLE mat ingot
SAVE "a large metal horseshoe"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_BARBELLS:
SETVARIABLE product barbells
SETVARIABLE mat ingot
SAVE "some metal barbells"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

BACK_SCRATCHER:
SETVARIABLE product scratcher
SETVARIABLE mat ingot
SAVE "a back scratcher"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_BOLT_BOX:
SETVARIABLE product box
SETVARIABLE mat ingot
SAVE "a metal bolt box"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|flights box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_ORIGAMI_CASE:
SETVARIABLE product case
SETVARIABLE mat ingot
SAVE "a metal origami case"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_LOCKPICK_CASE:
SETVARIABLE product case
SETVARIABLE mat ingot
SAVE "a metal lockpick case"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_ANKLEBAND:
SETVARIABLE product band
SETVARIABLE mat ingot
SAVE "a metal ankle band"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

SMALL_METAL_FLASK:
SETVARIABLE product flask
SETVARIABLE mat ingot
SAVE "a small metal flask"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|large metal flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_TALISMAN_CASE:
SETVARIABLE product case
SETVARIABLE mat ingot
SAVE "a metal talisman case"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_RAZOR:
SETVARIABLE product razor
SETVARIABLE mat ingot
SAVE "a metal razor"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_FLIGHT_BOX:
SETVARIABLE product box
SETVARIABLE mat ingot
SAVE "a metal bolt box"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|(jewelry|bolt) box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_JEWELRY_BOX:
SETVARIABLE product box
SETVARIABLE mat ingot
SAVE "a metal jewelry box"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|(bolt|flights) box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|herbal|instrument) case/
put turn my book to page 1
matchwait

METAL_HERBAL_CASE:
SETVARIABLE product case
SETVARIABLE mat ingot
SAVE "a metal herbal case"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|talisman|instrument) case/
put turn my book to page 1
matchwait

METAL_LOCKPICK_RING:
SETVARIABLE product ring
SETVARIABLE mat ingot
SAVE "a metal lockpick ring"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_OIL_LANTERN:
SETVARIABLE product lantern
SETVARIABLE mat ingot
SAVE "a metal oil lantern"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_FLASK:
SETVARIABLE product flask
SETVARIABLE mat ingot
SAVE "a metal flask"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|small metal flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_CHEST:
SETVARIABLE product chest
SETVARIABLE mat ingot
SAVE "a metal chest"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_INSTRUMENT_CASE:
SETVARIABLE product case
SETVARIABLE mat ingot
SAVE "a metal instrument case"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|talisman) case/
put turn my book to page 1
matchwait

METAL_ARMBAND:
SETVARIABLE product armband
SETVARIABLE mat ingot
SAVE "a metal armband"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

LARGE_METAL_FLASK:
SETVARIABLE product flask
SETVARIABLE mat ingot
SAVE "a large metal flask"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|(small metal|a metal) flask|razor|ring|chest|clippers|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_CLIPPERS:
SETVARIABLE product clippers
SETVARIABLE mat ingot
SAVE "some metal clippers"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|tube|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_STARCHART:
SETVARIABLE product tube
SETVARIABLE mat ingot
SAVE "a metal starchart tube"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|backtube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_BACKTUBE:
SETVARIABLE product backtube
SETVARIABLE mat ingot
SAVE "a metal backtube"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|starchart tube|crown|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_CROWN:
SETVARIABLE product crown
SETVARIABLE mat ingot
SAVE "a metal crown"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|starchart tube|backtube|headdress|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_MASK:
SETVARIABLE product mask
SETVARIABLE mat ingot
SAVE "a metal mask"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|starchart tube|backtube|crown|headdress|torque|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_TORQUE:
SETVARIABLE product torque
SETVARIABLE mat ingot
SAVE "a metal torque"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|starchart tube|backtube|crown|headdress|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

METAL_HEADDRESS:
SETVARIABLE product headdress
SETVARIABLE mat ingot
SAVE "a metal headdress"
put stow logb
put get my %book
put turn my book to chapter 6
match BLACK_START %s
matchre BLACK_CHAPT6 /metal rod|cup|horseshoe|keyblank|large metal mug|barbells|back scratcher|box|ankle band|armband|flask|razor|ring|chest|clippers|tube|backtube|crown|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn my book to page 1
matchwait

BLACK_CHAPT2:
pause .5
counter add 1
match BLACK_START %s
match ERROR1 This chapter does not have
matchre BLACK_CHAPT2 /(cross-peen|ball-peen|straight-peen|diagonal-peen) hammer|(ball-peen|straight-peen|diagonal-peen) mallet|(square metal|tapered metal|wide metal|sturdy metal|curved metal) shovel|(stout metal|narrow metal|slender metal|flat-headed metal|weighted metal) pickaxe|(straight metal|curved metal|flat-bladed|angular metal|bolt|segmented|box-jaw|articulated) tongs/
put turn book to page %c
matchwait

BLACK_CHAPT3:
pause .5
counter add 1
match BLACK_START %s
match ERROR1 This chapter does not have
matchre BLACK_CHAPT3 /(short metal|long metal|sturdy metal|reinforced) chisels|(straight|curved|slender|tapered|serrated) bone saw|(thin metal|coarse metal|textured metal|flat metal|tapered) rasp|(square metal|squat metal|curved metal|elongated) rifflers|(plain metal|curved metal|rough metal|thick metal|hooked metal) pliers/
put turn book to page %c
matchwait

BLACK_CHAPT4:
pause .5
counter add 1
match BLACK_START %s
match ERROR1 This chapter does not have
matchre BLACK_CHAPT4 /(stout metal|flat metal|rectangular|detailed) yardstick|(smooth|tapered|squat|polished) knitting needles|(straight metal|curved metal|bent metal|serrated) scissors|(metal hide|curved hide|serrated hide) scraper|(plain|ribbed|knobby|thin) sewing needles|(pointed metal|narrow metal|compact metal|slender metal) awl/
put turn book to page %c
matchwait

BLACK_CHAPT5:
pause .5
counter add 1
match BLACK_START %s
match ERROR1 This chapter does not have
matchre BLACK_CHAPT5 /(tapered|flat|round|grooved) pestle|(flat mixing|tapered mixing|round mixing|grooved mixing) stick|(square wire|triangular wire|oblong wire|trapezoidal wire) sieve/
put turn book to page %c
matchwait

BLACK_CHAPT6:
pause .5
counter add 1
match BLACK_START %s
match ERROR1 This chapter does not have
matchre BLACK_CHAPT6 /rod|cup|(a metal|a large metal) horseshoe|keyblank|(tall metal|short metal) mug|barbells|back scratcher|(flights|jewelry|bolt) box|ankle band|armband|(a metal|large metal) flask|razor|ring|chest|clippers|starchart tube|backtube|crown|torque|mask|(origami|lockpick|herbal|instrument|talisman) case/
put turn book to page %c
matchwait

BLACK_START:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my tongs
matchre ERROR2 /I could not find|What were you/
match BLACK_FIRSTPOUND You get
put get my %mat
matchwait

BLACK_FIRSTPOUND:
pause 1
put put my %mat on anvil
put get my ball hammer
pause 2
put pound %mat on anvil with my hammer
waitfor Roundtime
pause 2
put stow tongs
put stow ingot
pause 1
match ERROR4 You need a larger volume of metal to continue crafting
match BLACK_SHOVEL PUSH FUEL with a SHOVEL to build it back up
match BLACK_BELLOWS PUSH a BELLOWs to stoke the fire back up
match BLACK_TONGS TURN it with the tongs to fix this problem
match BLACK_POUND appears ready for more pounding with a forging hammer
match BLACK_POUND that would obstruct pounding of the metal
match BLACK_POUND looks ready to be pounded with a forging hammer
put analyze %product
matchwait

BLACK_POUND:
pause 1
put get my tongs
match BLACK_POUND Roundtime
match BLACK_SHOVEL fire dies down and needs more fuel
match BLACK_BELLOWS unable to consume its fuel
match BLACK_TONGS straightening along the horn of the anvil
match BLACK_TONGS would benefit from some soft reworking
match BLACK_TUB appears ready for cooling in the slack tub
match BLACK_TUB That tool does not seem suitable
put pound %product on anvil with my hammer
matchwait

BLACK_SHOVEL:
pause 1
put stow tongs
put get my wide shovel
put push fuel with my shovel
waitfor roundtime
pause 1
put stow my shovel
put get my tongs
goto BLACK_POUND

BLACK_BELLOWS:
pause 1
put stow tongs
put get my bellows
put push bellows
waitfor roundtime
pause 1
put stow bellows
put get my tongs
goto BLACK_POUND

BLACK_TONGS:
pause 1
put turn %product with my tongs
waitfor roundtime
pause 1
goto BLACK_POUND

BLACK_TUB:
pause 1
put stow tongs
put stow left
put push tub
waitfor roundtime
pause 2
put get %product on anvil
goto BLACK_OIL

BLACK_OIL:
put get my oil
match BLACK_STAMP1 Roundtime
match BLACK_SHORT_CORDa short leather cord
match BLACK_LONG_CORDa long leather cord
match BLACK_SHORT_POLEa short wooden pole
match BLACK_LONG_POLEa long wooden pole
put pour oil on my %product
matchwait

BLACK_SHORT_CORDa:
pause 1
put stow oil
match BLACK_SHORT_CORD you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my short cord
matchwait

BLACK_SHORT_CORD:
pause 1
put assemble my cord with my %product
pause 1
goto BLACK_OIL

BLACK_LONG_CORDa:
pause 1
put stow oil
match BLACK_LONG_CORD you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my long cord
matchwait

BLACK_LONG_CORD:
pause 1
put assemble my cord with my %product
pause 1
goto BLACK_OIL

BLACK_SHORT_POLEa:
pause 1
put stow oil
match BLACK_SHORT_POLE you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my short pole
matchwait

BLACK_SHORT_POLE:
pause 1
put assemble my pole with my %product
pause 1
goto BLACK_OIL

BLACK_LONG_POLEa:
pause 1
put stow oil
match BLACK_LONG_POLE you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my long pole
matchwait

BLACK_LONG_POLE:
pause 1
put assemble my pole with my %product
pause 1
goto BLACK_OIL

BLACK_STAMP1:
pause 1
put stow oil
match BLACK_STAMP2 You tap
match BLACK_FINISH I could not find
put tap my stamp
matchwait

BLACK_STAMP2:
pause 1
put get my stamp
match BLACK_FINISH Roundtime
match ERROR3 too damaged
put mark my %product with my stamp
matchwait

BLACK_FINISH:
put stow right
put stow left
echo ******************************
echo ***
echo ***  You have finished another %product 
echo ***
echo ******************************
goto BLACK_START

WEAPONSMITH:
SETVARIABLE book weapon book
match NOWORK work order that has expired
match NOWORK is not currently tracking
match METAL_BRIQUET a metal briquet
match METAL_CARVING_KNIFE a metal carving knife
match METAL_DAGGER a metal dagger
match METAL_MISERICORDE a metal misericorde
match METAL_KATAR a metal katar
match METAL_SHORT_SWORD a metal short sword
match METAL_PUGIO a metal pugio
match METAL_POIGNARD a metal poignard
match METAL_STILETTO a metal stiletto
match METAL_DART a metal dart
match METAL_THROWING_DAGGER a metal throwing dagger
match METAL_FALCATA a metal falcata
match METAL_NEHLATA a metal nehlata
match METAL_TELEK a metal telek
match METAL_LEAFBLADE_SWORD a metal leaf blade sword
match METAL_JAMBIYA a metal jambiya
match METAL_TAKOUBA a metal takouba
match METAL_KRIS a metal kris
match METAL_THRUSTING_BLADE a metal thrusting blade
match METAL_PASABAS a metal pasabas
match METAL_RAPIER a metal rapier
match METAL_KOUMMYA a metal koummya
match METAL_OBEN a metal oben	
match METAL_KYTHE a metal kythe
match METAL_DAO a metal dao
match METAL_KASAI a metal kasai
match METAL_SUNBLADE a metal sunblade
match METAL_FOIL a metal foil
match METAL_BASELARD a metal baselard
match METAL_GLADIUS a metal gladius
match METAL_MAMBELI a metal mambeli
match METAL_SASHQA a metal sashqa
match METAL_ADZE a metal adze
match METAL_CURLADE a metal curlade
match METAL_PARANG a metal parang
match METAL_HANGER a metal hanger
match METAL_SABRE a metal sabre
match METAL_SCIMITAR a metal scimitar
match METAL_SHOTEL a metal shotel
match METAL_CUTLASS a metal cutlass
match METAL_HATCHET a metal hatchet
match METAL_HANDAXE a metal hand axe
match LIGHT_THROWING_AXE a light throwing axe
match METAL_CONDOTTIERE a metal condottiere
match METAL_NEHDALATA a metal nehdalata
match METAL_ROUND_AXE a metal round axe
match METAL_LONGSWORD a metal longsword
match METAL_SPATHA a metal spatha
match METAL_KUDALATA a metal kudalata
match METAL_ARZFILT a metal arzfilt
match METAL_BROADSWORD a metal broadsword
match METAL_SCHIAVONA a metal schiavona
match METAL_FALCHION a metal falchion
match METAL_ROBE_SWORD a metal robe sword
match METAL_BATTLE_AXE a metal battle axe
match METAL_RECADE a metal recade
match METAL_BACKSWORD a metal back-sword
match METAL_NIMSHA a metal nimsha
match METAL_HUNTING_SWORD a metal hunting sword
match METAL_NAMKOMBA a metal namkomba
match METAL_DAGASSE a metal dagasse
match METAL_ABASSI a metal abassi
match METAL_CINQUEDEA a metal cinquedea
match METAL_HURLING_AXE a metal hurling axe
match METAL_TWINPOINT_AXE a metal twin-point axe
match METAL_KARAMBIT a metal karambit
match METAL_CLAYMORE a metal claymore
match METAL_GREATAXE a metal greataxe
match METAL_MARAUDER_BLADE a metal marauder blade
match METAL_WARRING_AXE a metal warring axe
match METAL_TWOHANDED_SWORD a metal two-handed sword
match METAL_DOUBLE_AXE a metal double axe
match METAL_PERIPERIU_SWORD a metal periperiu sword
match METAL_FLAMBERGE a metal flamberge
match METAL_GREATSWORD a metal greatsword
match METAL_SHH'OI'ATA a metal shh'oi'ata
match METAL_KASKARA a metal kaskara
match METAL_IGORAT_AXE a metal igorat axe
match METAL_GAVEL a metal gavel
match METAL_COSH a metal cosh
match METAL_PROD a metal prod
match METAL_CUDGEL a metal cudgel
match METAL_ZUBKE a metal zubke
match METAL_SCEPTER a metal scepter
match METAL_HAND_MALLET a metal hand mallet
match METAL_BLUDGEON a metal bludgeon
match METAL_GARZ a metal garz
match RIDGED_METAL_GAUNTLET a ridged metal gauntlet
match METAL_HAND_MACE a metal hand mace
match METAL_CLUB a metal club
match SHORT_METAL_HAMMER a short metal hammer
match SPIKED_METAL_GAUNTLET a spiked metal gauntlet
match METAL_BULHAWF a metal bulhawf
match METAL_CUSKA a metal cuska
match METAL_BOLA a metal bola
match METAL_THROWING_CLUB a metal throwing club
match METAL_MALLET a metal mallet
match METAL_WARCLUB a metal war club
match METAL_BOKO a metal boko
match METAL_BOOMERANG a metal boomerang
match METAL_WARHAMMER a metal war hammer
match METAL_BELAYINGPIN a metal belaying pin
match METAL_MACE a metal mace
match METAL_MARLINGSPIKE a metal marlingspike
match SPIKED_METAL_MACE a spiked metal mace
match SPIKED_METAL_HAMMER a spiked metal hammer
match SPIKED_METAL_CLUB a spiked metal club
match METAL_HHR'TAMI a metal hhr'tami
match METAL_KOMNO a metal komno
match METAL_K'TRINNI_SHATAI a metal k'trinni sha-tai
match FLANGED_METAL_MACE a flanged metal mace
match METAL_IMPERIAL_WARHAMMER a metal imperial war hammer
match HEAVY_METAL_MACE a heavy metal mace
match METAL_GREATHAMMER a metal greathammer
match METAL_BALLANDCHAIN a metal ball and chain
match HEAVY_METAL_CHAIN a heavy metal chain
match METAL_HORSEMAN_FLAIL a metal horseman's flail
match METAL_UKABI a metal ukabi
match SPIKED_BALLANDCHAIN a spiked ball and chain
match SPIKED_METAL_HARA a spiked metal hara
match METAL_MORNINGSTAR a metal morning star
match METAL_SLEDGEHAMMER a metal sledgehammer
match HEAVY_METAL_MALLET a heavy metal mallet
match METAL_HARA a metal hara
match DOUBLEHEADED_HAMMER a double-headed hammer
match METAL_HHR'ATA a metal hhr'ata
match HURLABLE_WAR_HAMMER a hurlable war hammer
match METAL_THROWING_MALLET a metal throwing mallet
match METAL_THROWING_HAMMER a metal throwing hammer
match METAL_VILKS_KODUR a metal vilks kodur
match METAL_WAR_MATTOCK a metal war mattock
match DOUBLESIDED_BALLANDCHAIN a double-sided ball and chain
match METAL_AKABO a metal akabo
match METAL_FOOTMAN_FLAIL a metal footman's flail
match METAL_DIRE_MACE a metal dire mace
match HEAVY_SLEDGEHAMMER a heavy sledgehammer
match METAL_MAUL a metal maul
match METAL_TWOHEADED_HAMMER a metal two-headed hammer
match GIANT_METAL_MALLET a giant metal mallet
match LIGHT_METAL_SPEAR a light metal spear
match METAL_JAVELIN a metal javelin
match METAL_SPEAR a metal spear
match METAL_ALLARH a metal allarh
match METAL_HUNTHSLEG a metal hunthsleg
match METAL_AWGRAVET_AVA a metal awgravet ava
match METAL_CORESCA a metal coresca
match METAL_TZECE a metal tzece
match METAL_HALBERD a metal halberd
match METAL_GUISARME a metal guisarme
match METAL_LOCHABER_AXE a metal lochaber axe
match METAL_BARDICHE a metal bardiche
match METAL_SCYTHE a metal scythe
match METAL_DURAKA_SKEFNE a metal duraka skefne
match METAL_MILITARY_FORK a metal military fork
match METAL_PARTISAN a metal partisan
match METAL_KHUJ a metal khuj
match TWOPRONGED_HALBERD a two-pronged halberd
match METAL_GLAIVE a metal glaive
match METAL_NGALIO a metal ngalio
match METAL_FAUCHARD a metal fauchard
match METAL_POLE_AXE a metal pole axe
match METAL_ILGLAIKS_SKEFNE a metal ilglaiks skefne
match METAL_RANSEUR a metal ranseur
match METAL_SPETUM a metal spetum
match METAL_LANCE a metal lance
match METAL_PIKE a metal pike
match METAL_NIGHTSTICK a metal nightstick
match METAL_CANE a metal cane
match METAL_QUARTERSTAFF a metal quarterstaff
match METAL_PIKE_STAFF a metal pike staff
match METAL_KNUCKLES some metal knuckles
match METAL_KNEE_SPIKES some metal knee spikes
match METAL_ELBOW_SPIKES some metal elbow spikes
match SPIKED_METAL_KNUCKLES some spiked metal knuckles
match METAL_HAND_CLAWS some metal hand claws
match METAL_THROWING_SPIKE a metal throwing spike
match METAL_BAR_MACE a metal bar mace
match METAL_BROADAXE a metal broadaxe
match METAL_WARSWORD a metal war sword
match METAL_BASTARD_SWORD a metal bastard sword
match METAL_BOARDING_AXE a metal boarding axe
match METAL_SPLITTING_MAUL a metal splitting maul
match THINBLADED_METAL_FAN a thin-bladed metal fan
match METAL_HALFHANDLED_RISTE a metal half-handled riste
match THICKBLADED_METAL_FAN a thick-bladed metal fan
match METAL_RISTE a metal riste
put read forging logbook
matchwait

METAL_BRIQUET:
SETVARIABLE product briquet
SETVARIABLE mat ingot
SAVE "a metal briquet"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_CARVING_KNIFE:
SETVARIABLE product knife
SETVARIABLE mat ingot
SAVE "a metal carving knife"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_DAGGER:
SETVARIABLE product dagger
SETVARIABLE mat ingot
SAVE "a metal dagger"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_MISERICORDE:
SETVARIABLE product misericorde
SETVARIABLE mat ingot
SAVE "a metal misericorde"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_KATAR:
SETVARIABLE product katar
SETVARIABLE mat ingot
SAVE "a metal katar"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_SHORT_SWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal short sword"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_PUGIO:
SETVARIABLE product pugio
SETVARIABLE mat ingot
SAVE "a metal pugio"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_POIGNARD:
SETVARIABLE product poignard
SETVARIABLE mat ingot
SAVE "a metal poignard"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_STILETTO:
SETVARIABLE product stiletto
SETVARIABLE mat ingot
SAVE "a metal stiletto"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_DART:
SETVARIABLE product dart
SETVARIABLE mat ingot
SAVE "a metal dart"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_THROWING_DAGGER:
SETVARIABLE product dagger
SETVARIABLE mat ingot
SAVE "a metal throwing dagger"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_FALCATA:
SETVARIABLE product falcata
SETVARIABLE mat ingot
SAVE "a metal falcata"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_NEHLATA:
SETVARIABLE product nehlata
SETVARIABLE mat ingot
SAVE "a metal nehlata"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_TELEK:
SETVARIABLE product telek
SETVARIABLE mat ingot
SAVE "a metal telek"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_LEAFBLADE_SWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal leaf blade sword"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_JAMBIYA:
SETVARIABLE product jambiya
SETVARIABLE mat ingot
SAVE "a metal jambiya"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_TAKOUBA:
SETVARIABLE product takouba
SETVARIABLE mat ingot
SAVE "a metal takouba"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_KRIS:
SETVARIABLE product kris
SETVARIABLE mat ingot
SAVE "a metal kris"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_THRUSTING_BLADE:
SETVARIABLE product blade
SETVARIABLE mat ingot
SAVE "a metal thrusting blade"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_PASABAS:
SETVARIABLE product pasabas
SETVARIABLE mat ingot
SAVE "a metal pasabas"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_RAPIER:
SETVARIABLE product rapier
SETVARIABLE mat ingot
SAVE "a metal rapier"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_KOUMMYA:
SETVARIABLE product koummya
SETVARIABLE mat ingot
SAVE "a metal koummya"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_OBEN:	
SETVARIABLE product oben
SETVARIABLE mat ingot
SAVE "a metal oben"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_KYTHE:
SETVARIABLE product kythe
SETVARIABLE mat ingot
SAVE "a metal kythe"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_DAO:
SETVARIABLE product dao
SETVARIABLE mat ingot
SAVE "a metal dao"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_KASAI:
SETVARIABLE product kasai
SETVARIABLE mat ingot
SAVE "a metal kasai"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_SUNBLADE:
SETVARIABLE product sunblade
SETVARIABLE mat ingot
SAVE "a metal sunblade"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_FOIL:
SETVARIABLE product foil
SETVARIABLE mat ingot
SAVE "a metal foil"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_BASELARD:
SETVARIABLE product baselard
SETVARIABLE mat ingot
SAVE "a metal baselard"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_GLADIUS:
SETVARIABLE product gladius
SETVARIABLE mat ingot
SAVE "a metal gladius"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_MAMBELI:
SETVARIABLE product mambeli
SETVARIABLE mat ingot
SAVE "a metal mambeli"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_SASHQA:
SETVARIABLE product sashqa
SETVARIABLE mat ingot
SAVE "a metal sashqa"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_ADZE:
SETVARIABLE product adze
SETVARIABLE mat ingot
SAVE "a metal adze"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_CURLADE:
SETVARIABLE product curlade
SETVARIABLE mat ingot
SAVE "a metal curlade"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_PARANG:
SETVARIABLE product parang
SETVARIABLE mat ingot
SAVE "a metal parang"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_HANGER:
SETVARIABLE product hanger
SETVARIABLE mat ingot
SAVE "a metal hanger"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_SABRE:
SETVARIABLE product sabre
SETVARIABLE mat ingot
SAVE "a metal sabre"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_SCIMITAR:
SETVARIABLE product scimitar
SETVARIABLE mat ingot
SAVE "a metal scimitar"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_SHOTEL:
SETVARIABLE product shotel
SETVARIABLE mat ingot
SAVE "a metal shotel"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_CUTLASS:
SETVARIABLE product cutlass
SETVARIABLE mat ingot
SAVE "a metal cutlass"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_HATCHET:
SETVARIABLE product hatchet
SETVARIABLE mat ingot
SAVE "a metal hatchet"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_HANDAXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal hand axe"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

LIGHT_THROWING_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a light throwing axe"
put stow logb
put get my %book
put turn my book to chapter 1
goto WEAPON_CHAPT1

METAL_CONDOTTIERE:
SETVARIABLE product condottiere
SETVARIABLE mat ingot
SAVE "a metal condottiere"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_NEHDALATA:
SETVARIABLE product nehdalata
SETVARIABLE mat ingot
SAVE "a metal nehdalata"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_ROUND_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal round axe"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_LONGSWORD:
SETVARIABLE product longsword
SETVARIABLE mat ingot
SAVE "a metal longsword"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_SPATHA:
SETVARIABLE product spatha 
SETVARIABLE mat ingot
SAVE "a metal spatha"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_KUDALATA:
SETVARIABLE product kudalata
SETVARIABLE mat ingot
SAVE "a metal kudalata"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_ARZFILT:
SETVARIABLE product arzfilt
SETVARIABLE mat ingot
SAVE "a metal arzfilt"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_BROADSWORD:
SETVARIABLE product broadsword
SETVARIABLE mat ingot
SAVE "a metal broadsword"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_SCHIAVONA:
SETVARIABLE product schiavona
SETVARIABLE mat ingot
SAVE "a metal schiavona"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_FALCHION:
SETVARIABLE product falchion
SETVARIABLE mat ingot
SAVE "a metal falchion"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_ROBE_SWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal robe sword"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_BATTLE_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal battle axe"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_RECADE:
SETVARIABLE product recade
SETVARIABLE mat ingot
SAVE "a metal recade"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_BACKSWORD:
SETVARIABLE product back-sword
SETVARIABLE mat ingot
SAVE "a metal back-sword"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_NIMSHA:
SETVARIABLE product nimsha
SETVARIABLE mat ingot
SAVE "a metal nimsha"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_HUNTING_SWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal hunting sword"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_NAMKOMBA:
SETVARIABLE product namkomba
SETVARIABLE mat ingot
SAVE "a metal namkomba"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_DAGASSE:
SETVARIABLE product dagasse
SETVARIABLE mat ingot
SAVE "a metal dagasse"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_ABASSI:
SETVARIABLE product abassi
SETVARIABLE mat ingot
SAVE "a metal abassi"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_CINQUEDEA:
SETVARIABLE product cinquedea
SETVARIABLE mat ingot
SAVE "a metal cinquedea"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_HURLING_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal hurling axe"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_TWINPOINT_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal twin-point axe"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_KARAMBIT:
SETVARIABLE product karambit
SETVARIABLE mat ingot
SAVE "a metal karambit"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_CLAYMORE:
SETVARIABLE product claymore
SETVARIABLE mat ingot
SAVE "a metal claymore"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_GREATAXE:
SETVARIABLE product greataxe
SETVARIABLE mat ingot
SAVE "a metal greataxe"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_MARAUDER_BLADE:
SETVARIABLE product blade
SETVARIABLE mat ingot
SAVE "a metal marauder blade"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_WARRING_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal warring axe"
put stow logb
put get my %book
put turn my book to chapter 2
goto WEAPON_CHAPT2

METAL_TWOHANDED_SWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal two-handed sword"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_DOUBLE_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal double axe"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_PERIPERIU_SWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal periperiu sword"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_FLAMBERGE:
SETVARIABLE product flamberge
SETVARIABLE mat ingot
SAVE "a metal flamberge"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_GREATSWORD:
SETVARIABLE product greatsword
SETVARIABLE mat ingot
SAVE "a metal greatsword"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_SHH'OI'ATA:
SETVARIABLE product shh'oi'ata
SETVARIABLE mat ingot
SAVE "a metal shh'oi'ata"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_KASKARA:
SETVARIABLE product kaskara
SETVARIABLE mat ingot
SAVE "a metal kaskara"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_IGORAT_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal igorat axe"
put stow logb
put get my %book
put turn my book to chapter 3
goto WEAPON_CHAPT3

METAL_GAVEL:
SETVARIABLE product gavel
SETVARIABLE mat ingot
SAVE "a metal gavel"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_COSH:
SETVARIABLE product cosh
SETVARIABLE mat ingot
SAVE "a metal cosh"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_PROD:
SETVARIABLE product prod
SETVARIABLE mat ingot
SAVE "a metal prod"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_CUDGEL:
SETVARIABLE product cudgel
SETVARIABLE mat ingot
SAVE "a metal cudgel"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_ZUBKE:
SETVARIABLE product zubke
SETVARIABLE mat ingot
SAVE "a metal zubke"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_SCEPTER:
SETVARIABLE product scepter
SETVARIABLE mat ingot
SAVE "a metal scepter"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_HAND_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a metal hand mallet"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_BLUDGEON:
SETVARIABLE product bludgeon
SETVARIABLE mat ingot
SAVE "a metal bludgeon"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_GARZ:
SETVARIABLE product garz
SETVARIABLE mat ingot
SAVE "a metal garz"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

RIDGED_METAL_GAUNTLET:
SETVARIABLE product gauntlet
SETVARIABLE mat ingot
SAVE "a ridged metal gauntlet"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_HAND_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a metal hand mace"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_CLUB:
SETVARIABLE product club
SETVARIABLE mat ingot
SAVE "a metal club"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

SHORT_METAL_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a short metal hammer"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

SPIKED_METAL_GAUNTLET:
SETVARIABLE product gauntlet
SETVARIABLE mat ingot
SAVE "a spiked metal gauntlet"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_BULHAWF:
SETVARIABLE product bulhawf
SETVARIABLE mat ingot
SAVE "a metal bulhawf"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_CUSKA:
SETVARIABLE product cuska
SETVARIABLE mat ingot
SAVE "a metal cuska"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_BOLA:
SETVARIABLE product bola
SETVARIABLE mat ingot
SAVE "a metal bola"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_THROWING_CLUB:
SETVARIABLE product club
SETVARIABLE mat ingot
SAVE "a metal throwing club"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a metal mallet"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_WARCLUB:
SETVARIABLE product club
SETVARIABLE mat ingot
SAVE "a metal war club"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_BOKO:
SETVARIABLE product boko
SETVARIABLE mat ingot
SAVE "a metal boko"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_BOOMERANG:
SETVARIABLE product boomerang
SETVARIABLE mat ingot
SAVE "a metal boomerang"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_WARHAMMER: 
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a metal war hammer"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_BELAYINGPIN:
SETVARIABLE product pin
SETVARIABLE mat ingot
SAVE "a metal belaying pin"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a metal mace"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_MARLINGSPIKE:
SETVARIABLE product marlingspike
SETVARIABLE mat ingot
SAVE "a metal marlingspike"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

SPIKED_METAL_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a spiked metal mace"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

SPIKED_METAL_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a spiked metal hammer"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

SPIKED_METAL_CLUB:
SETVARIABLE product club
SETVARIABLE mat ingot
SAVE "a spiked metal club"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_HHR'TAMI:
SETVARIABLE product hhr'tami
SETVARIABLE mat ingot
SAVE "a metal hhr'tami"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_KOMNO:
SETVARIABLE product komno
SETVARIABLE mat ingot
SAVE "a metal komno"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_K'TRINNI_SHATAI:
SETVARIABLE product k'trinni
SETVARIABLE mat ingot
SAVE "a metal k'trinni sha-tai"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

FLANGED_METAL_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a flanged metal mace"
put stow logb
put get my %book
put turn my book to chapter 4
goto WEAPON_CHAPT4

METAL_IMPERIAL_WARHAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a metal imperial war hammer"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

HEAVY_METAL_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a heavy metal mace"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_GREATHAMMER:
SETVARIABLE product greathammer
SETVARIABLE mat ingot
SAVE "a metal greathammer"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_BALLANDCHAIN:
SETVARIABLE product ball
SETVARIABLE mat ingot
SAVE "a metal ball and chain"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

HEAVY_METAL_CHAIN:
SETVARIABLE product chain 
SETVARIABLE mat ingot
SAVE "a heavy metal chain"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_HORSEMAN_FLAIL:
SETVARIABLE product flail
SETVARIABLE mat ingot
SAVE "a metal horseman's flail"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_UKABI:
SETVARIABLE product ukabi
SETVARIABLE mat ingot
SAVE "a metal ukabi"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

SPIKED_BALLANDCHAIN:
SETVARIABLE product ball
SETVARIABLE mat ingot
SAVE "a spiked ball and chain"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

SPIKED_METAL_HARA:
SETVARIABLE product hara
SETVARIABLE mat ingot
SAVE "a spiked metal hara"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_MORNINGSTAR:
SETVARIABLE product star
SETVARIABLE mat ingot
SAVE "a metal morning star"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_SLEDGEHAMMER:
SETVARIABLE product sledgehammer
SETVARIABLE mat ingot
SAVE "a metal sledgehammer"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

HEAVY_METAL_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a heavy metal mallet"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_HARA:
SETVARIABLE product hara
SETVARIABLE mat ingot
SAVE "a metal hara"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

DOUBLEHEADED_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a double-headed hammer"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_HHR'ATA:
SETVARIABLE product hhr'ata
SETVARIABLE mat ingot
SAVE "a metal hhr'ata"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

HURLABLE_WAR_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a hurlable war hammer"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_THROWING_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a metal throwing mallet"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_THROWING_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a metal throwing hammer"
put stow logb
put get my %book
put turn my book to chapter 5
goto WEAPON_CHAPT5

METAL_VILKS_KODUR:
SETVARIABLE product vilks
SETVARIABLE mat ingot
SAVE "a metal vilks kodur"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

METAL_WAR_MATTOCK:
SETVARIABLE product mattock
SETVARIABLE mat ingot
SAVE "a metal war mattock"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

DOUBLESIDED_BALLANDCHAIN:
SETVARIABLE product ball
SETVARIABLE mat ingot
SAVE "a double-sided ball and chain"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

METAL_AKABO:
SETVARIABLE product akabo
SETVARIABLE mat ingot
SAVE "a metal akabo"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

METAL_FOOTMAN_FLAIL:
SETVARIABLE product flail
SETVARIABLE mat ingot
SAVE "a metal footman's flail"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

METAL_DIRE_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a metal dire mace"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

HEAVY_SLEDGEHAMMER:
SETVARIABLE product sledgehammer
SETVARIABLE mat ingot
SAVE "a heavy sledgehammer"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

METAL_MAUL:
SETVARIABLE product maul
SETVARIABLE mat ingot
SAVE "a metal maul"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

METAL_TWOHEADED_HAMMER:
SETVARIABLE product hammer
SETVARIABLE mat ingot
SAVE "a metal two-headed hammer"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

GIANT_METAL_MALLET:
SETVARIABLE product mallet
SETVARIABLE mat ingot
SAVE "a giant metal mallet"
put stow logb
put get my %book
put turn my book to chapter 6
goto WEAPON_CHAPT6

LIGHT_METAL_SPEAR:
SETVARIABLE product spear
SETVARIABLE mat ingot
SAVE "a light metal spear"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_JAVELIN:
SETVARIABLE product javelin
SETVARIABLE mat ingot
SAVE "a metal javelin"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_SPEAR:
SETVARIABLE product spear
SETVARIABLE mat ingot
SAVE "a metal spear"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_ALLARH:
SETVARIABLE product allarh
SETVARIABLE mat ingot
SAVE "a metal allarh"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_HUNTHSLEG:
SETVARIABLE product hunthsleg
SETVARIABLE mat ingot
SAVE "a metal hunthsleg"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_AWGRAVET_AVA:
SETVARIABLE product awgravet
SETVARIABLE mat ingot
SAVE "a metal awgravet ava"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_CORESCA:
SETVARIABLE product coresca
SETVARIABLE mat ingot
SAVE "a metal coresca"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_TZECE:
SETVARIABLE product tzece
SETVARIABLE mat ingot
SAVE "a metal tzece"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_HALBERD:
SETVARIABLE product halberd
SETVARIABLE mat ingot
SAVE "a metal halberd"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_GUISARME:
SETVARIABLE product guisarme
SETVARIABLE mat ingot
SAVE "a metal guisarme"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_LOCHABER_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal lochaber axe"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_BARDICHE:
SETVARIABLE product bardiche
SETVARIABLE mat ingot
SAVE "a metal bardiche"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_SCYTHE:
SETVARIABLE product scythe
SETVARIABLE mat ingot
SAVE "a metal scythe"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_DURAKA_SKEFNE:
SETVARIABLE product skefne
SETVARIABLE mat ingot
SAVE "a metal duraka skefne"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_MILITARY_FORK:
SETVARIABLE product fork
SETVARIABLE mat ingot
SAVE "a metal military fork"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_PARTISAN:
SETVARIABLE product partisan
SETVARIABLE mat ingot
SAVE "a metal partisan"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_KHUJ:
SETVARIABLE product khuj
SETVARIABLE mat ingot
SAVE "a metal khuj"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

TWOPRONGED_HALBERD:
SETVARIABLE product halberd
SETVARIABLE mat ingot
SAVE "a two-pronged halberd"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_GLAIVE:
SETVARIABLE product glaive
SETVARIABLE mat ingot
SAVE "a metal glaive"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_NGALIO:
SETVARIABLE product ngalio
SETVARIABLE mat ingot
SAVE "a metal ngalio"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_FAUCHARD:
SETVARIABLE product fauchard
SETVARIABLE mat ingot
SAVE "a metal fauchard"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_POLE_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal pole axe"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_ILGLAIKS_SKEFNE:
SETVARIABLE product skefne
SETVARIABLE mat ingot
SAVE "a metal ilglaiks skefne"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_RANSEUR:
SETVARIABLE product ranseur
SETVARIABLE mat ingot
SAVE "a metal ranseur"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_SPETUM:
SETVARIABLE product spetum
SETVARIABLE mat ingot
SAVE "a metal spetum"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_LANCE:
SETVARIABLE product lance
SETVARIABLE mat ingot
SAVE "a metal lance"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_PIKE:
SETVARIABLE product pike
SETVARIABLE mat ingot
SAVE "a metal pike"
put stow logb
put get my %book
put turn my book to chapter 7
goto WEAPON_CHAPT7

METAL_NIGHTSTICK:
SETVARIABLE product nightstick
SETVARIABLE mat ingot
SAVE "a metal nightstick"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_CANE:
SETVARIABLE product cane
SETVARIABLE mat ingot
SAVE "a metal cane"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_QUARTERSTAFF:
SETVARIABLE product quarterstaff
SETVARIABLE mat ingot
SAVE "a metal quarterstaff"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_PIKE_STAFF:
SETVARIABLE product staff
SETVARIABLE mat ingot
SAVE "a metal pike staff"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_KNUCKLES:
SETVARIABLE product knuckles
SETVARIABLE mat ingot
SAVE "some metal knuckles"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_KNEE_SPIKES:
SETVARIABLE product spikes
SETVARIABLE mat ingot
SAVE "some metal knee spikes"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_ELBOW_SPIKES:
SETVARIABLE product spikes
SETVARIABLE mat ingot
SAVE "some metal elbow spikes"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

SPIKED_METAL_KNUCKLES:
SETVARIABLE product knuckles
SETVARIABLE mat ingot
SAVE "some spiked metal knuckles"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_HAND_CLAWS:
SETVARIABLE product claws
SETVARIABLE mat ingot
SAVE "some metal hand claws"
put stow logb
put get my %book
put turn my book to chapter 8
goto WEAPON_CHAPT8

METAL_THROWING_SPIKE:
SETVARIABLE product spike
SETVARIABLE mat ingot
SAVE "a metal throwing spike"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_BAR_MACE:
SETVARIABLE product mace
SETVARIABLE mat ingot
SAVE "a metal bar mace"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_BROADAXE: 
SETVARIABLE product broadaxe
SETVARIABLE mat ingot
SAVE "a metal broadaxe"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_WARSWORD:
SETVARIABLE product sword
SETVARIABLE mat ingot
SAVE "a metal war sword"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_BASTARD_SWORD:
SETVARIABLE product sword 
SETVARIABLE mat ingot
SAVE "a metal bastard sword"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_BOARDING_AXE:
SETVARIABLE product axe
SETVARIABLE mat ingot
SAVE "a metal boarding axe"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_SPLITTING_MAUL:
SETVARIABLE product maul
SETVARIABLE mat ingot
SAVE "a metal splitting maul"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

THINBLADED_METAL_FAN:
SETVARIABLE product fan
SETVARIABLE mat ingot
SAVE "a thin-bladed metal fan"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_HALFHANDLED_RISTE:
SETVARIABLE product riste
SETVARIABLE mat ingot
SAVE "a metal half-handled riste"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

THICKBLADED_METAL_FAN:
SETVARIABLE product fan
SETVARIABLE mat ingot
SAVE "a thick-bladed metal fan"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

METAL_RISTE:
SETVARIABLE product riste 
SETVARIABLE mat ingot
SAVE "a metal riste"
put stow logb
put get my %book
put turn my book to chapter 9
goto WEAPON_CHAPT9

WEAPON_CHAPT1:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT1 /briquet|carving knife|(metal|metal throwing) dagger|misericorde|katar|(short|leaf blade) sword|pugio|poignard|stiletto|dart|falcata|nehlata|telek|jambiya|takouba|kris|thrusting blade|pasabas|rapier|koummya|oben|kythe|dao|kasai|sunblade|foil|baselard|gladius|mambeli|sashqa|adze|curlade|parang|hanger|sabre|scimitar|shotel|cutlass|hatchet|(hand|light throwing) axe/
put turn book to page %c
matchwait

WEAPON_CHAPT2:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT2 /condottiere|nehdalata|(round|battle|hurling) axe|longsword|spatha|kudalata|arzfilt|broadsword|shiavona|falchion|(robe|hunting) sword|recade|back-sword|nimsha|namkomba|dagasse|abassi|cinquedea/
put turn book to page %c
matchwait

WEAPON_CHAPT3:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT3 /(twin-point|warring|double|igorat) axe|karambit|claymore|greataxe|blade|(two-handed|periperiu) sword|flamberge|greatsword|shh'oi'ata|kaskara/
put turn book to page %c
matchwait

WEAPON_CHAPT4:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT4 /gavel|cosh|prod|cudgel|zubke|scepter|(metal|hand) mallet|bludgeon|garz|(ridged metal|spiked metal) gauntlet|(metal hand|a metal|spiked metal|flanged metal) mace|(a metal|metal throwing|metal war|spiked metal) club|(short metal|metal war|spiked metal) hammer|bulhawf|cuska|bola|boko|boomerang|belaying pin|marlingspike|hhr'tami|komno|k'trinni sha-tai/
put turn book to page %c
matchwait

WEAPON_CHAPT5:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT5 /(imperial war|double-headed|hurlable war|metal throwing) hammer|mace|greathammer|(metal|spiked) ball and chain|heavy metal chain|horseman's flail|ukabi|(spiked metal|a metal) hara|morning star|sledgehammer|(heavy metal|metal throwing) mallet|hhr'ata/
put turn book to page %c
matchwait

WEAPON_CHAPT6:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT6 /kodur|mattock|ball and chain|akabo|flail|mace|sledgehammer|maul|hammer|mallet/
put turn book to page %c
matchwait

WEAPON_CHAPT7:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT7 /(light metal|a metal) spear|javelin|allarh|hunthsleg|awgravet ava|coresca|tzece|(a metal|two-pronged) halberd|guisarme|(pole|lochaber) axe|bardiche|scythe|(duraka|ilglaiks) skefne|fork|partisan|khuj|glaive|ngalio|fauchard|ranseur|spetum|lance|pike/
put turn book to page %c
matchwait

WEAPON_CHAPT8:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT8 /nightstick|cane|quarterstaff|pike staff|(some metal|spiked metal) knuckles|(metal knee|metal elbow) spikes|hand claws/
put turn book to page %c
matchwait

WEAPON_CHAPT9:
pause .5
counter add 1
match WEAPON_START %s
match ERROR1 This chapter does not have
matchre WEAPON_CHAPT9 /throwing spike|bar mace|broadaxe|(war|bastard) sword|boarding axe|maul|(thin-bladed metal|thick-bladed metal) fan|(half-handled|a metal) riste/
put turn book to page %c
matchwait


WEAPON_START:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my artic tongs
matchre ERROR2 /I could not find|What were you/
match WEAPON_FIRSTPOUND You get
put get my %mat
matchwait

WEAPON_FIRSTPOUND:
pause 1
put put my %mat on anvil
put get my ball hammer
pause 2
put pound %mat on anvil with my hammer
waitfor Roundtime
pause 2
put stow my tongs
put stow ingot
pause 1
match ERROR4 You need a larger volume of metal to continue crafting
match WEAPON_SHOVEL PUSH FUEL with a SHOVEL to build it back up
match WEAPON_BELLOWS PUSH a BELLOWs to stoke the fire back up
match WEAPON_TONGS TURN it with the tongs to fix this problem
match WEAPON_POUND appears ready for more pounding with a forging hammer
match WEAPON_POUND that would obstruct pounding of the metal
match WEAPON_POUND looks ready to be pounded with a forging hammer
put analyze %product on anvil
matchwait

WEAPON_POUND:
pause 1
put get my tongs
match WEAPON_POUND Roundtime
matchre WEAPON_BELLOWS /fire dims and produces less heat from the stifled coals|unable to consume its fuel/
matchre WEAPON_SHOVEL /appears to need some more fuel|fire dies down and needs more fuel/
matchre WEAPON_TONGS /straightening along the horn of the anvil|would benefit from some soft reworking/
matchre WEAPON_TUB /a quench hardening in the slack tub|appears ready for cooling in the slack tub|That tool does not seem suitable/
put pound %product on anvil with my hammer
matchwait

WEAPON_SHOVEL:
pause 1
put stow my tongs
put get my wide shovel
put push fuel with my shovel
waitfor roundtime
pause 1
put stow my shovel
put get my artic tongs
goto WEAPON_POUND

WEAPON_BELLOWS:
pause 1
put stow my tongs
put get my bellows
put push bellows
waitfor roundtime
pause 1
put stow bellows
put get my artic tongs
goto WEAPON_POUND

WEAPON_TONGS:
pause 1
put turn %product on anvil with my tongs
waitfor roundtime
pause 1
goto WEAPON_POUND

WEAPON_TUB:
pause 1
put stow right
put stow left
put push tub
waitfor roundtime
pause 2
put get %product on anvil
goto WEAPON_OIL

WEAPON_OIL:
put get my oil
match WEAPON_WOOD_HILTa wooden hilt
match WEAPON_WOOD_HAFTa wooden haft
match WEAPON_LONG_POLEa long wooden pole
match WEAPON_SHORT_CORDa short leather cord
match WEAPON_FINISH That tool does not seem
put pour oil on my %product
matchwait

WEAPON_WOOD_HILTa:
pause 1
put stow oil
match WEAPON_WOOD_HILT you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my hilt
matchwait

WEAPON_WOOD_HILT:
pause 1
put assemble my hilt with my %product
pause 1
goto WEAPON_OIL

WEAPON_WOOD_HAFTa:
pause 1
put stow oil
match WEAPON_WOOD_HAFT you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my haft
matchwait

WEAPON_WOOD_HAFT:
pause 1
put assemble my haft with my %product
pause 1
goto WEAPON_OIL

WEAPON_SHORT_CORDa:
pause 1
put stow oil
match WEAPON_SHORT_CORD you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my cord
matchwait

WEAPON_SHORT_CORD:
pause 1
put assemble my cord with my %product
pause 1
goto WEAPON_OIL

WEAPON_LONG_POLEa:
pause 1
put stow oil
match WEAPON_LONG_POLE you get
matchre ERROR2 /I could not find|What were you referring to?/
put get my long pole
matchwait

WEAPON_LONG_POLE:
pause 1
put assemble my pole with my %product
pause 1
goto WEAPON_OIL

WEAPON_FINISH:
put stow right
put stow left
echo ******************************************************************
echo ***
echo ***  Take your weapon/weapons to a grindstone to finish the job.
echo ***  Beginning a new weapon.
echo ***
echo ******************************
goto WEAPON_START

ARMORSMITH:
echo ******************************
echo ***
echo *** COMING "SIMU" SOON!! 
echo ***
echo ******************************
exit

TAILOR:
SETVARIABLE book tailoring book
SETVARIABLE needle sewing needle
match NOWORK work order that has expired
match NOWORK is not currently tracking
match CL_SMLPAD some small cloth padding
match CL_LRGPAD some large cloth padding
match CL_SOCKS some cloth socks
match CL_ANKLESOCKS some cloth ankle socks
match CL_ARMBAND a cloth armband
match CL_FINGERGLOVE some cloth fingerless gloves
match CL_ANKLEBAND a cloth ankleband
match CL_EYEPATCH a cloth eyepatch
match CL_KNEESOCK some cloth knee socks
match CL_PLEATGLOVE some pleated cloth gloves
match CL_ELBOWGLOVE some elbow-length gloves
match CL_HEADBAND a cloth headband
match CL_BELT a cloth belt
match CL_SCARF a cloth scarf
match CL_ELEGGlOVES some elegent cloth gloves
match CL_SLIPPERS some cloth slippers
match CL_FIELDSHOE some cloth field shoes
match CL_HAT a cloth hat
match CL_DUNCEHAT a cloth dunce hat
match CL_DRESSBELT a cloth dress belt
match CL_SEGBELT a segmented cloth belt
match CL_COMMONCLOAK a cloth commoner's cloak
match CL_HEADSCARF a cloth head scarf
match CL_VEIL a cloth veil
match CL_FLOPPYHAT a floppy cloth hat
match CL_DBLBELT a double-wrapped belt
match CL_PANTS some cloth pants
match CL_SKIRT a cloth skirt
match CL_KILT a cloth kilt
match CL_SASH a cloth sash
match CL_SSHIRT a sleeveless cloth shirt
match CL_SHIRT a cloth shirt
match CL_CLOAK a cloth cloak
match CL_DRESSHAT a cloth dress hat
match CL_BAGPANTS some baggy cloth pants
match CL_DRESS a cloth dress
match CL_KNEEDRESS a knee-length cloth dress
match CL_FRONTDRESS a front-laced cloth dress
match CL_BILLOWSHIRT a billowing cloth shirt
match CL_BAGSHIRT a baggy cloth shirt
match CL_TUNIC a cloth tunic
match CL_ROBE some cloth robes
match CL_DRESSPANTS some cloth dress pants
match CL_FLOORDRESS a floor-length cloth dress
match CL_GOWN a cloth gown
match CL_DRESSSHIRT a cloth dress shirt
match CL_SSTUNIC a short-sleeved tunic
match CL_FORMTUNIC a formal cloth tunic
match CL_TABARD a cloth tabard
match CL_HOODCLOAK a hooded cloth cloak
match CL_CAPE a cloth cape
match CL_DEEPCLOAK a deeply-hooded cloak
match CL_HOODROBES some hooded cloth robes
match CL_SHAMANROBE a cloth shaman's robe
match CL_FLOWINGROBE some flowing cloth robes
match CL_MAGEROBE a cloth mage's robe
match CL_NAPKIN a cloth napkin
match CL_HIPPOUCH a cloth hip pouch
match CL_RAG a cloth rag
match CL_GEMPOUCH a cloth gem pouch
match CL_WEAPSTRAP a cloth weapon strap
match CL_POUCH a cloth pouch
match CL_THIGHBAG a cloth thigh bag
match CL_TOWEL a cloth towel
match CL_HERBPOUCH a cloth herb pouch
match CL_TALPOUCH a cloth talisman pouch
match CL_ARMPOUCH a cloth arm pouch
match CL_BAG a cloth bag
match CL_SACK a cloth sack
match CL_UTILBELT a cloth utility belt
match CL_CHARMBAG a cloth charm bag
match CL_BACKPACK cloth backpack
match CL_KNAPSACK cloth knapsack
match CL_CARRYALL cloth carryall
match CL_DUFFELBAG a cloth duffelbag
match CL_HAVERSACK a cloth haversack
match CL_BANDOLIER a cloth bandolier
match CL_SMLRUCK a small cloth rucksack
match CL_RUCKSACK a cloth rucksack
match QUILAVENT a quilted cloth aventail
match QUILMASK a quilted cloth mask
match QUILGLOVE some quilted cloth gloves
match QUILCAP a quilted cloth cap
match PADAVENT a padded cloth aventail
match PADMASK a padded cloth mask
match QUILHOOD a quilted cloth hood
match PADGLOVE some padded cloth gloves
match PADCAP a padded cloth cap
match INSULAVENT insulated cloth aventail
match INSULMASK insulated cloth mask
match QUILPANTS some quilted cloth pants
match PADHOOD a padded cloth hood
match INSULGLOVE some insulated cloth gloves
match INSULCAP insulated cloth cap
match PADPANTS some padded cloth pants
match QUILVAMBRACE some quilted cloth vambrace
match QUILTASSET quilted cloth tasset
match QUILTABARD quilted cloth tabard
match INSULHOOD insulated cloth hood
match INSULPANTS insulated cloth pants
match PADVAMBRACE padded cloth vambraces
match QUILSLEEVE quilted cloth sleeves
match PADTASSET padded cloth tasset
match QUILVEST quilted cloth vest
match QUILMANTLE quilted cloth mantle
match QUILROBE quilted cloth robe
match QUILSHIRT quilted cloth shirt
match PADTABARD padded cloth tabard
match INSULVAMBRACE insulated cloth vambraces
match PADSLEEVE padded cloth sleeves
match INSULTASSET insulated cloth tasset
match PADVEST padded cloth vest
match PADMANTLE padded cloth mantle
match PADROBE padded cloth robe
match QUILHAUB quilted cloth hauberk
match PADSHIRT padded cloth shirt
match INSULTABARD insulated cloth tabard
match INSULSLEEVE insulated cloth sleeves
match INSULVEST insulated cloth vest
match INSULMANTLE insulated cloth mantle
match INSULROBE insulated cloth robe
match PADHAUBERK padded cloth hauberk
match INSULSHIRT insulated cloth shirt
match INSULHAUB insulated cloth hauberk
match KN_ANKLEBAND knitted ankleband
match KN_SOCKS knitted socks
match KN_ARMBAND knitted armband
match KN_NAPKIN knitted napkin
match KN_MITTEN knitted mittens
match KN_HEADBAND knitted headband
match KN_SLIPPER knitted slippers
match KN_SCARF knitted scarf
match KN_HAT knitted hat
match KN_BOOTIES knitted booties
match KN_HOOD knitted hood
match KN_TOWEL knitted towel
match KN_LEGWARM knitted legwarmers
match KN_GLOVE knitted gloves
match KN_SHIRT knitted shirt
match KN_SKIRT knitted skirt
match KN_SWEATER knitted sweater
match KN_HOSE knitted hose
match KN_CLOAK knitted cloak
match KN_BLANKET knitted blanket
match LE_ARMBAND leather armband
match LE_ANKLEBAND leather ankleband
match LE_FINGERGLOVE some fingerless gloves
match LE_ELBOWGLOVE some elbow-length gloves
match LE_EYEPATCH leather eyepatch
match LE_HEADBAND leather headband
match LE_BELT leather belt
match LE_MOCCASIN some leather moccasins
match LE_SHOE some leather shoes
match LE_HAT leather hat
match LE_COMMONCLOAK a commoner's cloak
match LE_SHIRT a leather shirt
match LE_SLEEVESHIRT sleeveless leather shirt
match LE_SEGMENTBELT segmented belt
match LE_DRESSBELT leather dress belt
match LE_SKIRT leather skirt
match LE_CLOAK leather cloak
match LE_TUNIC leather tunic
match LE_DRESS leather dress
match LE_DBLBELT a double-wrapped belt
match LE_CAPE leather cape
match LE_UTILBELT leather utility belt
match LE_HOODCLOAK a hooded leather cloak
match LE_DEEPCLOAK a deeply-hooded cloak
match LE_WEAPSTRAP a leather weapon strap
match RUGAVENT rugged leather aventail
match RUGMASK rugged leather mask
match RUGGLOVE rugged gloves
match RUGCAP rugged leather cap
match THICKAVENT thick leather aventail
match THICKMASK thick leather mask
match COARSEAVENT coarse leather aventail
match RUGHELM rugged leather helm
match THICKGLOVE some thick gloves
match THICKCAP thick leather cap
match COARSEMASK coarse leather mask
match RUGTASSET rugged leather tasset
match RUGVAMBRACE rugged vambraces
match RUGGREAVE rugged greaves
match RUGCOWL rugged leather cowl
match THICKHELM thick leather helm
match COARSEGLOVE coarse gloves
match COARSECAP coarse leather cap
match RUGJERKIN rugged leather jerkin
match THICKTASSET thick leather tasset
match RUGMANTLE rugged leather mantle
match RUGVEST rugged leather vest
match RUGSLEEVE rugged leather sleeves
match THICKVAMBRACE thick vambraces
match THICKGREAVE thick greaves
match THICKCOWL thick leather cowl
match COARSEHELM coarse leather helm
match THICKMANTLE thick leather mantle
match RUGCOAT rugged leather coat
match RUGROBE rugged leather robe
match THICKJERKIN thick leather jerkin
match THICKSLEEVE thick leather sleeves
match THICKVEST thick leather vest
match COARSETASSET coarse leather tasset
match COARSEVAMBRACE some coarse vambraces
match COARSEGREAVE some coarse greaves
match COARSECOWL coarse leather cowl
match THICKROBE thick leather robe
match RUGLEATHER rugged leathers
match THICKCOAT thick leather coat
match COARSEJERKIN coarse leather jerkin
match COARSEMANTLE coarse leather mantle
match COARSESLEEVE coarse leather sleeves
match COARSEVEST coarse leather vest
match COARSEROBE coarse leather robe
match THICKLEATHER some thick leathers
match COARSECOAT coarse leather coat
match COARSELEATHER some coarse leathers
match LE_SHIELDHAND leather shield handle
match LE_CORD long leather coard
match LE_TARGSHIELD leather target shield
match LE_ORDSHIELD ordinary leather shield
match LE_SMALLSHIELD small leather shield
match LE_BUCKLER leather buckler
match LE_TARGE a leather targe
match LE_OVALSHIELD a leather oval shield
match LE_MEDSHIELD medium leather shield
match LE_KITESHIELD a leather kite shield
put read out logbook
matchwait

CL_SMLPAD:
SETVARIABLE product padding
SETVARIABLE mat cloth
SAVE "some small cloth padding"
put stow logb
put get my %book
put turn my book to chapter 1
match TAI_START %s
matchre TAI_CHAPT1 /spinning|padding|fabrics|yarn|sealing|lightening|weaving|repair|reinforcing/
put turn my book to page 1
matchwait

CL_LRGPAD:
SETVARIABLE product padding
SETVARIABLE mat cloth
SAVE "some large cloth padding"
put stow logb
put get my %book
put turn my book to chapter 1
match TAI_START %s
matchre TAI_CHAPT1 /spinning|padding|fabrics|yarn|sealing|lightening|weaving|repair|reinforcing/
put turn my book to page 1
matchwait

CL_SOCKS:
SETVARIABLE chapter chapter 2
SETVARIABLE product sock
SETVARIABLE mat cloth
SAVE "some cloth socks"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /ankle|armband|gloves|ankleband|eyepatch|knee|shirt|cloak|hat|robe|pants|dress|shoes|belt|tunic|tabard|gown|scarf|slippers|headband|kilt|sash|skirt|cape|veil/
put turn my book to page 1
matchwait

CL_ANKLESOCKS:
SETVARIABLE chapter chapter 2
SETVARIABLE product socks
SETVARIABLE mat cloth
SAVE "some cloth ankle socks"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /cloth socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_ARMBAND:
SETVARIABLE chapter chapter 2
SETVARIABLE product armband
SETVARIABLE mat cloth
SAVE "a cloth armband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /cloth socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_FINGERGLOVE:
SETVARIABLE chapter chapter 2
SETVARIABLE product glove
SETVARIABLE mat cloth
SAVE "some cloth fingerless gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /cloth socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_ANKLEBAND:
SETVARIABLE chapter chapter 2
SETVARIABLE product ankleband
SETVARIABLE mat cloth
SAVE "a cloth ankleband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_EYEPATCH:
SETVARIABLE chapter chapter 2
SETVARIABLE product eyepatch
SETVARIABLE mat cloth
SAVE "a cloth eyepatch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|ankleband/
put turn book to page 1
matchwait

CL_KNEESOCK:
SETVARIABLE chapter chapter 2
SETVARIABLE product socks
SETVARIABLE mat cloth
SAVE "some cloth knee socks"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_PLEATGLOVE:
SETVARIABLE chapter chapter 2
SETVARIABLE product gloves
SETVARIABLE mat cloth
SAVE "some pleated cloth gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_ELBOWGLOVE:
SETVARIABLE chapter chapter 2
SETVARIABLE product gloves
SETVARIABLE mat cloth
SAVE "some elbow-length gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_HEADBAND:
SETVARIABLE chapter chapter 2
SETVARIABLE product headband
SETVARIABLE mat cloth
SAVE "a cloth headband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_BELT:
SETVARIABLE chapter chapter 2
SETVARIABLE product belt
SETVARIABLE mat cloth
SAVE "a cloth belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_SCARF:
SETVARIABLE chapter chapter 2
SETVARIABLE product scarf
SETVARIABLE mat cloth
SAVE "a cloth scarf"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_ELEGGLOVES:
SETVARIABLE chapter chapter 2
SETVARIABLE product gloves
SETVARIABLE mat cloth
SAVE "some elegant cloth gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_SLIPPERS:
SETVARIABLE chapter chapter 2
SETVARIABLE product slippers
SETVARIABLE mat cloth
SAVE "some cloth slippers"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_FIELDSHOE:
SETVARIABLE chapter chapter 2
SETVARIABLE product shoes
SETVARIABLE mat cloth
SAVE "some cloth field shoes"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_HAT:
SETVARIABLE chapter chapter 2
SETVARIABLE product hat
SETVARIABLE mat cloth
SAVE "a cloth hat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_DUNCEHAT:
SETVARIABLE chapter chapter 2
SETVARIABLE product hat
SETVARIABLE mat cloth
SAVE "a cloth dunce hat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_DRESSBELT:
SETVARIABLE chapter chapter 2
SETVARIABLE product belt
SETVARIABLE mat cloth
SAVE "a cloth dress belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_SEGBELT:
SETVARIABLE chapter chapter 2
SETVARIABLE product belt
SETVARIABLE mat cloth
SAVE "a segmented cloth belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_COMMONCLOAK:
SETVARIABLE chapter chapter 2
SETVARIABLE product cloak
SETVARIABLE mat cloth
SAVE "a cloth commoner's cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /socks|robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|armband|eyepatch/
put turn book to page 1
matchwait

CL_HEADSCARF:
SETVARIABLE chapter chapter 2
SETVARIABLE product scarf
SETVARIABLE mat cloth
SAVE "a cloth head scarf"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_VEIL:
SETVARIABLE chapter chapter 2
SETVARIABLE product veil
SETVARIABLE mat cloth
SAVE "a cloth veil"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_FLOPPYHAT:
SETVARIABLE chapter chapter 2
SETVARIABLE product hat
SETVARIABLE mat cloth
SAVE "a floppy cloth hat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_DBLBELT:
SETVARIABLE chapter chapter 2
SETVARIABLE product belt
SETVARIABLE mat cloth
SAVE "a double-wrapped belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_PANTS:
SETVARIABLE chapter chapter 2
SETVARIABLE product pants
SETVARIABLE mat cloth
SAVE "some cloth pants"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_SKIRT:
SETVARIABLE chapter chapter 2
SETVARIABLE product skirt
SETVARIABLE mat cloth
SAVE "a cloth skirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_KILT:
SETVARIABLE chapter chapter 2
SETVARIABLE product kilt
SETVARIABLE mat cloth
SAVE "a cloth kilt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_SASH:
SETVARIABLE chapter chapter 2
SETVARIABLE product sash
SETVARIABLE mat cloth
SAVE "a cloth sash"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_SSHIRT:
SETVARIABLE chapter chapter 2
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a sleevless cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_SHIRT:
SETVARIABLE chapter chapter 2
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_CLOAK:
SETVARIABLE chapter chapter 2
SETVARIABLE product cloak
SETVARIABLE mat cloth
SAVE "a cloth cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_DRESSHAT:
SETVARIABLE chapter chapter 2
SETVARIABLE product hat
SETVARIABLE mat cloth
SAVE "a cloth dress hat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_BAGPANTS:
SETVARIABLE chapter chapter 2
SETVARIABLE product pants
SETVARIABLE mat cloth
SAVE "some baggy cloth pants"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_DRESS:
SETVARIABLE chapter chapter 2
SETVARIABLE product dress
SETVARIABLE mat cloth
SAVE "a cloth dress"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_KNEEDRESS:
SETVARIABLE chapter chapter 2
SETVARIABLE product dress
SETVARIABLE mat cloth
SAVE "a knee-length cloth dress"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_FRONTDRESS:
SETVARIABLE chapter chapter 2
SETVARIABLE product dress
SETVARIABLE mat cloth
SAVE "a front-laced cloth dress"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_BILLOWSHIRT:
SETVARIABLE chapter chapter 2
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a billowing cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_BAGSHIRT:
SETVARIABLE chapter chapter 2
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a baggy cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_TUNIC:
SETVARIABLE chapter chapter 2
SETVARIABLE product tunic
SETVARIABLE mat cloth
SAVE "a cloth tunic"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_ROBE:
SETVARIABLE chapter chapter 2
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "some cloth robes"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_DRESSPANTS:
SETVARIABLE chapter chapter 2
SETVARIABLE product pants
SETVARIABLE mat cloth
SAVE "some cloth dress pants"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_FLOORDRESS:
SETVARIABLE chapter chapter 2
SETVARIABLE product dress
SETVARIABLE mat cloth
SAVE "a floor-length cloth dress"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_GOWN:
SETVARIABLE chapter chapter 2
SETVARIABLE product gown
SETVARIABLE mat cloth
SAVE "a cloth gown"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_DRESSSHIRT:
SETVARIABLE chapter chapter 2
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a cloth dress shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_SSTUNIC:
SETVARIABLE chapter chapter 2
SETVARIABLE product tunic
SETVARIABLE mat cloth
SAVE "a short-sleeved cloth tunic"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_FORMTUNIC:
SETVARIABLE chapter chapter 2
SETVARIABLE product tunic
SETVARIABLE mat cloth
SAVE "a formal cloth tunic"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_TABARD:
SETVARIABLE chapter chapter 2
SETVARIABLE product tabard
SETVARIABLE mat cloth
SAVE "a cloth tabard"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_HOODCLOAK:
SETVARIABLE chapter chapter 2
SETVARIABLE product cloak
SETVARIABLE mat cloth
SAVE "a hooded cloth cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_CAPE:
SETVARIABLE chapter chapter 2
SETVARIABLE product cape
SETVARIABLE mat cloth
SAVE "a cloth cape"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_DEEPCLOAK:
SETVARIABLE chapter chapter 2
SETVARIABLE product cloak
SETVARIABLE mat cloth
SAVE "a deeply-hooded cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_HOODROBES:
SETVARIABLE chapter chapter 2
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "some hooded cloth robes"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_SHAMANROBE:
SETVARIABLE chapter chapter 2
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "a cloth shaman's robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_MAGEROBE:
SETVARIABLE chapter chapter 2
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "a cloth mage's robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_FLOWINGROBE:
SETVARIABLE chapter chapter 2
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "some flowing cloth robes"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/
put turn book to page 1
matchwait

CL_NAPKIN:
SETVARIABLE chapter chapter 3
SETVARIABLE product napkin
SETVARIABLE mat cloth
SAVE "a cloth napkin"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_HIPPOUCH:
SETVARIABLE chapter chapter 3
SETVARIABLE product pouch
SETVARIABLE mat cloth
SAVE "a cloth hip pouch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_RAG:
SETVARIABLE chapter chapter 3
SETVARIABLE product rag
SETVARIABLE mat cloth
SAVE "a cloth rag"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_GEMPOUCH:
SETVARIABLE chapter chapter 3
SETVARIABLE product pouch
SETVARIABLE mat cloth
SAVE "a cloth gem pouch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_WEAPSTRAP:
SETVARIABLE chapter chapter 3
SETVARIABLE product strap
SETVARIABLE mat cloth
SAVE "a cloth weapon strap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_POUCH:
SETVARIABLE chapter chapter 3
SETVARIABLE product pouch
SETVARIABLE mat cloth
SAVE "a cloth pouch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_THIGHBAG:
SETVARIABLE chapter chapter 3
SETVARIABLE product bag
SETVARIABLE mat cloth
SAVE "a cloth thigh bag"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_TOWEL:
SETVARIABLE chapter chapter 3
SETVARIABLE product towel
SETVARIABLE mat cloth
SAVE "a cloth towel"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_HERBPOUCH:
SETVARIABLE chapter chapter 3
SETVARIABLE product pouch
SETVARIABLE mat cloth
SAVE "a cloth herb pouch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_TALPOUCH:
SETVARIABLE chapter chapter 3
SETVARIABLE product pouch
SETVARIABLE mat cloth
SAVE "a cloth talisman pouch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_ARMPOUCH:
SETVARIABLE chapter chapter 3
SETVARIABLE product pouch
SETVARIABLE mat cloth
SAVE "a cloth arm pouch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_BAG:
SETVARIABLE chapter chapter 3
SETVARIABLE product bag
SETVARIABLE mat cloth
SAVE "a cloth bag"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_SACK:
SETVARIABLE chapter chapter 3
SETVARIABLE product sack
SETVARIABLE mat cloth
SAVE "a cloth sack"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_UTILBELT:
SETVARIABLE chapter chapter 3
SETVARIABLE product belt
SETVARIABLE mat cloth
SAVE "a cloth utility belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_CHARMBAG:
SETVARIABLE chapter chapter 3
SETVARIABLE product bag
SETVARIABLE mat cloth
SAVE "a cloth charm bag"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_BACKPACK:
SETVARIABLE chapter chapter 3
SETVARIABLE product backpack
SETVARIABLE mat cloth
SAVE "a cloth backpack"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|haversack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_KNAPSACK:
SETVARIABLE chapter chapter
SETVARIABLE product knapsack
SETVARIABLE mat cloth
SAVE "a cloth knapsack"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|haversack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_CARRYALL:
SETVARIABLE chapter chapter 3
SETVARIABLE product carryall
SETVARIABLE mat cloth
SAVE "a cloth carryall"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|haversack|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_DUFFELBAG:
SETVARIABLE chapter chapter 3
SETVARIABLE product bag
SETVARIABLE mat cloth
SAVE "a cloth duffel bag"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /haversack|napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_HAVERSACK:
SETVARIABLE chapter chapter 3
SETVARIABLE product haversack
SETVARIABLE mat cloth
SAVE "a cloth haversack"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|bandolier|rucksack/
put turn my book to page 1
matchwait

CL_BANDOLIER:
SETVARIABLE chapter chapter 3
SETVARIABLE product bandolier
SETVARIABLE mat cloth
SAVE "a cloth bandolier"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|haversack|rucksack/
put turn my book to page 1
matchwait

CL_SMLRUCK:
SETVARIABLE chapter chapter 3
SETVARIABLE product rucksack
SETVARIABLE mat cloth
SAVE "a small cloth rucksack"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|haversack|bandolier|a cloth rucksack/
put turn my book to page 1
matchwait

CL_RUCKSACK:
SETVARIABLE chapter chapter 3
SETVARIABLE product rucksack
SETVARIABLE mat cloth
SAVE "a cloth rucksack"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|haversack|bandolier|small cloth rucksack/
put turn my book to page 1
matchwait

QUILAVENT:
SETVARIABLE chapter chapter 4
SETVARIABLE product aventail
SETVARIABLE mat cloth
SAVE "a quilted cloth aventail"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILMASK:
SETVARIABLE chapter chapter 4
SETVARIABLE product mask
SETVARIABLE mat cloth
SAVE "a quilted cloth mask"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILGLOVE:
SETVARIABLE chapter chapter 4
SETVARIABLE product glove
SETVARIABLE mat cloth
SAVE "some quilted cloth gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILCAP:
SETVARIABLE chapter chapter 4
SETVARIABLE product cap
SETVARIABLE mat cloth
SAVE "a quilted cloth cap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADAVENT:
SETVARIABLE chapter chapter 4
SETVARIABLE product aventail
SETVARIABLE mat cloth
SAVE "a padded cloth aventail"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADMASK:
SETVARIABLE chapter chapter 4
SETVARIABLE product mask
SETVARIABLE mat cloth
SAVE "a padded cloth mask"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILHOOD:
SETVARIABLE chapter chapter 4
SETVARIABLE product hood
SETVARIABLE mat cloth
SAVE "a quilted cloth hood"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADGLOVE:
SETVARIABLE chapter chapter 4
SETVARIABLE product gloves
SETVARIABLE mat cloth
SAVE "some padded cloth gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADCAP:
SETVARIABLE chapter chapter 4
SETVARIABLE product cap
SETVARIABLE mat cloth
SAVE "a padded cloth cap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULAVENT:
SETVARIABLE chapter chapter  4
SETVARIABLE product aventail
SETVARIABLE mat cloth
SAVE "an insulated cloth aventail"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULMASK:
SETVARIABLE chapter chapter 4
SETVARIABLE product mask
SETVARIABLE mat cloth
SAVE "an insulated cloth mask"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILPANTS:
SETVARIABLE chapter chapter 4
SETVARIABLE product pants
SETVARIABLE mat cloth
SAVE "some quilted cloth pants"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADHOOD:
SETVARIABLE chapter chapter 4
SETVARIABLE product hood
SETVARIABLE mat cloth
SAVE "a padded cloth hood"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULGLOVE:
SETVARIABLE chapter chapter 4
SETVARIABLE product gloves
SETVARIABLE mat cloth
SAVE "some insulated cloth gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULCAP:
SETVARIABLE chapter chapter 4
SETVARIABLE product cap
SETVARIABLE mat cloth
SAVE "an insulated cloth cap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADPANTS:
SETVARIABLE chapter chapter 4
SETVARIABLE product pants
SETVARIABLE mat cloth
SAVE "some padded cloth pants"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILVAMBRACE:
SETVARIABLE chapter chapter 4
SETVARIABLE product vambrace
SETVARIABLE mat cloth
SAVE "some quilted cloth vambraces"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILTASSET:
SETVARIABLE chapter chapter 4
SETVARIABLE product tasset
SETVARIABLE mat cloth
SAVE "a quilted cloth tasset"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILTABARD:
SETVARIABLE chapter chapter 4
SETVARIABLE product tabard
SETVARIABLE mat cloth
SAVE "a quilted cloth tabard"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULHOOD:
SETVARIABLE chapter chapter 4
SETVARIABLE product hood
SETVARIABLE mat cloth
SAVE "an insulated cloth hood"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULPANTS:
SETVARIABLE chapter chapter 4
SETVARIABLE product pants
SETVARIABLE mat cloth
SAVE "some insulated cloth pants"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADVAMBRACE:
SETVARIABLE chapter chapter 4
SETVARIABLE product vambrace
SETVARIABLE mat cloth
SAVE "some padded cloth vambraces"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILSLEEVE:
SETVARIABLE chapter chapter 4
SETVARIABLE product sleeve
SETVARIABLE mat cloth
SAVE "some quilted cloth sleeves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADTASSET:
SETVARIABLE chapter chapter 4
SETVARIABLE product tasset
SETVARIABLE mat cloth
SAVE "a padded cloth tasset"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILVEST:
SETVARIABLE chapter chapter 4
SETVARIABLE product vest
SETVARIABLE mat cloth
SAVE "a quilted cloth vest"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILMANTLE:
SETVARIABLE chapter chapter 4
SETVARIABLE product mantle
SETVARIABLE mat cloth
SAVE "a quilted cloth mantle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILROBE:
SETVARIABLE chapter chapter 4
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "a quilted cloth robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILSHIRT:
SETVARIABLE chapter chapter 4
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a quilted cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADTABARD:
SETVARIABLE chapter chapter 4
SETVARIABLE product tabard
SETVARIABLE mat cloth
SAVE "a padded cloth tabard"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULVAMBRACE:
SETVARIABLE chapter chapter 4
SETVARIABLE product vambrace
SETVARIABLE mat cloth
SAVE "some insulated cloth vambraces"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADSLEEVE:
SETVARIABLE chapter chapter 4
SETVARIABLE product sleeves
SETVARIABLE mat cloth
SAVE "some padded cloth sleeves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULTASSET:
SETVARIABLE chapter chapter 4
SETVARIABLE product tasset
SETVARIABLE mat cloth
SAVE "an insulated cloth tasset"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADVEST:
SETVARIABLE chapter chapter 4
SETVARIABLE product vest
SETVARIABLE mat cloth
SAVE "a padded cloth vest"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADMANTLE:
SETVARIABLE chapter chapter 4
SETVARIABLE product mantle
SETVARIABLE mat cloth
SAVE "a padded cloth mantle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADROBE:
SETVARIABLE chapter chapter 4
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "a padded cloth robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

QUILHAUB:
SETVARIABLE chapter chapter 4
SETVARIABLE product hauberk
SETVARIABLE mat cloth
SAVE "a quilted cloth hauberk"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADSHIRT:
SETVARIABLE chapter chapter 4
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "a padded cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULTABARD:
SETVARIABLE chapter chapter 4
SETVARIABLE product tabard
SETVARIABLE mat cloth
SAVE "an insulated cloth tabard"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULSLEEVE:
SETVARIABLE chapter chapter 4
SETVARIABLE product sleeves
SETVARIABLE mat cloth
SAVE "some insulated cloth sleeves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULVEST:
SETVARIABLE chapter chapter 4
SETVARIABLE product vest
SETVARIABLE mat cloth
SAVE "an insulated cloth vest"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULMANTLE:
SETVARIABLE chapter chapter 4
SETVARIABLE product mantle
SETVARIABLE mat cloth
SAVE "an insulated cloth mantle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULROBE:
SETVARIABLE chapter chapter 4
SETVARIABLE product robe
SETVARIABLE mat cloth
SAVE "an insulated cloth robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

PADHAUBERK:
SETVARIABLE chapter chapter 4
SETVARIABLE product hauberk
SETVARIABLE mat cloth
SAVE "a padded cloth hauberk"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULSHIRT:
SETVARIABLE chapter chapter 4
SETVARIABLE product shirt
SETVARIABLE mat cloth
SAVE "an insulated cloth shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

INSULHAUB:
SETVARIABLE chapter chapter 4
SETVARIABLE product hauberk
SETVARIABLE mat cloth
SAVE "an insulated cloth hauberk"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn my book to page 1
matchwait

KN_ANKLEBAND:
SETVARIABLE chapter chapter 5
SETVARIABLE product ankleband
SETVARIABLE mat yarn
SAVE "a knitted ankleband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_SOCKS:
SETVARIABLE chapter chapter 5
SETVARIABLE product socks
SETVARIABLE mat yarn
SAVE "some knitted socks"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_ARMBAND:
SETVARIABLE chapter chapter 5
SETVARIABLE product armband
SETVARIABLE mat yarn
SAVE "a knitted armband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_NAPKIN:
SETVARIABLE chapter chapter 5
SETVARIABLE product napkin
SETVARIABLE mat yarn
SAVE "a knitted napkin"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_MITTEN:
SETVARIABLE chapter chapter 5
SETVARIABLE product mitten
SETVARIABLE mat yarn
SAVE "some knitted mittens"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_HEADBAND:
SETVARIABLE chapter chapter 5
SETVARIABLE product headband
SETVARIABLE mat yarn
SAVE "a knitted headband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_SLIPPER:
SETVARIABLE chapter chapter 5
SETVARIABLE product slippers
SETVARIABLE mat yarn
SAVE "some knitted slippers"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_SCARF:
SETVARIABLE chapter chapter 5
SETVARIABLE product scarf
SETVARIABLE mat yarn
SAVE "a knitted scarf"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_HAT:
SETVARIABLE chapter chapter 5
SETVARIABLE product hat
SETVARIABLE mat yarn
SAVE "a knitted hat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_BOOTIES:
SETVARIABLE chapter chapter 5
SETVARIABLE product booties
SETVARIABLE mat yarn
SAVE "some knitted booties"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_HOOD:
SETVARIABLE chapter chapter 5
SETVARIABLE product hood
SETVARIABLE mat yarn
SAVE "a knitted hood"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_TOWEL:
SETVARIABLE chapter chapter 5
SETVARIABLE product towel
SETVARIABLE mat yarn
SAVE "a knitted towel"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_LEGWARM:
SETVARIABLE chapter chapter 5
SETVARIABLE product legwarmers
SETVARIABLE mat yarn
SAVE "some knitted legwarmers"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_GLOVE:
SETVARIABLE chapter chapter 5
SETVARIABLE product gloves
SETVARIABLE mat yarn
SAVE "some knitted gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_SHIRT:
SETVARIABLE chapter chapter 5
SETVARIABLE product shirt
SETVARIABLE mat yarn
SAVE "a knitted shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_SKIRT:
SETVARIABLE chapter chapter 5
SETVARIABLE product skirt
SETVARIABLE mat yarn
SAVE "a knitted skirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_SWEATER:
SETVARIABLE chapter chapter 5
SETVARIABLE product sweater
SETVARIABLE mat yarn
SAVE "a knitted sweater"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_HOSE:
SETVARIABLE chapter chapter 5
SETVARIABLE product hose
SETVARIABLE mat yarn
SAVE "some knitted hose"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|cloak|blanket/
put turn book to page 1
matchwait

KN_CLOAK:
SETVARIABLE chapter chapter 5
SETVARIABLE product cloak
SETVARIABLE mat yarn
SAVE "a knitted cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/
put turn book to page 1
matchwait

KN_BLANKET:
SETVARIABLE chapter chapter 5
SETVARIABLE product blanket
SETVARIABLE mat yarn
SAVE "a knitted blanket"
put stow logb
put get %book
put turn book to %chapter
match TAI_START2 %s
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak/
put turn book to page 1
matchwait

LE_ARMBAND:
SETVARIABLE chapter chapter 7
SETVARIABLE product armband
SETVARIABLE mat leather
SAVE "a leather armband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_ANKLEBAND:
SETVARIABLE chapter chapter 7
SETVARIABLE product ankleband
SETVARIABLE mat leather
SAVE "a leather ankleband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_FINGERGLOVE:
SETVARIABLE chapter chapter 7
SETVARIABLE product gloves
SETVARIABLE mat leather
SAVE "some fingerless gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_ELBOWGLOVE:
SETVARIABLE chapter chapter 7
SETVARIABLE product gloves
SETVARIABLE mat leather
SAVE "some elbow-length gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_EYEPATCH:
SETVARIABLE chapter chapter 7
SETVARIABLE product eyepatch
SETVARIABLE mat leather
SAVE "a leather eyepatch"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_HEADBAND:
SETVARIABLE chapter chapter 7
SETVARIABLE product headband
SETVARIABLE mat leather
SAVE "a leather headband"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_BELT:
SETVARIABLE chapter chapter 7
SETVARIABLE product belt
SETVARIABLE mat leather
SAVE "a leather belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_MOCCASIN:
SETVARIABLE chapter chapter 7
SETVARIABLE product moccasins
SETVARIABLE mat leather
SAVE "some leather moccasins"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_SHOE:
SETVARIABLE chapter chapter 7
SETVARIABLE product shoes
SETVARIABLE mat leather
SAVE "some leather shoes"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_HAT:
SETVARIABLE chapter chapter 7
SETVARIABLE product hat
SETVARIABLE mat leather
SAVE "a leather hat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_COMMONCLOAK:
SETVARIABLE chapter chapter 7
SETVARIABLE product cloak
SETVARIABLE mat leather
SAVE "a commoner's cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_SHIRT:
SETVARIABLE chapter chapter 7
SETVARIABLE product shirt
SETVARIABLE mat leather
SAVE "a leather shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_SLEEVESHIRT:
SETVARIABLE chapter chapter 7
SETVARIABLE product shirt
SETVARIABLE mat leather
SAVE "a sleeveless leather shirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_SEGMENTBELT:
SETVARIABLE chapter chapter 7
SETVARIABLE product belt
SETVARIABLE mat leather
SAVE "a segmented belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_DRESSBELT:
SETVARIABLE chapter chapter 7
SETVARIABLE product belt
SETVARIABLE mat leather
SAVE "a leather dress belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_SKIRT:
SETVARIABLE chapter chapter 7
SETVARIABLE product skirt
SETVARIABLE mat leather
SAVE "a leather skirt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_CLOAK:
SETVARIABLE chapter chapter 7
SETVARIABLE product cloak
SETVARIABLE mat leather
SAVE "a leather cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_TUNIC:
SETVARIABLE chapter chapter 7
SETVARIABLE product tunic
SETVARIABLE mat leather
SAVE "a leather tunic"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|dress|cape/
put turn book to page 1
matchwait

LE_DRESS:
SETVARIABLE chapter chapter 7
SETVARIABLE product dress
SETVARIABLE mat leather
SAVE "a leather dress"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|cape/
put turn book to page 1
matchwait

LE_DBLBELT:
SETVARIABLE chapter chapter 7
SETVARIABLE product belt
SETVARIABLE mat leather
SAVE "a double-wrapped belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_CAPE:
SETVARIABLE chapter chapter 7
SETVARIABLE product cape
SETVARIABLE mat leather
SAVE "a leather cape"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress/
put turn book to page 1
matchwait

LE_UTILBELT:
SETVARIABLE chapter chapter 7
SETVARIABLE product belt
SETVARIABLE mat leather
SAVE "a leather utility belt"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_HOODCLOAK:
SETVARIABLE chapter chapter 7
SETVARIABLE product cloak
SETVARIABLE mat leather
SAVE "a hooded leather cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_DEEPCLOAK:
SETVARIABLE chapter chapter 7
SETVARIABLE product cloak
SETVARIABLE mat leather
SAVE "a deeply-hooded cloak"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/
put turn book to page 1
matchwait

LE_WEAPSTRAP:
SETVARIABLE chapter chapter 8
SETVARIABLE product strap
SETVARIABLE mat leather
SAVE "a leather weapon strap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT8 /pouch|strap|bag|sack|belt|backpack|knapsack|carryall|haversack|bandolier|rucksack/
put turn book to page 1
matchwait

RUGAVENT:
SETVARIABLE chapter chapter 9
SETVARIABLE product aventail
SETVARIABLE mat leather
SAVE "a rugged leather aventail"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGMASK:
SETVARIABLE chapter chapter 9
SETVARIABLE product mask
SETVARIABLE mat leather
SAVE "a rugged leather mask"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGGLOVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product glove
SETVARIABLE mat leather
SAVE "some rugged leather gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGCAP:
SETVARIABLE chapter chapter 9
SETVARIABLE product cap
SETVARIABLE mat leather
SAVE "a rugged leather cap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKAVENT:
SETVARIABLE chapter chapter 9
SETVARIABLE product aventail
SETVARIABLE mat leather
SAVE "a thick leather aventail"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKMASK:
SETVARIABLE chapter chapter 9
SETVARIABLE product mask
SETVARIABLE mat leather
SAVE "a thick leather mask"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEAVENT:
SETVARIABLE chapter chapter 9
SETVARIABLE product aventail
SETVARIABLE mat leather
SAVE "a coarse leather aventail"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGHELM:
SETVARIABLE chapter chapter 9
SETVARIABLE product helm
SETVARIABLE mat leather
SAVE "a rugged leather helm"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKGLOVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product gloves
SETVARIABLE mat leather
SAVE "some thick leather gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKCAP:
SETVARIABLE chapter chapter 9
SETVARIABLE product cap
SETVARIABLE mat leather
SAVE "a thick leather cap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEMASK:
SETVARIABLE chapter chapter 9
SETVARIABLE product mask
SETVARIABLE mat leather
SAVE "a coarse leather mask"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGTASSET:
SETVARIABLE chapter chapter 9
SETVARIABLE product tasset
SETVARIABLE mat leather
SAVE "a rugged leather tasset"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGVAMBRACE:
SETVARIABLE chapter chapter 9
SETVARIABLE product vambrace
SETVARIABLE mat leather
SAVE "some rugged leather vambraces"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGGREAVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product greave
SETVARIABLE mat leather
SAVE "some rugged leather greaves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGCOWL:
SETVARIABLE chapter chapter 9
SETVARIABLE product cowl
SETVARIABLE mat leather
SAVE "a rugged leather cowl"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKHELM:
SETVARIABLE chapter chapter 9
SETVARIABLE product helm
SETVARIABLE mat leather
SAVE "a thick leather helm"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEGLOVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product gloves
SETVARIABLE mat leather
SAVE "some coarse leather gloves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSECAP:
SETVARIABLE chapter chapter 9
SETVARIABLE product cap
SETVARIABLE mat leather
SAVE "a coarse leather cap"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGJERKIN:
SETVARIABLE chapter chapter 9
SETVARIABLE product jerkin
SETVARIABLE mat leather
SAVE "a rugged leather jerkin"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKTASSET:
SETVARIABLE chapter chapter 9
SETVARIABLE product tasset
SETVARIABLE mat leather
SAVE "a thick leather tasset"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGMANTLE:
SETVARIABLE chapter chapter 9
SETVARIABLE product mantle
SETVARIABLE mat leather
SAVE "a rugged leather mantle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGVEST:
SETVARIABLE chapter chapter 9
SETVARIABLE product vest
SETVARIABLE mat leather
SAVE "a rugged leather vest"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGSLEEVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product sleeve
SETVARIABLE mat leather
SAVE "some rugged leather sleeves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKVAMBRACE:
SETVARIABLE chapter chapter 9
SETVARIABLE product vambrace
SETVARIABLE mat leather
SAVE "some thick leather vambraces"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKGREAVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product greave
SETVARIABLE mat leather
SAVE "some thick leather greaves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKCOWL:
SETVARIABLE chapter chapter 9
SETVARIABLE product cowl
SETVARIABLE mat leather
SAVE "a thick leather cowl"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEHELM:
SETVARIABLE chapter chapter 9
SETVARIABLE product helm
SETVARIABLE mat leather
SAVE "a coarse leather helm"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKMANTLE:
SETVARIABLE chapter chapter 9
SETVARIABLE product mantle
SETVARIABLE mat leather
SAVE "a thick leather mantle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGCOAT:
SETVARIABLE chapter chapter 9
SETVARIABLE product coat
SETVARIABLE mat leather
SAVE "a rugged leather coat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGROBE:
SETVARIABLE chapter chapter 9
SETVARIABLE product robe
SETVARIABLE mat leather
SAVE "a rugged leather robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKJERKIN:
SETVARIABLE chapter chapter 9
SETVARIABLE product jerkin
SETVARIABLE mat leather
SAVE "a thick leather jerkin"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKSLEEVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product sleeves
SETVARIABLE mat leather
SAVE "some thick leather sleeves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKVEST:
SETVARIABLE chapter chapter 9
SETVARIABLE product vest
SETVARIABLE mat leather
SAVE "a thick leather vest"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSETASSET:
SETVARIABLE chapter chapter 9
SETVARIABLE product tasset
SETVARIABLE mat leather
SAVE "a coarse leather tasset"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEVAMBRACE:
SETVARIABLE chapter chapter 9
SETVARIABLE product vambraces
SETVARIABLE mat leather
SAVE "some coarse leather vambraces"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEGREAVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product greaves
SETVARIABLE mat leather
SAVE "some coarse leather greaves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSECOWL:
SETVARIABLE chapter chapter 9
SETVARIABLE product cowl
SETVARIABLE mat leather
SAVE "a coarse leather cowl"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKROBE:
SETVARIABLE chapter chapter 9
SETVARIABLE product robe
SETVARIABLE mat leather
SAVE "a thick leather robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

RUGLEATHER:
SETVARIABLE chapter chapter 9
SETVARIABLE product leathers
SETVARIABLE mat leather
SAVE "some rugged leathers"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKCOAT:
SETVARIABLE chapter chapter 9
SETVARIABLE product coat
SETVARIABLE mat leather
SAVE "a thick leather coat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEJERKIN:
SETVARIABLE chapter chapter 9
SETVARIABLE product jerkin
SETVARIABLE mat leather
SAVE "a coarse leather jerkin"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEMANTLE:
SETVARIABLE chapter chapter 9
SETVARIABLE product mantle
SETVARIABLE mat leather
SAVE "a coarse leather mantle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSESLEEVE:
SETVARIABLE chapter chapter 9
SETVARIABLE product sleeves
SETVARIABLE mat leather
SAVE "some coarse leather sleeves"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEVEST:
SETVARIABLE chapter chapter 9
SETVARIABLE product vest
SETVARIABLE mat leather
SAVE "a coarse leather vest"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSEROBE:
SETVARIABLE chapter chapter 9
SETVARIABLE product robe
SETVARIABLE mat leather
SAVE "a coarse leather robe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

THICKLEATHER:
SETVARIABLE chapter chapter 9
SETVARIABLE product leathers
SETVARIABLE mat leather
SAVE "some thick leathers"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSECOAT:
SETVARIABLE chapter chapter 9
SETVARIABLE product coat
SETVARIABLE mat leather
SAVE "a coarse leather coat"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

COARSELEATHER:
SETVARIABLE chapter chapter 9
SETVARIABLE product leathers
SETVARIABLE mat leather
SAVE "some coarse leathers"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/
put turn book to page 1
matchwait

LE_SHIELDHAND:
SETVARIABLE chapter chapter 10
SETVARIABLE product handle
SETVARIABLE mat leather
SAVE "a leather shield handle"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_CORD:
SETVARIABLE chapter chapter 10
SETVARIABLE product cord
SETVARIABLE mat leather
SAVE "a long leather cord"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_TARGSHIELD:
SETVARIABLE chapter chapter 10
SETVARIABLE product shield
SETVARIABLE mat leather
SAVE "a leather target shield"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_ORDSHIELD:
SETVARIABLE chapter chapter 10
SETVARIABLE product shield
SETVARIABLE mat leather
SAVE "an ordinary leather shield"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_SMALLSHIELD:
SETVARIABLE chapter chapter 10
SETVARIABLE product shield
SETVARIABLE mat leather
SAVE "a small leather shield"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_BUCKLER:
SETVARIABLE chapter chapter 10
SETVARIABLE product buckler
SETVARIABLE mat leather
SAVE "a leather buckler"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_TARGE:
SETVARIABLE chapter chapter 10
SETVARIABLE product targe
SETVARIABLE mat leather
SAVE "a leather targe"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_OVALSHIELD:
SETVARIABLE chapter chapter 10
SETVARIABLE product shield
SETVARIABLE mat leather
SAVE "a leather oval shield"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_MEDSHIELD:
SETVARIABLE chapter chapter 10
SETVARIABLE product shield
SETVARIABLE mat leather
SAVE "a medium leather shield"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

LE_KITESHIELD:
SETVARIABLE chapter chapter 10
SETVARIABLE product shield
SETVARIABLE mat leather
SAVE "a leather kite shield"
put stow logb
put get %book
put turn book to %chapter
match TAI_START %s
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/
put turn book to page 1
matchwait

TAI_CHAPT1:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT1 /spinning|padding|fabrics|yarn|sealing|lightening|weaving|repair|reinforcing/
put turn book to page %c
matchwait

TAI_CHAPT2:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have  
matchre TAI_CHAPT2 /robe|robes|cloak|cape|dress|tunic|shirt|skirt|pants|gloves|scarf|belt|shoes|slippers|hat|veil|kilt|sash|headband|tabard|gown|socks|armband|eyepatch|ankleband/i
put turn book to page %c
matchwait

TAI_CHAPT3:
pause .5
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have  
matchre TAI_CHAPT3 /napkin|pouch|rag|strap|bag|towel|sack|belt|backpack|knapsack|carryall|haversack|bandolier|rucksack/i
put turn book to page %c
matchwait

TAI_CHAPT4:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT4 /hauberk|shirt|pants|vambraces|sleeves|vest|cap|tabard|mantle|cloak|robe|aventail|mask|hood|tasset|gloves/
put turn book to page %c
matchwait

TAI_CHAPT5:
pause 1
counter add 1
match TAI_START2 %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT5 /ankleband|socks|armband|napkin|mittens|headband|slippers|scarf|hat|booties|hood|towel|legwarmers|gloves|shirt|skirt|sweater|hose|cloak|blanket/i
put turn book to page %c
matchwait

TAI_CHAPT7:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT7 /armband|ankleband|gloves|eyepatch|headband|belt|moccasins|shoes|hat|cloak|shirt|skirt|tunic|dress|cape/i
put turn book to page %c
matchwait

TAI_CHAPT8:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT8 /pouch|strap|bag|sack|belt|backpack|knapsack|carryall|haversack|bandolier|rucksack/i
put turn book to page %c
matchwait

TAI_CHAPT9:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT9 /aventail|mask|gloves|cap|helm|tasset|vambraces|greaves|cowl|jerkin|mantle|vest|sleeves|coat|robe|leathers/i
put turn book to page %c
matchwait

TAI_CHAPT10:
pause 1
counter add 1
match TAI_START %s
match ERROR1 This chapter does not have
matchre TAI_CHAPT10 /handle|cord|shield|buckler|targe/i
put turn book to page %c
matchwait


TAI_START:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my scissors
matchre ERROR2 /I could not find|What were you/
match TAI_FIRSTCUT you get
put get my %mat
matchwait

TAI_START2:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my knit needle
pause 1
put get my %mat
matchre KN_PUSH /ready to be pushed|must be pushed/
match KN_TURN Some ribbing should
match KNIT Roundtime
matchre ERROR2 /I could not find|What were you
put knit %mat with my needle
matchwait

KN_PUSH:
put stow my %mat
put push my needle
pause
goto KNIT

KN_TURN:
put stow my %mat
put turn my needle
pause
goto KNIT

KNIT:
put stow %mat
match KNIT Roundtime
match KN_TURN Some ribbing should
matchre KN_PUSH /ready to be pushed|must be pushed/
matchre KN_CAST /must be cast|That tool does not/
put knit my needle 
matchwait

KN_CAST:
pause 2
put cast my needle
waitfor Roundtime
match KN_STAMP You tap
match KN_NOSTAMP I could not find
put stow my needle
put tap stamp
matchwait

KN_STAMP:
put get my stamp
pause 1
match KN_NOSTAMP Roundtime
match ERROR3 damaged
put mark my %product with my stamp
matchwait

KN_NOSTAMP:
put stow right
put stow left
echo ----------------------------
echo ~
echo - You have made another %s
echo ~
echo ----------------------------
goto TAI_START2

TAI_FIRSTCUT:
pause 1
put cut my %mat with scissors
waitfor Roundtime
pause 3
goto TAI_SEW

TAI_SEW:
pause 2
put stow right
put get %needle
matchre SLICKSTONE /a quick ironing|a deep crease develops/i
matchre PINS /Two layers of the fabric won't cooperate|The fabric keeps folding back/i
matchre TAI_STOW /You realize that cannot be repaired|is not damaged enough to warrant/i
match TAI_ASSEMBLE small cloth padding
match TAI_ASSEMBLE2 large cloth padding
match TAI_ASSEMBLE3 shield handle
match TAI_ASSEMBLE4 long leather cord 
match YARDSTICK from some remeasuring
matchre AWL /One leather piece is too thick|a critical section of leather/i
match TAI_SEW Roundtime
match RETHREAD The needles need to have thread
put push my %product with my %needle
matchwait

RETHREAD:
put stow %product
matchre ERROR2 /I could not find|What were you/
match RETHREADa You get
put get my thread
matchwait

RETHREADa:
put put my thread on my needle
put get my %product
pause .5
goto TAI_SEW

YARDSTICK:
pause 2
put stow my %needle
put get my yardstick
put measure my %product with my yardstick
waitfor Roundtime
put get my %needle
put analyze my %product
matchre TAI_SEW /needle and thread|ready for more sewing by pushing/
match SCISSORS scissor
match TAI_ASSEMBLE small cloth padding
match TAI_ASSEMBLE2 large cloth padding
match TAI_ASSEMBLE3 shield handle
match TAI_ASSEMBLE4 long leather cord
matchwait

SCISSORS:
pause 2
put stow right
put get my scissors
pause 2
match TAI_SEW Roundtime
match TAI_SEW That tool does not
match TAI_ASSEMBLE small cloth padding
match TAI_ASSEMBLE2 large cloth padding
match TAI_ASSEMBLE3 shield handle
match TAI_ASSEMBLE4 long leather cord
put cut my %product with my scissors
matchwait

SLICKSTONE:
pause 2
put stow my %needle
put get my slickstone
pause .5
put rub my %product with my slickstone
match TAI_SEW Roundtime
match TAI_ASSEMBLE small cloth padding
match TAI_ASSEMBLE2 large cloth padding
match TAI_ASSEMBLE3 shield handle
match TAI_ASSEMBLE4 long leather cord
matchwait

PINS:
pause 2
put stow my %needle
put get my pins
matchre ERROR2 /I could not find|What were you/
match PINSa you get
matchwait

PINSa:
match TAI_SEW Roundtime
match TAI_ASSEMBLE small cloth padding
match TAI_ASSEMBLE2 large cloth padding
match TAI_ASSEMBLE3 shield handle
match TAI_ASSEMBLE4 long leather cord
put poke my %product with my pins
matchwait

AWL:
pause 2
put stow my %needle
put get my awl
pause .5
match TAI_SEW Roundtime
match TAI_ASSEMBLE small cloth padding
match TAI_ASSEMBLE2 large cloth padding
match TAI_ASSEMBLE3 shield handle
match TAI_ASSEMBLE4 long leather cord
put poke my %product with my awl
matchwait

TAI_ASSEMBLE:
put stow right
pause 2
put get my small padding
match TAI_ASSEMBLEa you get
match ERROR2 What were you
matchwait

TAI_ASSEMBLEa:
put assemble my padding with my %product
pause .5
matchre TAI_SEW /needle and thread|ready for more sewing|unable to discern/
match SCISSORS scissor
match YARDSTICK The fabric's dimensions changed
match PINS The fabric is in need of pinning
match AWL The leather requires some holes
match SLICKSTONE to RUB
put analyze my %product
matchwait

TAI_ASSEMBLE2:
put stow right
pause 2
put get my large padding
match TAI_ASSEMBLE2a you get
match ERROR2 What were you
matchwait

TAI_ASSEMBLE2a:
put assemble my padding with my %product
pause .5
matchre TAI_SEW /needle and thread|ready for more sewing|unable to discern/
match SCISSORS scissor
match YARDSTICK The fabric's dimensions changed
match PINS The fabric is in need of pinning
match AWL The leather requires some holes
match SLICKSTONE to RUB
put analyze my %product
matchwait

TAI_ASSEMBLE3:
put stow right
pause 2
put get my shield handle
match TAI_ASSEMBLE3a you get
match ERROR2 What were you
matchwait

TAI_ASSEMBLE3a:
put assemble my handle with my %product
pause .5
matchre TAI_SEW /needle and thread|ready for more sewing|unable to discern/
match SCISSORS scissor
match YARDSTICK The fabric's dimensions changed
match PINS The fabric is in need of pinning
match AWL The leather requires some holes
match SLICKSTONE to RUB
put analyze my %product 
matchwait

TAI_ASSEMBLE4:
put stow right
pause 2
put get my long cord
match TAI_ASSEMBLE4a you get
match ERROR2 What were you
matchwait

TAI_ASSEMBLE4a:
put assemble my cord with my %product
pause .5
matchre TAI_SEW /needle and thread|ready for more sewing|unable to discern/
match SCISSORS scissor
match YARDSTICK The fabric's dimensions changed
match PINS The fabric is in need of pinning
match AWL The leather requires some holes
match SLICKSTONE to RUB
put analyze my %product 
matchwait

TAI_STOW:
put stow %needle
match TAI_NOSTAMP What were you
match TAI_STAMP You get
put get my stamp
matchwait

TAI_STAMP:
match TAI_NOSTAMP Roundtime
match ERROR3 damaged
put mark %product with stamp
matchwait

TAI_NOSTAMP:
put stow right
put stow left
pause .5
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto TAI_START

REMEDY:
SETVARIABLE book rem book
put read alc logbook
match NOWORK is not currently tracking
match NOWORK work order that has expired
match BLISTCRM some blister cream
match MOISTOINT some moisturizing ointment
match ITCHSALVE some itch salve
match WARTSALVE some wart salve
match STOMTON some stomach tonic
match LIPBALM some lip balm
match MOUTHWASH some mouth wash
match EYEWASH some eye wash
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
match ABDPOT an abdominal potion
match LIMBPOT a limb potion
match EYEPOT an eye potion
match SKINPOT a skin potion
match NECKPOT a neck potion
match BACKPOT a back potion
match HEADTON some head tonic
match CHESTTON some chest tonic
match ABDTON some abdominal tonic
match NECKTON some neck tonic
match EYETON some eye tonic
match BACKTON some back tonic
match LIMBTON some limb tonic
match SKINTON some skin tonic
match BODYOINT some body ointment
match LIMBOINT some limb ointment
match SKINOINT some skin ointment
match GPOINT some general ointment
match GPOINT some general purpose ointment
match FACEPOUL some face poultices
match BODYPOUL some body poultices
match LIMBPOUL some limb poultices
match SKINPOUL some skin poultices
match GPPOUL some general purpose poultices
match GPPOUL some general poultices
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

BLISTCRM:
put stow logb
put get rem book
SETVARIABLE part red flower
SETVARIABLE herb nemoih
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product cream
put turn book to chapter 2
SAVE "some blister cream"
match REM_MAINa blister cream
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

MOISTOINT:
put stow logb
put get rem book
SETVARIABLE part red flower
SETVARIABLE herb plovik
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product ointment
put turn book to chapter 2
SAVE "some moisturizing ointment"
match REM_MAINa moisturizing ointment
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

ITCHSALVE:
put stow logb
put get rem book
SETVARIABLE part red flower
SETVARIABLE herb jadice
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
put turn book to chapter 2
SAVE "some itch salve"
match REM_MAINa itch salve
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

WARTSALVE:
put stow logb
put get rem book
SETVARIABLE part red flower
SETVARIABLE herb sufil
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
put turn book to chapter 2
SAVE "some wart salve"
match REM_MAINa wart salve
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

STOMTON:
put stow logb
put get rem book
SETVARIABLE part crush flower
SETVARIABLE herb muljin
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
put turn book to chapter 2
SAVE "some stomach tonic"
match REM_MAINa stomach tonic
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

LIPBALM:
put stow logb
put get rem book
SETVARIABLE part red flower
SETVARIABLE herb nilos
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product balm
put turn book to chapter 2
SAVE "some lip balm"
match REM_MAINa lip balm
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

MOUTHWASH:
put stow logb
put get rem book
SETVARIABLE part crush flower
SETVARIABLE herb riolur
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product wash
put turn book to chapter 2
SAVE "some mouth wash"
match REM_MAINa mouth wash
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

EYEWASH:
put stow logb
put get rem book
SETVARIABLE part crush flower
SETVARIABLE herb aevaes
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product wash
put turn book to chapter 2
SAVE "some eye wash"
match REM_MAINa eye wash
matchre REM_CHAPT2 /ointment|tonic|cream|wash|salve|balm/
put turn my book to page 1
matchwait

NECKSALVE:
put stow logb
put get my %book
SETVARIABLE herb georin
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "neck salve"
put turn my book to chapter 3
match REM_MAIN neck salve
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

ABDSALVE:
put stow logb
put get my %book
SETVARIABLE herb nilos
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "abdominal salve"
put turn my book to chapter 3
match REM_MAIN abdominal salve 
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

CHESTSALVE:
put stow logb
put get my %book
SETVARIABLE herb plovik
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "chest salve"
put turn my book to chapter 3
match REM_MAIN chest salve
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

HEADSALVE:
put stow logb
put get my %book
SETVARIABLE herb nemoih
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "head salve"
put turn my book to chapter 3
match REM_MAIN head salve 
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

BACKSALVE:
put stow logb
put get my %book
SETVARIABLE herb hulnik
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "back salve"
put turn my book to chapter 3
match REM_MAIN back salve
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

EYESALVE:
put stow logb
put get my %book
SETVARIABLE herb sufil
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "eye salve"
put turn my book to chapter 3
match REM_MAIN eye salve
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

SKINSALVE:
put stow logb
put get my %book
SETVARIABLE herb cebi
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "skin salve"
put turn my book to chapter 3
match REM_MAIN skin salve
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

LIMBSALVE:
put stow logb
put get my %book
SETVARIABLE herb jadice
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product salve
SAVE "limb salve" 
put turn my book to chapter 3
match REM_MAIN limb salve
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

NECKUNG:
put stow logb
put get my %book
SETVARIABLE herb georin
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "neck ungent"
put turn my book to chapter 3
match REM_MAIN neck ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

ABDUNG:
put stow logb
put get my %book
SETVARIABLE herb nilos
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "abdominal ungent"
put turn my book to chapter 3
match REM_MAIN abdominal ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

CHESTUNG:
put stow logb
put get my %book
SETVARIABLE herb plovik
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "chest ungent"
put turn my book to chapter 3
match REM_MAIN chest ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

HEADUNG:
put stow logb
put get my %book
SETVARIABLE herb nemoih
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "head ungent"
put turn my book to chapter 3
match REM_MAIN head ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

BACKUNG:
put stow logb
put get my %book
SETVARIABLE herb hulnik 
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "back ungent"
put turn my book to chapter 3
match REM_MAIN back ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

EYEUNG:
put stow logb
put get my %book
SETVARIABLE herb sufil
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "eye ungent"
put turn my book to chapter 3
match REM_MAIN eye ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

SKINUNG:
put stow logb
put get my %book
SETVARIABLE herb cebi
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "skin ungent"
put turn my book to chapter 3
match REM_MAIN skin ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

LIMBUNG:
put stow logb
put get my %book
SETVARIABLE herb jadice
SETVARIABLE liquid water
SETVARIABLE container mortar
SETVARIABLE product ungent
SAVE "limb ungent"
put turn my book to chapter 3
match REM_MAIN limb ungent
matchre REM_CHAPT3 /salve|ungent/
put turn my book to page 1
matchwait

NECKPOT:
put stow logb
put get my %book
SETVARIABLE herb riolur
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "neck potion"
put turn my book to chapter 4
match REM_MAIN2 neck potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

ABDPOT:
put stow logb
put get my %book
SETVARIABLE herb muljin
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "abdominal potion"
put turn my book to chapter 4
match REM_MAIN2 abdominal potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

CHESTPOT:
put stow logb
put get my %book
SETVARIABLE herb ithor
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "chest potion"
put turn my book to chapter 4
match REM_MAIN2 chest potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

HEADPOT:
put stow logb
put get my %book
SETVARIABLE herb eghmok
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "head potion"
put turn my book to chapter 4
match REM_MAIN2 head potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

BACKPOT:
put stow logb
put get my %book
SETVARIABLE herb junliar
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "back potion"
put turn my book to chapter 4
match REM_MAIN2 back potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

EYEPOT:
put stow logb
put get my %book
SETVARIABLE herb aevaes
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "eye potion"
put turn my book to chapter 4
match REM_MAIN2 eye potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

SKINPOT:
put stow logb
put get my %book
SETVARIABLE herb lujeakave
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "skin potion"
put turn my book to chapter 4
match REM_MAIN2 skin potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

LIMBPOT:
put stow logb
put get my %book
SETVARIABLE herb yelith
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product potion
SAVE "limb potion"
put turn my book to chapter 4
match REM_MAIN2 limb potion
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

NECKTON:
put stow logb
put get my %book
SETVARIABLE herb riolur
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "neck tonic"
put turn my book to chapter 4
match REM_MAIN2 neck tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

ABDTON:
put stow logb
put get my %book
SETVARIABLE herb muljin
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "abdominal tonic"
put turn my book to chapter 4
match REM_MAIN2 abdominal tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

CHESTTON:
put stow logb
put get my %book
SETVARIABLE herb ithor
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "chest tonic"
put turn my book to chapter 4
match REM_MAIN2 chest tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

HEADTON:
put stow logb
put get my %book
SETVARIABLE herb eghmok
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "head tonic"
put turn my book to chapter 4
match REM_MAIN2 head tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

BACKTON:
put stow logb
put get my %book
SETVARIABLE herb junliar
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "back tonic"
put turn my book to chapter 4
match REM_MAIN2 back tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

EYETON:
put stow logb
put get my %book
SETVARIABLE herb aevaes
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "eye tonic"
put turn my book to chapter 4
match REM_MAIN2 eye tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

SKINTON:
put stow logb
put get my %book
SETVARIABLE herb lujeakave
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "skin tonic"
put turn my book to chapter 4
match REM_MAIN2 skin tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

LIMBTON:
put stow logb
put get my %book
SETVARIABLE herb yelith
SETVARIABLE liquid water
SETVARIABLE container bowl
SETVARIABLE product tonic
SAVE "limb tonic"
put turn my book to chapter 4
match REM_MAIN2 limb tonic
matchre REM_CHAPT4 /potion|tonic/
put turn my book to page 1
matchwait

FACEOINT:
put stow logb
put get my %book
SETVARIABLE herb qun
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product ointment
SAVE "face ointment" 
put turn my book to chapter 5
match REM_MAIN face ointment
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

BODYOINT:
put stow logb
put get my %book
SETVARIABLE herb genich
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product ointment
SAVE "body ointment"
put turn my book to chapter 5
match REM_MAIN body ointment
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

LIMBOINT:
put stow logb
put get my %book
SETVARIABLE herb blocil
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product ointment
SAVE "limb ointment"
put turn my book to chapter 5
match REM_MAIN limb ointment
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

SKINOINT:
put stow logb
put get my %book
SETVARIABLE herb cebi
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product ointment
SAVE "skin ointment"
put turn my book to chapter 5
match REM_MAIN skin ointment
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

GPOINT:
put stow logb
put get my %book
SETVARIABLE herb 
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product ointment
SAVE ""
put turn my book to chapter 5
match REM_MAIN general purpose ointment
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

FACEPOUL:
put stow logb
put get my %book
SETVARIABLE herb qun
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product poultice
SAVE "face poultices"
put turn my book to chapter 5
match REM_MAIN face poultices
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

BODYPOUL:
put stow logb
put get my %book
SETVARIABLE herb genich
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product poultice
SAVE "body poultices"
put turn my book to chapter 5
match REM_MAIN body poultices
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

LIMBPOUL:
put stow logb
put get my %book
SETVARIABLE herb blocil
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product poultice
SAVE "limb poultices"
put turn my book to chapter 5
match REM_MAIN limb poultices
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

SKINPOUL:
put stow logb
put get my %book
SETVARIABLE herb cebi
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product poultice
SAVE "skin poultices"
put turn my book to chapter 5
match REM_MAIN skin poultices
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

GPPOUL:
put stow logb
put get my %book
SETVARIABLE herb 
SETVARIABLE liquid alcohol
SETVARIABLE container mortar
SETVARIABLE product poultice
SAVE "general poultices"
put turn my book to chapter 5
match REM_MAIN general poultices
matchre REM_CHAPT5 /ointment|poultices/
put turn my book to page 1
matchwait

BODYDRAUGHT:
put stow logb
put get my %book
SETVARIABLE herb ojhenik
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product draught
SAVE "body draught"
put turn my book to chapter 6
match REM_MAIN2 body draught
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

FACEDRAUGHT:
put stow logb
put get my %book
SETVARIABLE herb hulij
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product draught
SAVE "face draught"
put turn my book to chapter 6
match REM_MAIN2 face draught
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

LIMBDRAUGHT:
put stow logb
put get my %book
SETVARIABLE herb nuloe
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product draught
SAVE "limb draught"
put turn my book to chapter 6
match REM_MAIN2 limb draught
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

SKINDRAUGHT:
put stow logb
put get my %book
SETVARIABLE herb hisan
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product draught
SAVE "skin draught"
put turn my book to chapter 6
match REM_MAIN2 skin draught
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

GPDRAUGHT:
put stow logb
put get my %book
SETVARIABLE herb belradi
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product draught
SAVE "general purpose draught"
put turn my book to chapter 6
match REM_MAIN2 general purpose draught
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

SKINELIX:
put stow logb
put get my %book
SETVARIABLE herb hisan
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product elixir
SAVE "skin elixir"
put turn my book to chapter 6
match REM_MAIN2 skin elixir
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

LIMBELIX:
put stow logb
put get my %book
SETVARIABLE herb nuloe
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product elixir
SAVE "limb elixir"
put turn my book to chapter 6
match REM_MAIN2 limb elixir
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

BODYELIX:
put stow logb
put get my %book
SETVARIABLE action mix
SETVARIABLE herb ojhenik
SETVARIABLE liquid alcohol
SETVARIABLE catalyst seolarn
SETVARIABLE tool mix stick
SETVARIABLE container bowl
SETVARIABLE product elixir
SETVARIABLE chapter chapter 6
SAVE "body elixir"
put turn my book to chapter 6
match REM_MAIN2 body elixir
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

FACEELIX:
put stow logb
put get my %book
SETVARIABLE herb hulij
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product elixir
SAVE "face elixir"
put turn my book to chapter 6
match REM_MAIN2 face elixir
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait

GPELIX:
put stow logb
put get my %book
SETVARIABLE herb belradi
SETVARIABLE liquid alcohol
SETVARIABLE container bowl
SETVARIABLE product elixir
SAVE "general elixir"
put turn my book to chapter 6
match REM_MAIN2 general elixir
matchre REM_CHAPT6 /draught|elixir/
put turn my book to page 1
matchwait


REM_CHAPT2:
pause .5
counter add 1
match REM_MAINa %s
match ERROR1 This chapter does not have  
matchre REM_CHAPT2 /salve|wash|balm|tonic|ointment|cream/
put turn book to page %c
matchwait

REM_CHAPT3:
pause .5
counter add 1
match REM_MAIN %s
match ERROR1 This chapter does not have  
matchre REM_CHAPT3 /salve|ungent/
put turn book to page %c
matchwait

REM_CHAPT4:
pause .5
counter add 1
match REM_MAIN2 %s
match ERROR1 This chapter does not have
matchre REM_CHAPT4 /potion|tonic/
put turn book to page %c
matchwait

REM_CHAPT5:
pause .5
counter add 1
match REM_MAIN %s
match ERROR1 This chapter does not have
matchre REM_CHAPT5 /ointment|poultices/
put turn book to page %c
matchwait

REM_CHAPT6:
pause .5
counter add 1
match REM_MAIN2 %s
match ERROR1 This chapter does not have
matchre REM_CHAPT6 /draught|elixir/
put turn book to page %c
matchwait

#############################################
#REM_CHAPT7:
#counter add 1
#match REM_MAIN %s
#match ERROR1 This chapter does not have
#match REM_CHAPT7 blank
#match REM_CHAPT7 blank
#put turn book to page %c
#matchwait
##############################################

REM_MAIN:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my %container
pause 1
put get my %herb
put put my %herb in my %container
pause 1
put stow my %herb
put get my pestle
goto CRUSH

REM_MAIN2:
put get my %book
put study my book
waitfor Roundtime
pause 2
put stow my book
put get my %container
pause 1
put get my %herb
put put my %herb in my %container
pause 1
put stow my %herb
put get my mix stick
goto MIX

REM_MAINa:
put get my %book
put study my rem book
waitfor Roundtime
pause 2
put stow my book
put get my %container
pause 1
put get my %part
put put my %part in my %container
match REM_MAINa1 mortar
match REM_MAINa2 bowl
put inv held
matchwait

REM_MAINa1:
pause 1
put stow my %part
put get my pestle
put crush my %part with my pestle
waitfor Roundtime
pause 2
put stow my pestle
put get my %liquid
pause 1
put pour my %liquid in my %container
put stow my %liquid
matchre CRUSHa /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURNa clumps of material
match SMELLa takes on an odd hue
match SIEVEa a thick froth coats
put analyze my %product
matchwait

REM_MAINa2:
pause 1
put stow my %part
put get my mix stick
put mix my %container with my mix stick
waitfor Roundtime
pause 2
put stow my mix stick
put get my %liquid
pause 1
put pour my %liquid in my %container
put stow my %liquid
pause 1
matchre MIXa /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURNb clumps of material
match SMELLb takes on an odd hue
match SIEVEb a thick froth coats
put analyze my %product
matchwait

CRUSH:
pause 2
put crush %herb with pestle
waitfor Roundtime
put stow pestle
put get %liquid
put pour %liquid in %container
put stow %liquid
put analyze %product
matchre CRUSH2 /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURN clumps of material
match SMELL takes on an odd hue
match SIEVE a thick froth coats
matchwait

CRUSH2:
pause 2
put stow left
put get pestle
put crush %product with pestle
match CRUSH2 Roundtime
match CATALYST catalyst material
match TURN clumps
match SMELL transition colors
match SIEVE butting
match REM_STOW interesting thought really
matchwait

CRUSHa:
pause 2
put stow left
put get my pestle
put crush my %product with my pestle
match ADDHERBa prepared herb
match TURNa clumps
match SMELLa transition colors
match SIEVEa butting
match CRUSHa Roundtime
match REM_STOWa Interesting thought really
match CATALYSTa catalyst material
matchwait

MIX:
pause 2
put mix my %container with my mix stick
waitfor Roundtime
put stow my mix stick
put get my %liquid
put pour my %liquid in my %container
put stow my %liquid
matchre MIX2 /you do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURN2 clumps of material
match SMELL2 takes on an odd hue
match SIEVE2 a thick froth coats
put analyze my %product
matchwait

MIX2:
pause 2
put stow left
put get my mix stick
put mix my %container with my mix stick
match MIX2 Roundtime
match CATALYST2 catalyst material
match TURN2 clumps
match SMELL2 transition colors
match SIEVE2 butting
matchre REM_STOW2 /Interesting thought really|Try as you might/
matchwait

MIXa:
pause 2
put stow left
put get my mix stick
put mix my %container with my mix stick
match ADDHERBb prepared herb
match TURNb clumps
match SMELLb transition colors
match SIEVEb butting
match MIXa Roundtime
matchre REM_STOWa /Interesting thought really|Try as you might/
match CATALYSTb catalyst material
matchwait

ADDHERBa:
put stow left
put get %herb
pause 1
put put %herb in my %container
put stow %herb
pause 1
matchre CRUSHa /you do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURNa clumps of material
match SMELLa takes on an odd hue
match SIEVEa a thick froth coats
put analyze my %product
matchwait

ADDHERBb:
put stow left
put get %herb
pause 1
put put %herb in my %container
put stow %herb
pause 1
matchre MIXa /you do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURNb clumps of material
match SMELLb takes on an odd hue
match SIEVEb a thick froth coats
put analyze my %product
matchwait
 
TURN:
pause 2
put turn %container
match CRUSH2 Roundtime
match CATALYST catalyst material
matchwait

TURN2:
put turn %container
match MIX2 Roundtime
match CATALYST2 catalyst material
matchwait

TURNa:
put turn %container
match CRUSHa Roundtime
match ADDHERBa prepared herb
match CATALYSTa catalyst material
matchwait

TURNb:
put turn %container
match MIXa Roundtime
match ADDHERBb prepared herb
match CATALYSTb catalyst material
matchwait

SMELL:
pause 2
put smell %product
match CRUSH2 Roundtime
match CATALYST catalyst material
matchwait

SMELL2:
pause 2
put smell %product
match MIX2 Roundtime
match CATALYST2 catalyst material
matchwait

SMELLa:
pause 2
put smell %product
match CRUSHa Roundtime
match ADDHERBa prepared herb
match CATALYSTa catalyst material
matchwait

SMELLb:
pause 2
put smell %product
match MIXa Roundtime
match ADDHERBb prepared herb
match CATALYSTb catalyst material
matchwait

SIEVE:
pause 2
put stow l
put get sieve
put push %product with sieve
match CRUSH2 Roundtime
match CATALYST catalyst material
matchwait

SIEVE2:
pause 2
put stow l
put get sieve
put push %product with sieve
match MIX2 Roundtime
match CATALYST2 catalyst material
matchwait

SIEVEa:
pause 2
put stow l
put get sieve
put push %product with sieve
match CRUSHa Roundtime
match ADDHERBa prepared herb
match CATALYSTa catalyst material
matchwait

SIEVEb:
pause 2
put stow l
put get sieve
put push %product with sieve
match MIXa Roundtime
match ADDHERBb prepared herb
match CATALYSTb catalyst material
matchwait

CATALYST:
pause 2
put stow l
put get %1
pause 1
put put %1 in %container
put stow %1
pause 1
matchre CRUSH2 /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURN clumps of material
match SMELL takes on an odd hue
match SIEVE a thick froth coats
put analyze my %product
matchwait

CATALYST2:
pause 2
put stow l
put get my %1
pause 1
put put my %1 in my %container
put stow %1
pause 1
matchre MIX2 /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURN2 clumps of material
match SMELL2 takes on an odd hue
match SIEVE2 a thick froth coats
put analyze my %product
matchwait

CATALYSTa:
pause 2
put stow l
put get my %1
pause 1
put put my %1 in my %container
put stow %1
pause 1
matchre CRUSHa /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURNa clumps of material
match SMELLa takes on an odd hue
match SIEVEa a thick froth coats
put analyze my %product
matchwait

CATALYSTb:
pause 2
put stow l
put get my %1
pause 1
put put my %1 in my %container
put stow %1
pause 1
matchre MIXa /You do not see|appears free of defects|composition looks accurate|unable to discern/i
match TURNb clumps of material
match SMELLb takes on an odd hue
match SIEVEb a thick froth coats
put analyze my %product
matchwait

REM_STOW:
put stow l
match REM_NOSTAMP What were you
match REM_STAMP You get
put get my stamp
matchwait

REM_STAMP:
put mark my %product with stamp
waitfor Roundtime
pause 2
put stow l
put get %product in my %container
put stow my %product
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto REM_MAIN

REM_NOSTAMP:
put stow l
put get %product
pause .5
put stow %product
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto REM_MAIN

REM_STOW2:
put stow l
match REM_NOSTAMP2 What were you
match REM_STAMP2 You get
put get my stamp
matchwait

REM_STAMP2:
put mark %product with stamp
waitfor Roundtime
pause 2
put stow l
put get %product
put stow %product
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto REM_MAIN2

REM_NOSTAMP2:
put stow l
put get %product
pause 1
put stow %product
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto REM_MAIN2

REM_STOWa:
echo REM_STOWa
put stow l
match REM_NOSTAMPa What were you
match REM_STAMPa You get
put get my stamp
matchwait

REM_STAMPa:
put mark %product with stamp
waitfor Roundtime
pause 2
put stow l
put get %product
put stow %product
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto REM_MAINa

REM_NOSTAMPa:
put stow l
put get %product
pause .5
put stow %product
echo -------------------------------
echo =  You have made another %s
echo =
echo -------------------------------
goto REM_MAINa

ERROR1:
echo
echo I could not find the product you were looking for, please
echo review the script to ensure the product is in its correct chapter
echo
exit

ERROR2:
echo 
echo I could not find materials to work with, please double check that containers
echo with the materials are open, or purchase more.
echo
exit

ERROR3:
echo ***
echo *** Your stamp and your tools are in need of repair. Get them fixed.
echo ***
echo ***
exit

ERROR4:
echo ***
echo *** You don't have enough material to make this item!
echo ***
echo ***
exit
