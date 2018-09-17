### Actions and Lists ###
action put #beep;put #flash when ^(.+) (say|says|asks|exlaims|whispers)

##LOOT Variables
var gems1 agate|alexandrite|amber|amethyst|andalusite|aquamarine|bead|beryl|bloodgem|bloodstone|carnelian|chalcedony|chrysoberyl|chrysoprase|citrine
var gems2 coral|crystal|diamond|diopside|\begg\b|eggcase|emerald|garnet|\bgem\b|glossy malachite|goldstone|(chunk of|some|piece of).*granite|hematite|iolite|ivory
var gems3 jade|jasper|kunzite|lapis lazuli|malachite stone|minerals|moonstone|morganite|onyx|opal|pearl|pebble|peridot|quartz|ruby
var gems4 sapphire|spinel|star-stone|sunstone|talon|tanzanite|tooth|topaz|tourmaline|tsavorite|turquoise|zircon
var gweths (jadeite|lantholite|lasmodi|sjatmal|waermodi) stones
var boxtype brass|copper|deobar|driftwood|iron|ironwood|mahogany|oaken|pine|steel|wooden
var boxes \bbox\b|caddy|casket|chest|coffer|crate|skippet|strongbox|trunk
var junkloot fragment|hhr'lav'geluhh bark|lockpick|ostracon|package|papyrus roll|runestone|scroll|sheiska leaf|smudged parchment|tablet|vellum
var collectibles albredine ring|(?<!crossbow) \bbolts?\b|crystal ring|\bdira\b|flarmencrank|\bgear\b|glarmencoupler|kirmhiro draught|\bmap\b|\bnuts?\b|package|rackensprocket|soulstone|spangleflange

##Monster Variables
var monsters1 armored warklin|ashu hhinvi|atik'et|bloodvine|bucca|clay archer|clay mage|clay soldier|\bcrag\b|creeper|cutthroat
var monsters2 dragon fanatic|dragon priest|dryad|dummy|dusk ogre|dyrachis|eviscerator|faenrae assassin|fendryad|fire maiden|folsi immola
var monsters3 footpad|frostweaver|gam chaga|\bgeni\b|gidii|goblin shaman|graverobber|guardian|gypsy marauder|\bimp\b|juggernaut
var monsters4 kelpie|kra'hei|kra'hei hatchling|lipopod|lun'shele hunter|madman|malchata|mountain giant|nipoh oshu|\bnyad\b|orc bandit
var monsters5 orc clan chief|orc raider|orc reiver|orc scout|pile of rubble|pirate|river sprite|ruffian|scavenger troll|scout ogre|screamer
var monsters6 sentinel|shadow master|shadoweaver|sky giant|sleazy lout|sprite|swain|swamp troll|telga moradu|\bthug\b|trekhalo
var monsters7 tress|umbramagii|velver|\bvine\b|vykathi builder|vykathi excavator|wood troll|young ogre|zealot

var undead1 boggle|emaciated umbramagus|fiend|gargantuan bone golem|olensari mihmanan|plague wraith
var undead2 revivified mutt|shylvic|sinister maelshyvean heirophant|skeletal peon|skeletal sailor|skeleton
var undead3 skeleton kobold headhunter|skeleton kobold savage|snaer hafwa|soul|spectral pirate|spectral sailor
var undead4 spirit|ur hhrki'izh|wind hound|wir dinego|zombie|zombie nomad

