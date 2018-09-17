IF_1 GOTO %1
GOTO INIT

CHECK:
#Initialize supplies
setvar need_aevaes 1
setvar need_aloe 1
setvar need_blocil_or_junliar 1
setvar need_cebi 1
setvar need_eghmok 1
setvar need_georin 1
setvar need_hisan 1
setvar need_hulnik 1
setvar need_ithor 1
setvar need_jadice 1
setvar need_lujeakave 1
setvar need_muljin 1
setvar need_nemoih 1
setvar need_nilos 1
setvar need_plovik 1
setvar need_riolur 1
setvar need_sufil 1
setvar need_yelith 1

action setvariable need_aevaes 0 when ^You rummage.*aevaes
action setvariable need_aloe 0 when ^You rummage.*aloe
action setvariable need_blocil_or_junliar 0 when ^You rummage.*(blocil|junliar)
action setvariable need_cebi 0 when ^You rummage.*cebi
action setvariable need_eghmok 0 when ^You rummage.*eghmok
action setvariable need_georin 0 when ^You rummage.*georin
action setvariable need_hisan 0 when ^You rummage.*hisan
action setvariable need_hulnik 0 when ^You rummage.*hulnik
action setvariable need_ithor 0 when ^You rummage.*ithor
action setvariable need_jadice 0 when ^You rummage.*jadice
action setvariable need_lujeakave 0 when ^You rummage.*lujeakave
action setvariable need_muljin 0 when ^You rummage.*muljin
action setvariable need_nemoih 0 when ^You rummage.*nemoih
action setvariable need_nilos 0 when ^You rummage.*nilos
action setvariable need_plovik 0 when ^You rummage.*plovik
action setvariable need_riolur 0 when ^You rummage.*riolur
action setvariable need_sufil 0 when ^You rummage.*sufil
action setvariable need_yelith 0 when ^You rummage.*yelith

put rummage in my herb pouch
waitforre ^You rummage
GOTO supplies

INIT:
#Initialize supplies
setvar need_aevaes 1
setvar need_aloe 1
setvar need_blocil_or_junliar 1
setvar need_cebi 1
setvar need_eghmok 1
setvar need_georin 1
setvar need_hisan 1
setvar need_hulnik 1
setvar need_ithor 1
setvar need_jadice 1
setvar need_lujeakave 1
setvar need_muljin 1
setvar need_nemoih 1
setvar need_nilos 1
setvar need_plovik 1
setvar need_riolur 1
setvar need_sufil 1
setvar need_yelith 1

action setvariable need_aevaes 0 when ^You rummage.*aevaes
action setvariable need_aloe 0 when ^You rummage.*aloe
action setvariable need_blocil_or_junliar 0 when ^You rummage.*(blocil|junliar)
action setvariable need_cebi 0 when ^You rummage.*cebi
action setvariable need_eghmok 0 when ^You rummage.*eghmok
action setvariable need_georin 0 when ^You rummage.*georin
action setvariable need_hisan 0 when ^You rummage.*hisan
action setvariable need_hulnik 0 when ^You rummage.*hulnik
action setvariable need_ithor 0 when ^You rummage.*ithor
action setvariable need_jadice 0 when ^You rummage.*jadice
action setvariable need_lujeakave 0 when ^You rummage.*lujeakave
action setvariable need_muljin 0 when ^You rummage.*muljin
action setvariable need_nemoih 0 when ^You rummage.*nemoih
action setvariable need_nilos 0 when ^You rummage.*nilos
action setvariable need_plovik 0 when ^You rummage.*plovik
action setvariable need_riolur 0 when ^You rummage.*riolur
action setvariable need_sufil 0 when ^You rummage.*sufil
action setvariable need_yelith 0 when ^You rummage.*yelith

# Initialize wound variables
setvar nerves 0
setvar skin 0
setvar ext_head 0
setvar int_head 0
setvar ext_neck 0
setvar int_neck 0
setvar ext_chest 0
setvar int_chest 0
setvar ext_abdomen 0
setvar int_abdomen 0
setvar ext_back 0
setvar int_back 0
setvar ext_limb 0
setvar int_limb 0
setvar ext_eye 0
setvar int_eye 0
setvar ext_scar 0
setvar int_scar 0

