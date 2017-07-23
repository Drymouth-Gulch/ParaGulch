/*This file contains underwears and uniforms
This file contains:

-
	-NAVY
	-NAVY OFFICER
	-MACHINIST
	-LUMBERJACK
	-POLICE
	-COWBOYB
	-COWBOYG
	-RANGER
	-FLAPPER
	-BDU
	-DBDU
	-SHINY
	-BATTER
	-BENNYS
	-RELACEDWEAR
	-SPRINGS
	-DOOMSDAY
	-ENCLAVE OFFICER
	-COMBAT UNIFORM
	-SETTLER
	-BRAHMIN
	-DOCTOR
	-FEMALE DOCTOR
	-MERC ADV
	-FEMALE MERC ADV
	-MERC CHARMER
	-FEMALE MERC CHARMER
	-CARAVENEER
	-ROVING
	-VAULT JUMPSUIT
	-RECON
	-NCR FATIGUES


*/

/obj/item/clothing/under/f13/navy
	name = "navy jumpsuit"
	desc = "Pre-War navy military standart uniform."
	icon_state = "navy"
	item_state = "bl_suit"
	item_color = "navy"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 5, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/navyofficer
	name = "navy officer jumpsuit"
	desc = "Pre-War navy military standart uniform for ranked officers."
	icon_state = "navyofficer"
	item_state = "bl_suit"
	item_color = "navyofficer"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 15, bullet = 5, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/machinist
	name = "workman outfit"
	desc = "Apparel of an old-time machinist."
	icon_state = "machinist"
	item_state = "lb_suit"
	item_color = "machinist"
	//can_adjust = 0

/obj/item/clothing/under/f13/lumberjack
	name = "lumberjack outfit"
	desc = "Apparel of an old-time lumberjack."
	icon_state = "lumberjack"
	item_state = "r_suit"
	item_color = "lumberjack"
	//can_adjust = 0

/obj/item/clothing/under/f13/police
	name = "pre-War police uniform"
	desc = "Golden classics of pre-War police officers."
	icon_state = "retro_police"
	item_state = "b_suit"
	item_color = "retro_police"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 5, bullet = 5, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/cowboyb //Originally cowboy and mafia stuff by Nienhaus
	name = "dusty prospector outfit"
	desc = "It's a white shirt with brass buttons and a pair of brown trousers, commonly worn by prospectors."
	icon_state = "cowboyb"
	item_state = "det"
	item_color = "cowboyb"
	//can_adjust = 0

/obj/item/clothing/under/f13/cowboyg
	name = "well-heeled prospector outfit"
	desc = "It's a white shirt with black buttons and a pair of gray trousers, commonly worn by prospectors."
	icon_state = "cowboyg"
	item_state = "sl_suit"
	item_color = "cowboyg"
	//can_adjust = 0
/obj/item/clothing/under/f13/ranger
	name = "ranger outfit"
	desc = "It's a real cowboy uniform with a brown vest and red bandana."
	icon_state = "ranger"
	item_state = "sl_suit"
	item_color = "ranger"
	//can_adjust = 0
	armor = list(melee = 10, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
/obj/item/clothing/under/f13/female/flapper
	name = "flapper dress"
	desc = "It's an outfit commonly worn by old-time prostitutes from around New Reno, but can be seen all over the wasteland."
	icon_state = "flapper"
	item_state = "gy_suit"
	item_color = "flapper"
	//fitted = FEMALE_UNIFORM_TOP
	//can_adjust = 0

/obj/item/clothing/under/f13/bdu //WalterJe military standarts.
	name = "BDU"
	desc = "It's a standart military Battle Dress Uniform."
	icon_state = "bdu"
	item_state = "xenos_suit"
	item_color = "bdu"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 1

/obj/item/clothing/under/f13/dbdu
	name = "DBDU"
	desc = "It's a military Desert Battle Dress Uniform."
	icon_state = "dbdu"
	item_state = "xenos_suit"
	item_color = "dbdu"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 1

/obj/item/clothing/under/f13/shiny //Firefly, yay!
	name = "shiny outfit"
	desc = "Perfect outfit for a brave and reckless space cowboy. Shiny!"
	icon_state = "shiny"
	item_state = "owl"
	item_color = "shiny"
	//can_adjust = 0

/obj/item/clothing/under/f13/batter //I guess we're going OFF limits.
	name = "worn baseball uniform"
	desc = "<b>Purification in progress...</b>"
	icon_state = "batter"
	item_state = "w_suit"
	item_color = "batter"
	//can_adjust = 0

/obj/item/clothing/under/f13/bennys //Benny's suit from Fallout: New Vegas. But Benny was just a kid back in 2255, so it's just a fancy suit for you.
	name = "fancy suit"
	desc = "It's a black and white buffalo plaid suit. Fancy!"
	icon_state = "benny"
	item_state = "white_suit"
	item_color = "benny"
	//can_adjust = 0

/obj/item/clothing/under/f13/relaxedwearm
	name = "pre-War male relaxedwear"
	desc = "It's a dirty long-sleeve blue shirt with a greenish brown sweater-vest and slacks."
	icon_state = "relaxedwearm"
	item_state = "g_suit"
	item_color = "relaxedwearm"
	//can_adjust = 0

/obj/item/clothing/under/f13/springm
	name = "pre-War male spring outfit"
	desc = "It's a dirty long-sleeve beige shirt with a red sweater-vest and brown trousers."
	icon_state = "springm"
	item_state = "brownjsuit"
	item_color = "springm"
	//can_adjust = 0

/obj/item/clothing/under/f13/doomsday
	name = "doomsday cult outfit"
	desc = "It's a grimy pre-war dress shirt, tie, and slacks, with some makeshift pauldrons made of scrap metal attached with leather straps."
	icon_state = "doomsday"
	item_state = "sl_suit"
	item_color = "doomsday"
	armor = list(melee = 20, bullet = 10, laser = 5,energy = 5, bomb = 5, bio = 0, rad = 5)
	//can_adjust = 0

/obj/item/clothing/under/f13/enclaveo
	name = "Enclave officer uniform"
	desc = "It's a standard Enclave officer uniform.<br>The outer layer is made of a sturdy material designed to withstand the harsh conditions of the wasteland."
	icon_state = "enclaveo"
	item_state = "bl_suit"
	item_color = "enclaveo"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 20, bullet = 10, laser = 5,energy = 5, bomb = 5, bio = 0, rad = 5)
	//can_adjust = 0

/obj/item/clothing/under/f13/combat
	name = "combat uniform"
	desc = "An old combat uniform, out of use around the time of the war."
	icon_state = "combat_shirt"
	item_state = "bl_suit"
	item_color = "combat_shirt"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 15, bullet = 15, laser = 5,energy = 5, bomb = 5, bio = 0, rad = 5)
	//can_adjust = 0

/obj/item/clothing/under/f13/settler
	name = "settler outfit"
	desc = "It's more or less a crudely made tan robe with a makeshift belt made from cloth.<br>Paired with worn grey pants."
	icon_state = "settler"
	item_state = "brownjsuit"
	item_color = "settler"
	//can_adjust = 0

/obj/item/clothing/under/f13/brahmin //Male version
	name = "brahmin-skin outfit"
	desc = "A basic outfit consisting of a white shirt and patched trousers with Y-shaped suspenders."
	icon_state = "brahmin_m"
	item_state = "brownjsuit"
	item_color = "brahmin_m"
	//can_adjust = 0

/obj/item/clothing/under/f13/female/brahmin //Female version
	name = "brahmin-skin outfit"
	desc = "A basic outfit consisting of a rolled-up long-sleeve shirt and patched trousers with Y-shaped suspenders.<br>Fitted for female wastelanders."
	icon_state = "brahmin_f"
	item_state = "brownjsuit"
	item_color = "brahmin_f"
	//fitted = FEMALE_UNIFORM_TOP
	//can_adjust = 0

/obj/item/clothing/under/f13/doctor //Male version
	name = "doctor fatigues"
	desc = "It's a white t-shirt, a small brown satchel bag and brown trousers with pouches attached to the belt."
	icon_state = "doctor_m"
	item_state = "brownjsuit"
	item_color = "doctor_m"
	allowed = list(/obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)
	//can_adjust = 0

/obj/item/clothing/under/f13/female/doctor //Female version
	name = "doctor fatigues"
	desc = "It's a white t-shirt with brown trousers, and a small brown satchel bag attached to it.<br>Fitted for female wastelanders."
	icon_state = "doctor_f"
	item_state = "brownjsuit"
	item_color = "doctor_f"
	//fitted = FEMALE_UNIFORM_TOP
	allowed = list(/obj/item/weapon/scalpel, /obj/item/weapon/surgical_drapes, /obj/item/weapon/cautery, /obj/item/weapon/hemostat, /obj/item/weapon/retractor)
	//can_adjust = 0

/obj/item/clothing/under/f13/mercadv //Male version
	name = "merc adventurer outfit"
	desc = "It's a large leather jacket with torn-off sleeves, paired with a red sweater, a necklace with three teeth of unknown origin strung on, and a pair of brown leather pants.<br>There is also a rough leather bandolier for additional storage capacity."
	icon_state = "merca_m"
	item_state = "bl_suit"
	item_color = "merca_m"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 10, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/female/mercadv //Female version
	name = "merc adventurer outfit"
	desc = "It's a large leather jacket with torn-off sleeves, paired with a midriff-revealing red and black top and a pair of brown leather pants.<br>There is also a rough leather bandolier and belt for additional storage capacity.<br>Fitted for female wastelanders."
	icon_state = "merca_f"
	item_state = "bl_suit"
	item_color = "merca_f"
	//fitted = FEMALE_UNIFORM_TOP
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 10, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/merccharm //Male version
	name = "merc charmer outfit"
	desc = "A blue and gray outfit resembling a three piece suit, heavily stitched and reinforced with a small metal cup on the groin area."
	icon_state = "mercc_m"
	item_state = "bl_suit"
	item_color = "mercc_m"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/female/merccharm //Female version
	name = "merc charmer outfit"
	desc = "A ripped and torn blue female business suit, it still gives ladies a rather sexy look."
	icon_state = "mercc_f"
	item_state = "bl_suit"
	item_color = "mercc_f"
	//fitted = FEMALE_UNIFORM_TOP
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	//can_adjust = 0

/obj/item/clothing/under/f13/caravaneer
	name = "caravaneer outift"
	desc = "It's a striped brown shirt, with a pair of dark blue pants on suspenders.<br>That type of outfit is commonly worn by caravaneers and travelers."
	icon_state = "caravaneer"
	item_state = "syndicate-blue"
	item_color = "caravaneer"
	//can_adjust = 0

/obj/item/clothing/under/f13/roving
	name = "roving trader outfit "
	desc = "It's an outfit commonly worn by various wastelanders, but it still looks pretty badass!"
	icon_state = "roving"
	item_state = "bl_suit"
	item_color = "roving"
	//can_adjust = 0

/obj/item/clothing/under/f13/vault
	name = "vault jumpsuit"
	desc = "The regulation clothing worn by the vault dwellers of Vault-Tec vaults. It's made of sturdy leather.<br>This particular jumpsuit has no number on the back."
	icon_state = "vault"
	item_state = "b_suit"
	item_color = "vault"
	//can_adjust = 1

/obj/item/clothing/under/f13/vault/v13 //The Legend is here.
	name = "Vault 113 jumpsuit"
	desc = "The regulation clothing worn by the vault dwellers of Vault-Tec vaults. It's made of sturdy leather.<br>This jumpsuit has number 13 on the back."
	icon_state = "vault13"
	item_color = "vault13"


/obj/item/clothing/under/f13/recon
	name = "recon armor"
	desc = "Intended to serve as the under-armor of the T-45d power armor, the recon armor is a vacuum-sealed asbestos jumpsuit covering the entire body.<br>Attached to it is the interface and mounts for the power armor.<br>Its purpose is twofold - it allows the user to actually operate the armor and protect soft tissue from moving parts inside the suit and heat."
	icon_state = "recon"
	item_state = "rig_suit"
	item_color = "recon"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
	flags = BLOCKHAIR //It doesn't block the hair! What I did wrong?
	armor = list(melee = 30, bullet = 30, laser = 20, energy = 20, bomb = 20, bio = 50, rad = 50)
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HEAD
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HEAD
	//can_adjust = 0

/obj/item/clothing/under/f13/reconbroken
	name = "broken recon armor"
	desc = "Intended to serve as the under-armor of the T-45d power armor, the recon armor is a vacuum-sealed asbestos jumpsuit covering the entire body.<br>Attached to it is the interface and mounts for the power armor.<br>Its purpose is twofold - it allows the user to actually operate the armor and protect soft tissue from moving parts inside the suit and heat.This one is in bad condition."
	icon_state = "recon"
	item_state = "reconbroken"
	item_color = "reconbroken"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
	flags = BLOCKHAIR
	armor = list(melee = 5, bullet = 0, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HEAD
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HEAD
	//can_adjust = 0

/obj/item/clothing/under/f13/ncr
    name = "NCR fatigues"
    desc = "A set of standard issue New California Republic trooper fatigues, offers slight protection."
    icon_state = "ncr_uniform"
    item_state = "lb_suit"
    item_color = "ncr_uniform"
    body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
    armor = list(melee = 10, bullet = 5, laser = 5,energy = 5, bomb = 5, bio = 0, rad = 5)
    //can_adjust = 0