var skinnablemonsters1 angiswaerd hatchling|antelope|arbelog|armadillo|arzumo|asaren celpeze|badger|barghest|basilisk|\bbear\b|beisswurm|black ape
var skinnablemonsters2 blight ogre|blood warrior|\bboa\b|\bboar\b|bobcat|boobrie|brocket deer|burrower|caiman|caracal|carcal|cave troll
var skinnablemonsters3 cinder beast|cougar|\bcrab\b|crayfish|crocodile|\bdeer\b|dobek moruryn|faenrae stalker|firecat|\bfrog\b|gargoyle|giant blight bat
var skinnablemonsters4 goblin|grass eel|\bgrub\b|gryphon|Isundjen conjurer|jackal|kartais|kobold|la'heke|larva|la'tami|leucro
var skinnablemonsters5 marbled angiswaerd|merrows|\bmoda\b|\bmoth\b|mottled westanuryn|musk hog|\bpard\b|peccary|pivuh|poloh'izh|pothanit|\bram\b
var skinnablemonsters6 \brat\b|retan dolomar|rock troll|scaly seordmaor|serpent|shadow beast|shadow mage|shalswar|silverfish|sinuous elsralael|skunk|S'lai scout
var skinnablemonsters7 sleek hele'la|sluagh|snowbeast|\bsow\b|spider|spirit dancer|steed|trollkin|\bunyn\b|viper|vulture|vykathi harvester
var skinnablemonsters8 vykathi soldier|warcat|\bwasp\b|\bwolf\b|\bworm\b

var skinnableundead1 enraged tusky|fell hog|ghoul|ghoul crow|gremlin|grendel|lach|mastiff|mey|misshapen germish'din
var skinnableundead2 mutant togball|reaver|shadow hound|squirrel|zombie head-splitter|zombie kobold headhunter|zombie kobold savage|zombie mauler|zombie stomper

var construct ashu hhinvi|boggle|bone amalgam|clay archer|clay mage|clay soldier|clockwork assistant|gam chaga|glass construct|granite gargoyle|lachmate|lava drake|marble gargoyle|origami \S+|quartz gargoyle|rock guardian|rough-hewn doll
var skinnableconstruct granite gargoyle|lava drake|marble gargoyle|quartz gargoyle

var invasioncritters bone amalgam|bone warrior|flea-ridden beast|Prydaen|putrefying shambler|Rakash|revivified mutt|shambling horror|skeletal peon|transmogrified oaf

var skinnablecritters %skinnablemonsters1|%skinnablemonsters2|%skinnablemonsters3|%skinnablemonsters4|%skinnablemonsters5|%skinnablemonsters6|%skinnablemonsters7|%skinnablemonsters8|%skinnableundead1|%skinnableundead2
var nonskinnablecritters %monsters1|%monsters2|%monsters3|%monsters4|%monsters5|%monsters6|%monsters7|%undead1|%undead2|%undead3|%undead4

var ritualcritters %monsters1|%monsters2|%monsters3|%monsters4|%monsters5|%monsters6|%monsters7|%skinnablemonsters1|%skinnablemonsters2|%skinnablemonsters3|%skinnablemonsters4|%skinnablemonsters5|%skinnablemonsters6|%skinnablemonsters7|%skinnablemonsters8

var critters %nonskinnablecritters|%skinnablecritters|%invasioncritter


### VARIABLE PARAMETERS ####
var sKIN ON
var AUG ON
var WARD ON
var DEBIL ON
var UTIL ON
var POWER ON


##SPELL VARS##
var augspell hodi
var augmana 5
var wardpsell gj 
var wardmana 5
var utilspell eye 
var utilmana 5
var debilspell aewo
var debilmana 5
var cambrinth armband
var camcharge 10
var caminvoke 3

##WEAPON VARS##
SETUP:



BEGIN:

if $Perception.LearningRate < 30 then
{
	put hunt
	wait
	pause 1
}

if $Attunement.LearningRate < 30 then
{
	put power
	wait
	pause 1
}



if matchre ("$monsterlist", /b(%critters)/b" then goto ADVANCE
goto WAIT

ADVANCE:
var monster $0
if $Appraisal.LearningRate < 30 then
{
	put appr %monster
	wait
	pause 1
}

gosub MAGIC

if "%stealth" = "ON" then goto STEALTHADVANCE

put ad %monster

matchre ATTACK melee
matchre WAIT advance towards?
matchre LOOT You stop advancing
matchre SEARCH You have lost sight
matchwait 20
goto WAIT

ATTACK:




LOOT:




MAGIC:



DONE:



SEARCH:
put search
wait
pause 1
if matchre ("$monsterlist", /b(%critters)/b" then put point $0
goto ADVANCe