#Initialize preparation variables
send rummage in my herb pouch
action setvariable prep_aevaes $1 when ^You rummage .+ aevaes (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_aevaes leaf when ^You rummage .+ aevaes leaves
action setvariable prep_aevaes mead when ^You rummage .+ mead flavored with aevaes
action setvariable prep_aloe $1 when ^You rummage .+ aloe (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_aloe leaf when ^You rummage .+ aloe leaves
action setvariable prep_blocil $1 when ^You rummage .+ blocil (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_blocil leaf when ^You rummage .+ blocil leaves
action setvariable prep_blocil scone when ^You rummage .+ blocil berry scone
action setvariable prep_cebi $1 when ^You rummage .+ cebi (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_cebi leaf when ^You rummage .+ cebi leaves
action setvariable prep_eghmok $1 when ^You rummage .+ eghmok (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_eghmok leaf when ^You rummage .+ eghmok leaves
action setvariable prep_georin $1 when ^You rummage .+ georin (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_georin leaf when ^You rummage .+ georin leaves
action setvariable prep_hisan $1 when ^You rummage .+ hisan (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_hisan leaf when ^You rummage .+ hisan leaves
action setvariable prep_hulnik $1 when ^You rummage .+ hulnik (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_hulnik leaf when ^You rummage .+ hulnik leaves
action setvariable prep_ithor $1 when ^You rummage .+ ithor (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_ithor leaf when ^You rummage .+ ithor leaves
action setvariable prep_jadice $1 when ^You rummage .+ jadice (balm|berries|coffee|elixir|flower|grass|leaf|mash|moss|potion|powder|pulp|root|salve|sap|solution|stem|tea|tincture)
action setvariable prep_jadice leaf when ^You rummage .+ jadice leaves
action setvariable prep_jadice sticky-bun when ^You rummage .+ jadice pollen sticky-bun
action setvariable prep_junliar $1 when ^You rummage .+ junliar (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_junliar leaf when ^You rummage .+ junliar leaves
action setvariable prep_lujeakave $1 when ^You rummage .+ lujeakave (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_lujeakave leaf when ^You rummage .+ lujeakave leaves
action setvariable prep_muljin $1 when ^You rummage .+ muljin (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_muljin leaf when ^You rummage .+ muljin leaves
action setvariable prep_nemoih $1 when ^You rummage .+ nemoih (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_nemoih leaf when ^You rummage .+ nemoih leaves
action setvariable prep_nilos $1 when ^You rummage .+ nilos (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_nilos leaf when ^You rummage .+ nilos leaves
action setvariable prep_plovik $1 when ^You rummage .+ plovik (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_plovik leaf when ^You rummage .+ plovik leaves
action setvariable prep_riolur $1 when ^You rummage .+ riolur (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_riolur leaf when ^You rummage .+ riolur leaves
action setvariable prep_riolur cookie when ^You rummage .+ riolur shortbread cookie
action setvariable prep_sufil $1 when ^You rummage .+ sufil (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_sulfil leaf when ^You rummage .+ sulfil leaves
action setvariable prep_yelith $1 when ^You rummage .+ yelith (ale|balm|berries|berry|brandy|bread|brownie|butter|cake|coffee|cookie|cornbread|drink|elixir|flower|grass|jam|kefir|leaf|mash|mead|moss|paste|pie|pollen|porridge|potion|powder|puff-pastry|pulp|root|salve|sap|sauce|scone|smoothie|solution|spread|stem|sticky-bun|tart|tea|tincture|yogurt)
action setvariable prep_yelith leaf when ^You rummage .+ yelith leaves
waitforre ^You rummage

# Initialize actions
send health
ACTION setvar nerves 1 WHEN (minor|severe) twitching|difficulty controlling actions|paralysis of the entire body
ACTION setvar skin 1 WHEN (abrasions|scuffing|scratches) (about|across|along|around|from|in|of|on|to) the skin|rash|boils|sores
ACTION setvar ext_head 1 WHEN (abrasions|scuffing|scratches|cuts and bruises|cuts|slashes|holes) (about|across|along|around|from|in|of|on|to) the head|(cracked|crushed) skull|pulpy stump for a head
ACTION setvar int_head 1 WHEN (bruised|swollen|bloated) head|bruising (about|across|along|around|from|in|of|on|to) the head|inside head
ACTION setvar ext_neck 1 WHEN (abrasions|scuffing|scratches|cuts and bruises|cuts|slashes|holes) (about|across|along|around|from|in|of|on|to) the neck|(shattered|useless) neck
ACTION setvar int_neck 1 WHEN bruising (about|across|along|around|from|in|of|on|to) the neck|(bruised|swollen|swollen and shattered) neck|inside neck
ACTION setvar ext_chest 1 WHEN (abrasions|scuffing|scratches|cuts and bruises|cuts|slashes|holes) (about|across|along|around|from|in|of|on|to) the chest|(shattered|destroyed) chest
ACTION setvar int_chest 1 WHEN bruising (about|across|along|around|from|in|of|on|to) the chest|(bruised|swollen) chest|inside chest
ACTION setvar ext_abdomen 1 WHEN (abrasions|scuffing|scratches|cuts and bruises|cuts|slashes|holes) (about|across|along|around|from|in|of|on|to) the abdomen|abdomen deeply gouged|destroyed abdomen
ACTION setvar int_abdomen 1 WHEN  bruising (about|across|along|around|from|in|of|on|to) the abdomen|(bruised|swollen) abdomen|discolored abdomen|inside abdomen
ACTION setvar ext_back 1 WHEN (abrasions|scuffing|scratches|cuts and bruises|cuts|slashes|holes) (about|across|along|around|from|in|of|on|to) the back|(shattered|destroyed) back
ACTION setvar int_back 1 WHEN (about|across|along|around|from|in|of|on|to) the back|(bruised|swollen) back|inside back
ACTION setvar ext_limb 1 WHEN (abrasions|scuffing|scratches|cuts and bruises|cuts|slashes|holes) (about|across|along|around|from|in|of|on|to) the ((right|left) (hand|arm|leg)|tail)|(broken|shattered) ((right|left) (hand|arm|leg)|tail)|stump for a ((right|left) (hand|arm|leg)|tail)
ACTION setvar int_limb 1 WHEN bruising (about|across|along|around|from|in|of|on|to) the ((right|left) (hand|arm|leg)|tail)|(bruised|swollen) ((right|left) (hand|arm|leg)|tail)|inside ((right|left|r\.|l\.) (hand|arm|leg)|tail)
ACTION setvar ext_eye 1 WHEN (black and blue|swollen|bleeding|slashed|shattered) (right|left) eye|cavity for a (right|left) eye
ACTION setvar int_eye 1 WHEN bruising (about|across|along|around|from|in|of|on|to) the (right|left) eye|bruised (right|left) eye|bruised and (crossed|butty|blind) (right|left) eye|inside ((right|left)|r\.|l\.) eye
ACTION setvar ext_scar 1 WHEN a stump for|flesh stump for|gashes|malformed|missing|non-existent|scarred|scarring|scars|shriveled|skin discoloration|skin loss|skin tone|socket|stump
ACTION setvar int_scar 1 WHEN a blind|blank stare|breath|butted|emaciated|move|moving|numbness|pallor|paralyzed|twitch|twitching

#Secondary resupply action
ACTION setvar need_%s 1 WHEN ^That was the last of
pause

#Take herbs for anything that picked up by the triggers

nerves:
if (%nerves = 1) then GOTO heal_nerves
GOTO skin

heal_nerves:
if matchre ("%prep_lujeakave", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_lujeakave", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_lujeakave", "(balm|salve)") then var consume rub
SAVE lujeakave
matchre heal_nerves ...wait
matchre nerves_scar ^You apply|^You drink|^You eat
matchre rub_lujeakave ^Rub what
matchre need_lujeakave ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my lujeakave %prep_lujeakave
matchwait

rub_lujeakave:
send get my lujeakave %prep_lujeakave
matchre need_lujeakave ^What were you referring
matchwait 1
send rub my lujeakave %prep_lujeakave
waitforre ^You rub
send stow my lujeakave %prep_lujeakave
waitforre ^You put|^You stow|^That was the last|^Stow what

nerves_scar:
gosub set_int_scar
goto skin
need_lujeakave:
setvar need_lujeakave 1

skin:
if (%skin = 1) then GOTO heal_skin
GOTO ext_head

heal_skin:
if matchre ("%prep_aloe", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_aloe", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_aloe", "(balm|salve)") then var consume rub
SAVE aloe
matchre heal_skin ...wait
matchre skin_scar ^You apply|^You drink|^You eat
matchre rub_aloe ^Rub what
matchre need_aloe ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my aloe %prep_aloe
matchwait

rub_aloe:
send get my aloe %prep_aloe
matchre need_aloe ^What were you referring
matchwait 1
send rub my aloe %prep_aloe
waitforre ^You rub
send stow my aloe %prep_aloe
waitforre ^You put|^You stow|^That was the last|^Stow what

skin_scar:
gosub set_ext_scar
goto ext_head
need_aloe:
setvar need_aloe 1

ext_head:
if (%ext_head = 1) then GOTO heal_ext_head
GOTO int_head

heal_ext_head:
if matchre ("%prep_nemoih", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_nemoih", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_nemoih", "(balm|salve)") then var consume rub
SAVE nemoih
matchre heal_ext_head ...wait
matchre ext_head_scar ^You apply|^You drink|^You eat
matchre rub_nemoih ^Rub what
matchre need_nemoih ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my nemoih %prep_nemoih
matchwait

rub_nemoih:
send get my nemoih %prep_nemoih
matchre need_nemoih ^What were you referring
matchwait 1
send rub my nemoih %prep_nemoih
waitforre ^You rub
send stow my nemoih %prep_nemoih
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_head_scar:
gosub set_ext_scar
goto int_head
need_nemoih:
setvar need_nemoih 1

int_head:
if (%int_head = 1) then GOTO heal_int_head
GOTO ext_neck

heal_int_head:
if matchre ("%prep_eghmok", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_eghmok", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_eghmok", "(balm|salve)") then var consume rub
SAVE eghmok
matchre heal_int_head ...wait
matchre int_head_scar ^You apply|^You drink|^You eat
matchre rub_eghmok ^Rub what
matchre need_eghmok ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my eghmok %prep_eghmok
matchwait

rub_eghmok:
send get my eghmok %prep_eghmok
matchre need_eghmok ^What were you referring
matchwait 1
send rub my eghmok %prep_eghmok
waitforre ^You rub
send stow my eghmok %prep_eghmok
waitforre ^You put|^You stow|^That was the last|^Stow what

int_head_scar:
gosub set_int_scar
goto ext_neck
need_eghmok:
setvar need_eghmok 1

ext_neck:
if (%ext_neck = 1) then GOTO heal_ext_neck
GOTO int_neck

heal_ext_neck:
if matchre ("%prep_georin", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_georin", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_georin", "(balm|salve)") then var consume rub
SAVE georin
matchre heal_ext_neck ...wait
matchre ext_neck_scar ^You apply|^You drink|^You eat
matchre rub_georin ^Rub what
matchre need_georin ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my georin %prep_georin
matchwait

rub_georin:
send get my georin %prep_georin
matchre need_georin ^What were you referring
matchwait 1
send rub my georin %prep_georin
waitforre ^You rub
send stow my georin %prep_georin
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_neck_scar:
gosub set_ext_scar
goto int_neck
need_georin:
setvar need_georin 1

int_neck:
if (%int_neck = 1) then GOTO heal_int_neck
GOTO ext_chest

heal_int_neck:
if matchre ("%prep_riolur", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_riolur", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_riolur", "(balm|salve)") then var consume rub
SAVE riolur
matchre heal_int_neck ...wait
matchre int_neck_scar ^You apply|^You drink|^You eat
matchre rub_riolur ^Rub what
matchre need_riolur ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my riolur %prep_riolur
matchwait

rub_riolur:
send get my riolur %prep_riolur
matchre need_riolur ^What were you referring
matchwait 1
send rub my riolur %prep_riolur
waitforre ^You rub
send stow my riolur %prep_riolur
waitforre ^You put|^You stow|^That was the last|^Stow what

int_neck_scar:
gosub set_int_scar
goto ext_chest
need_riolur:
setvar need_riolur 1

ext_chest:
if (%ext_chest = 1) then GOTO heal_ext_chest
GOTO int_chest

heal_ext_chest:
if matchre ("%prep_plovik", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_plovik", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_plovik", "(balm|salve)") then var consume rub
SAVE plovik
matchre heal_ext_chest ...wait
matchre ext_chest_scar ^You apply|^You drink|^You eat
matchre rub_plovik ^Rub what
matchre need_plovik ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my plovik %prep_plovik
matchwait

rub_plovik:
send get my plovik %prep_plovik
matchre need_plovik ^What were you referring
matchwait 1
send rub my plovik %prep_plovik
waitforre ^You rub
send stow my plovik %prep_plovik
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_chest_scar:
gosub set_ext_scar
goto int_chest
need_plovik:
setvar need_plovik 1

int_chest:
if (%int_chest = 1) then GOTO heal_int_chest
GOTO ext_abdomen

heal_int_chest:
if matchre ("%prep_ithor", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_ithor", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_ithor", "(balm|salve)") then var consume rub
SAVE ithor
matchre heal_int_chest ...wait
matchre int_chest_scar ^You apply|^You drink|^You eat
matchre rub_ithor ^Rub what
matchre need_ithor ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my ithor %prep_ithor
matchwait

rub_ithor:
send get my ithor %prep_ithor
matchre need_ithor ^What were you referring
matchwait 1
send rub my ithor %prep_ithor
waitforre ^You rub
send stow my ithor %prep_ithor
waitforre ^You put|^You stow|^That was the last|^Stow what

int_chest_scar:
gosub set_int_scar
goto ext_abdomen
need_ithor:
setvar need_ithor 1

ext_abdomen:
if (%ext_abdomen = 1) then GOTO heal_ext_abdomen
GOTO int_abdomen

heal_ext_abdomen:
if matchre ("%prep_nilos", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_nilos", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_nilos", "(balm|salve)") then var consume rub
SAVE nilos
matchre heal_ext_abdomen ...wait
matchre ext_abdomen_scar ^You apply|^You drink|^You eat
matchre rub_nilos ^Rub what
matchre need_nilos ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my nilos %prep_nilos
matchwait

rub_nilos:
send get my nilos %prep_nilos
matchre need_nilos ^What were you referring
matchwait 1
send rub my nilos %prep_nilos
waitforre ^You rub
send stow my nilos %prep_nilos
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_abdomen_scar:
gosub set_ext_scar
goto int_abdomen
need_nilos:
setvar need_nilos 1

int_abdomen:
if (%int_abdomen = 1) then GOTO heal_int_abdomen
GOTO ext_back

heal_int_abdomen:
if matchre ("%prep_muljin", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_muljin", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_muljin", "(balm|salve)") then var consume rub
SAVE muljin
matchre heal_int_abdomen ...wait
matchre int_abdomen_scar ^You apply|^You drink|^You eat
matchre rub_muljin ^Rub what
matchre need_muljin ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my muljin %prep_muljin
matchwait

rub_muljin:
send get my muljin %prep_muljin
matchre need_muljin ^What were you referring
matchwait 1
send rub my muljin %prep_muljin
waitforre ^You rub
send stow my muljin %prep_muljin
waitforre ^You put|^You stow|^That was the last|^Stow what

int_abdomen_scar:
gosub set_int_scar
goto ext_back
need_muljin:
setvar need_muljin 1

ext_back:
if (%ext_back = 1) then GOTO heal_ext_back
GOTO int_back

heal_ext_back:
if matchre ("%prep_hulnik", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_hulnik", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_hulnik", "(balm|salve)") then var consume rub
SAVE hulnik
matchre heal_ext_back ...wait
matchre ext_back_scar ^You apply|^You drink|^You eat
matchre rub_hulnik ^Rub what
matchre need_hulnik ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my hulnik %prep_hulnik
matchwait

rub_hulnik:
send get my hulnik %prep_hulnik
matchre need_hulnik ^What were you referring
matchwait 1
send rub my hulnik %prep_hulnik
waitforre ^You rub
send stow my hulnik %prep_hulnik
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_back_scar:
gosub set_ext_scar
goto int_back
need_hulnik:
setvar need_hulnik 1

int_back:
if (%int_back = 1) then GOTO heal_int_back
GOTO ext_limb

heal_int_back:
if matchre ("%prep_blocil", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_blocil", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_blocil", "(balm|salve)") then var consume rub
SAVE blocil
matchre heal_int_back ...wait
matchre int_back_scar ^You apply|^You drink|^You eat
matchre rub_blocil ^Rub what
matchre heal_int_back2 ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my blocil %prep_blocil
matchwait

rub_blocil:
send get my blocil %prep_blocil
matchre heal_int_back2 ^What were you referring
matchwait 1
send rub my blocil %prep_blocil
waitforre ^You rub
send stow my blocil %prep_blocil
waitforre ^You put|^You stow|^That was the last|^Stow what

heal_int_back2:
if matchre ("%prep_junliar", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_junliar", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_junliar", "(balm|salve)") then var consume rub
SAVE junliar
matchre heal_int_back2 ...wait
matchre int_back_scar ^You apply|^You drink|^You eat
matchre rub_junliar ^Rub what
matchre need_blocil_or_junliar ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my junliar %prep_junliar
matchwait

rub_junliar:
send get my junliar %prep_junliar
matchre need_blocil_or_junliar ^What were you referring
matchwait 1
send rub my junliar %prep_junliar
waitforre ^You rub
send stow my junliar %prep_junliar
waitforre ^You put|^You stow|^That was the last|^Stow what

int_back_scar:
gosub set_int_scar
goto ext_limb
need_blocil_or_junliar:
setvar need_blocil_or_junliar 1

ext_limb:
if (%ext_limb = 1) then GOTO heal_ext_limb
GOTO int_limb

heal_ext_limb:
if matchre ("%prep_jadice", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_jadice", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_jadice", "(balm|salve)") then var consume rub
SAVE jadice
matchre heal_ext_limb ...wait
matchre ext_limb_scar ^You apply|^You drink|^You eat
matchre rub_jadice ^Rub what
matchre need_jadice ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my jadice %prep_jadice
matchwait

rub_jadice:
send get my jadice %prep_jadice
matchre need_jadice ^What were you referring
matchwait 1
send rub my jadice %prep_jadice
waitforre ^You rub
send stow my jadice %prep_jadice
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_limb_scar:
gosub set_ext_scar
goto int_limb
need_jadice:
setvar need_jadice 1

int_limb:
if (%int_limb = 1) then GOTO heal_int_limb
GOTO ext_eye

heal_int_limb:
if matchre ("%prep_yelith", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_yelith", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_yelith", "(balm|salve)") then var consume rub
SAVE yelith
matchre heal_int_limb ...wait
matchre int_limb_scar ^You apply|^You drink|^You eat
matchre rub_yelith ^Rub what
matchre need_yelith ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my yelith %prep_yelith
matchwait

rub_yelith:
send get my yelith %prep_yelith
matchre need_yelith ^What were you referring
matchwait 1
send rub my yelith %prep_yelith
waitforre ^You rub
send stow my yelith %prep_yelith
waitforre ^You put|^You stow|^That was the last|^Stow what

int_limb_scar:
gosub set_int_scar
goto ext_eye
need_yelith:
setvar need_yelith 1

ext_eye:
if (%ext_eye = 1) then GOTO heal_ext_eye
GOTO int_eye

heal_ext_eye:
if matchre ("%prep_sufil", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_sufil", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_sufil", "(balm|salve)") then var consume rub
SAVE sufil
matchre heal_ext_eye ...wait
matchre ext_eye_scar ^You apply|^You drink|^You eat
matchre rub_sufil ^Rub what
matchre need_sufil ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my sufil %prep_sufil
matchwait

rub_sufil:
send get my sufil %prep_sufil
matchre need_sufil ^What were you referring
matchwait 1
send rub my sufil %prep_sufil
waitforre ^You rub
send stow my sufil %prep_sufil
waitforre ^You put|^You stow|^That was the last|^Stow what

ext_eye_scar:
gosub set_ext_scar
goto int_eye
need_sufil:
setvar need_sufil 1

int_eye:
if (%int_eye = 1) then GOTO heal_int_eye
GOTO ext_scar

heal_int_eye:
if matchre ("%prep_aevaes", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_aevaes", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_aevaes", "(balm|salve)") then var consume rub
SAVE aevaes
matchre heal_int_eye ...wait
matchre int_eye_scar ^You apply|^You drink|^You eat
matchre rub_aevaes ^Rub what
matchre need_aevaes ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my aevaes %prep_aevaes
matchwait

rub_aevaes:
send get my aevaes %prep_aevaes
matchre need_aevaes ^What were you referring
matchwait 1
send rub my aevaes %prep_aevaes
waitforre ^You rub
send stow my aevaes %prep_aevaes
waitforre ^You put|^You stow|^That was the last|^Stow what

int_eye_scar:
gosub set_int_scar
goto ext_scar
need_aevaes:
setvar need_aevaes 1

ext_scar:
if (%ext_scar = 1) then GOTO heal_ext_scar
GOTO int_scar

heal_ext_scar:
if matchre ("%prep_cebi", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_cebi", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_cebi", "(balm|salve)") then var consume rub
SAVE cebi
matchre heal_ext_scar ...wait
matchre int_scar ^You apply|^You drink|^You eat
matchre rub_cebi ^Rub what
matchre need_cebi ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my cebi %prep_cebi
matchwait

rub_cebi:
send get my cebi %prep_cebi
matchre need_cebi ^What were you referring
matchwait 1
send rub my cebi %prep_cebi
waitforre ^You rub
send stow my cebi %prep_cebi
waitforre ^You put|^You stow|^That was the last|^Stow what

need_cebi:
setvar need_cebi 1

int_scar:
if (%int_scar = 1) then GOTO heal_int_scar
GOTO supplies

heal_int_scar:
if matchre ("%prep_hisan", "(ale|brandy|coffee|drink|elixir|kefir|mash|mead|potion|smoothie|solution|tea|tincture)") then var consume drink
if matchre ("%prep_hisan", "(berries|berry|bread|brownie|butter|cake|cookie|cornbread|flower|grass|jam|leaf|moss|paste|pie|pollen|porridge|powder|puff-pastry|pulp|root|sap|sauce|scone|spread|stem|sticky-bun|tart|yogurt)") then var consume eat
if matchre ("%prep_hisan", "(balm|salve)") then var consume rub
SAVE hisan
matchre heal_int_scar ...wait
matchre supplies ^You apply|^You drink|^You eat
matchre rub_hisan ^Rub what
matchre need_hisan ^Drink what|^Eat what|^What were you referring|^Please rephrase that command
send %consume my hisan %prep_hisan
matchwait

rub_hisan:
send get my hisan %prep_hisan
matchre need_hisan ^What were you referring
matchwait 1
send rub my hisan %prep_hisan
waitforre ^You rub
send stow my hisan %prep_hisan
waitforre ^You put|^You stow|^That was the last|^Stow what
goto supplies

need_hisan:
setvar need_hisan 1

#Report on missing herbs
supplies:

echo
echo You are missing the following herbs:
echo

if (%need_nemoih = (1) then
{
ECHO nemoih (external head wounds)
}
if (%need_eghmok = (1) then
{
ECHO eghmok (internal head wounds)
}
if (%need_sufil = (1) then
{
ECHO sufil (external eye wounds)
}
if (%need_aevaes = (1) then
{
ECHO aevaes (internal eye wounds)
}
if (%need_georin = (1) then
{
ECHO georin (external neck wounds)
}
if (%need_riolur = (1) then
{
ECHO riolur (internal neck wounds)
}
if (%need_plovik = (1) then
{
ECHO plovik (external chest wounds)
}
if (%need_ithor = (1) then
{
ECHO ithor (internal chest wounds)
}
if (%need_nilos = (1) then
{
ECHO nilos (external abdomen wounds)
}
if (%need_muljin = (1) then
{
ECHO muljin (internal abdomen wounds)
}
if (%need_hulnik = (1) then
{
ECHO hulnik (external back wounds)
}
if (%need_blocil_or_junliar = (1) then
{
ECHO blocil or junliar (internal back wounds)
}
if (%need_jadice = (1) then
{
ECHO jadice (external limb wounds)
}
if (%need_yelith = (1) then
{
ECHO yelith (internal limb wounds)
}
if (%need_aloe = (1) then
{
ECHO aloe (skin wounds)
}
if (%need_lujeakave = (1) then
{
ECHO lujeakave (nerve wounds)
}
if (%need_cebi = (1) then
{
ECHO cebi (external scars)
}
if (%need_hisan = (1) then
{
ECHO hisan (internal scars)
}

goto end

set_ext_scar:
setvar ext_scar 1
return

set_int_scar:
setvar int_scar 1
return

ScriptError:
ECHO *********************************
ECHO *** Usage:
ECHO *** To see which herbs you need:
ECHO ***  .herb check
ECHO *** To heal:
ECHO ***  .herb
ECHO *********************************
goto end

end: