
/*This file contains armor

This file contains:

	- MISC
    		- TESLA
	    	- ARMORED TRENCHCOAT
		- METAL ARMOR
			+MK2
			+B - SCRAP VERSION
				+MK2
		- ARMOR KIT
		- LEATHER ARMOR
		- COMBAT ARMOR


	- RAIDER
		- SUPAFLY
		- SADIST
		- BLASTMASTER
		- YANKEE
	- LEGION
		- RECRUIT ARMOR
		- CENTURION
		- VEXILLARIUS
		- LEGATE
	- NCR
		- RANGER COMBAT ARMOR
		- NCR COMBAT ARMOR
		- RANGER PATROL ARMOR
		- DSERT COMBAT ARMOR
		- ELITE RIOT GEAR
		- NCR VEST
		- NCR MANTLE
	- POWER ARMOR
		- T45B
		- T45B
			+SALVAGED
		- T45D
			+SALVAGED

		- ADVANCED
			+MK2
		- T51B
	- BOS
		- COMBAT ARMOR
*/



/obj/item/clothing/suit/armor/laserproof/tesla
	name = "tesla armor"
	desc = "A prewar armor design by Nikola Tesla before being confinscated by the U.S. government. Provides the best energy weapons resistance."
	icon_state = "tesla_armor"
	item_state = "tesla_armor"
	blood_overlay_type = "armor"
	armor = list(melee = 65, bullet = 45, laser = 70, energy = 60, bomb = 35, bio = 0, rad = 5)
	hit_reflect_chance = 50
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|FEET|HANDS
	slowdown = 0.5
	put_on_delay = 30
	strip_delay = 10
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/fluff/jensen
	name = "armored trenchcoat"
	desc = "A trenchcoat augmented with a special alloy for some protection and style."
	icon_state = "jensencoat"
	item_state = "jensencoat"
	flags = THICKMATERIAL
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	armor = list(melee = 50, bullet = 10, laser = 10, energy = 10, bomb = 0, bio = 0, rad = 0)
	unacidable = 1
	put_on_delay = 10
	strip_delay = 30

/obj/item/clothing/suit/armor/fluff/chestplate
	name = "metal armor"
	desc = "A set of polished plates formed together to form a crude set of armor."
	icon_state = "metal_chestplate"
	item_state = "metal_chestplate"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|FEET|HANDS
	armor = list(melee = 60, bullet = 40, laser = 30, energy = 15, bomb = 30, bio = 0, rad = 5)
	slowdown = 0.5
	put_on_delay = 30
	strip_delay = 10
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/fluff/chestplate/mk2
	name = "metal armor mk2"
	desc = "A set of polished plates formed together to form a fine set of armor."
	icon_state = "metal_chestplate2"
	item_state = "metal_chestplate2"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|FEET|HANDS
	armor = list(melee = 65, bullet = 45, laser = 40, energy = 25, bomb = 35, bio = 0, rad = 5)
	slowdown = 0.5
	put_on_delay = 30
	strip_delay = 10
//Fallout 13

/obj/item/clothing/suit/armor/f13/kit
	name = "armor kit"
	desc = "Separate armor parts you can wear over the clothing to get the most basic protection from the dangers of wasteland.<br>It is unable to reflect laser beams and probably won't shield you from a random bullet, but it sure is better than going into the battle without any armor at all."
	icon_state = "armorkit"
	item_state = "armorkit"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 30, bullet = 20, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	put_on_delay = 30
	strip_delay = 30

/obj/item/clothing/suit/armor/f13/raider
	name = "supa-fly raider armor"
	desc = "Fabulous mutant powers were revealed to me the day I held aloft my bumper sword and said...<br>BY THE POWER OF NUKA-COLA, I AM RAIDER MAN!"
	icon_state = "supafly"
	item_state = "supafly"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 50, bullet = 20, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 20
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/raider/sadist
	name = "raider sadist armor"
	icon_state = "sadist"
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/raider/blastmaster
	name = "raider blastmaster armor"
	icon_state = "blastmaster"
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	burn_state = FIRE_PROOF
	flash_protect = 2
	flags_inv = HIDEJUMPSUIT

/obj/item/clothing/suit/armor/f13/raider/yankee
	name = "yankee raider armor"
	desc = "A set of armor made from football player protective wear. Together we play."
	icon_state = "yankee"
	item_state = "yankee"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 60, bullet = 30, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 40
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/leatherarmor
	name = "leather armor"
	desc = "A set of light armor made of boiled brahmin leather.<br>It should protect you against your average 9mm peashooter, but anything higher caliber will punch through it like butter."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 60, bullet = 40, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 40
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/bmetalarmor
	name = "metal armor"
	desc = "A set of sturdy metal armor made from various bits of scrap metal. It looks like it might impair movement"
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 50, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	slowdown = 1
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/ibmetalarmor
	name = "metal armor Mk I"
	desc = "A set of improved metal armor made from various bits of scrap metal and upgraded with plasteel.<br>Will protect against bullets and dissipate lasers a bit better, still slowing you down."
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 60, laser = 30, energy = 30, bomb = 30, bio = 0, rad = 0)
	slowdown = 1
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legrecruit
	name = "Legion recruit armor"
	desc = "Legion recruit armor is a common light armor, supplied to recruit legionaries and to recruit decanus units.<br>Like most Legion armor, it is made from repurposed sports equipment, consisting of a football player's protective shoulder and UPPER_TORSO pads reinforced with additional leather padding and worn over a baseball catcher's vest."
	icon_state = "legrecruit"
	item_state = "legrecruit"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 50, bullet = 20, laser = 10, energy = 10, bomb = 20, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legvexil
	name = "Legion vexillarius armor"
	desc = "The armor appears to be based off of a suit of Legion veteran armor, with the addition of circular metal plates attached to the torso, as well as a banner displaying the flag of the Legion worn on the back."
	icon_state = "legvexil"
	item_state = "legvexil"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 60, bullet = 30, laser = 20, energy = 10, bomb = 30, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legcenturion
	name = "Legion centurion armor"
	desc = "The Legion centurion armor is by far the strongest suit of armor available to Caesar's Legion. The armor is composed from other pieces of armor taken from that of the wearer's defeated opponents in combat."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 40, laser = 30, energy = 20, bomb = 20, bio = 0, rad = 30)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/leglegat
	name = "Legion legat armor"
	desc = "The armor appears to be a full suit of heavy gauge steel and offers full body protection. It also has a cloak in excellent condition, but the armor itself bears numerous battle scars and the helmet is missing half of the left horn. The Legate's suit appears originally crafted, in contrast to other Legion armor which consists of repurposed pre-War sports equipment."
	icon_state = "leglegat"
	item_state = "leglegat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 80, bullet = 50, laser = 40, energy = 30, bomb = 30, bio = 0, rad = 40)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/combat
	name = "combat armor"
	desc = "An old combat armor, out of use around the time of the war."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 60, bullet = 50, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/rangercombat
	name = "ranger combat armor"
	desc = "This armor military grade is a modification of battle armor and was originally designed for a special purpose police units in Los Angeles."
	icon_state = "ranger"
	item_state = "ranger"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 60, laser = 40, energy = 40, bomb = 40, bio = 0, rad = 80)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/ncrarmor
	name = "NCR combat armor"
	desc = "This armor military grade is a modification of battle armor and was originally designed for a special purpose police units in Los Angeles."
	icon_state = "ncr_armor"
	item_state = "ncr_armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	armor = list(melee = 60, bullet = 40, laser = 30, energy = 20, bomb = 20, bio = 0, rad = 40)
	put_on_delay = 60
	strip_delay = 60



// salvaged/broken power armor, does not require PA training

/obj/item/clothing/suit/armor/f13/brokenpa
	unacidable = 1
	slowdown = 1
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 100
	strip_delay = 200

/obj/item/clothing/suit/armor/f13/brokenpa/t45b
	name = "Salvaged T-45b power armor"
	desc = "It's a set of T-45d power armor recovered by the NCR during the NCR-Brotherhood War.<br>NCR technicians have restored it to working order by replacing the back-mounted cylinders with a custom air conditioning module and stripping out the joint servomotors.<br>Due to the lack of servomotors in the limbs, this armor is so heavy that it feels like you're carrying a brahmin on your back!"
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list(melee = 50, bullet = 40, laser = 40, energy = 40, bomb = 40, bio = 100, rad = 70)
	slowdown = 3

/obj/item/clothing/suit/armor/f13/brokenpa/t45d
	name = "Salvaged T-45d power armor"
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	name = "Salvaged T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle. This suit appears worn and battered."
	armor = list(melee = 50, bullet = 40, laser = 40, energy = 40, bomb = 50, bio = 100, rad = 70)
	slowdown = 3

/obj/item/clothing/suit/armor/f13/power_armor
	unacidable = 1
	slowdown = 1
	flags = THICKMATERIAL  //No syringe meme
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 100
	strip_delay = 200

/obj/item/clothing/suit/armor/f13/power_armor/mob_can_equip(mob/user, slot)
	if (ishuman(user))
		var/mob/living/carbon/human/H = user
		if (H.martial_art != /datum/martial_art/patraining && slot == slot_wear_suit)
			H << "<span class='warning'>You don't have the proper training to operate the power armor!</span>"
			return 0
			..()
	return ..()

/obj/item/clothing/suit/armor/f13/power_armor/t45b
	name = "T-45b power armor"
	desc = "It's a set of T-45b power armor recovered by the NCR during the NCR-Brotherhood War.<br>NCR technicians have restored it to working order by replacing the back-mounted cylinders with a custom air conditioning module and stripping out the joint servomotors."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list(melee = 60, bullet = 50, laser = 40, energy = 40, bomb = 40, bio = 100, rad = 50)
	slowdown = 2

/obj/item/clothing/suit/armor/f13/power_armor/t45d
	name = "T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	armor = list(melee = 60, bullet = 50, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 60)

/obj/item/clothing/suit/armor/f13/power_armor/advanced
	name = "Advanced power armor"
	desc = "An advanced suit of armor typically used by the Enclave.<br>It is composed of lightweight metal alloys, reinforced with ceramic castings at key stress points.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor1"
	item_state = "advpowerarmor1"
	armor = list(melee = 70, bullet = 60, laser = 60, energy = 60, bomb = 60, bio = 100, rad = 70)

/obj/item/clothing/suit/armor/f13/power_armor/advanced/mk2
	name = "Advanced power armor MKII"
	desc = "It's an improved model of advanced power armor used exclusively by the Enclave military forces, developed after the Great War.<br>Like its older brother, the standard advanced power armor, it's matte black with a menacing appearance, but with a few significant differences - it appears to be composed entirely of lightweight ceramic composites rather than the usual combination of metal and ceramic plates.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor2"
	item_state = "advpowerarmor2"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 80, bullet = 70, laser = 70, energy = 70, bomb = 70, bio = 100, rad = 80)

/obj/item/clothing/suit/armor/f13/power_armor/tesla
	name = "tesla power armor"
	desc = "A variant of the Enclave's advanced power armor Mk I, jury-rigged with a Tesla device that is capable of dispersing a large percentage of the damage done by directed-energy attacks.<br>As it's made of complex composite materials designed to block most of energy damage - it's notably weaker against kinetic impacts."
	icon_state = "tesla"
	item_state = "tesla"
	armor = list(melee = 40, bullet = 25, laser = 75, energy = 75, bomb = 30, bio = 100, rad = 95)

/obj/item/clothing/suit/armor/f13/power_armor/t51b
	name = "T-51b power armor"
	desc = "The pinnacle of pre-war technology. This suit of power armor provides substantial protection to the wearer."
	icon_state = "t51bpowerarmor"
	item_state = "t51bpowerarmor"
	armor = list(melee = 75, bullet = 55, laser = 5, energy = 55, bomb = 55, bio = 100, rad = 95)








//Fallout 13

/obj/item/clothing/suit/armor/f13/kit
	name = "armor kit"
	desc = "Separate armor parts you can wear over the clothing to get the most basic protection from the dangers of wasteland.<br>It is unable to reflect laser beams and probably won't shield you from a random bullet, but it sure is better than going into the battle without any armor at all."
	icon_state = "armorkit"
	item_state = "armorkit"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 30, bullet = 15, laser = 0, energy = 0, bomb = 0, bio = 0, rad = 0)
	put_on_delay = 30
	strip_delay = 30

/obj/item/clothing/suit/armor/f13/leatherarmor
	name = "leather armor"
	desc = "A set of light armor made of boiled brahmin leather.<br>It should protect you against your average 9mm peashooter, but anything higher caliber will punch through it like butter."
	icon_state = "leatherarmor"
	item_state = "leatherarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 50, bullet = 30, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 40
	strip_delay = 40

/obj/item/clothing/suit/armor/f13/bmetalarmor
	name = "raider metal armor"
	desc = "A set of sturdy metal armor made from various bits of scrap metal. It looks like it might impair movement"
	icon_state = "bmetalarmor"
	item_state = "bmetalarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 60, bullet = 35, laser = 20, energy = 20, bomb = 20, bio = 0, rad = 5)
	slowdown = 1
	flags_inv = HIDEJUMPSUIT
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legrecruit
	name = "legion recruit armor"
	desc = "Legion recruit armor is a common light armor, supplied to recruit legionaries and to recruit decanus units. Like most Legion armor, it is made from repurposed sports equipment, consisting of a football player's protective shoulder and UPPER_TORSO pads reinforced with additional leather padding and worn over a baseball catcher's vest."
	icon_state = "legrecruit"
	item_state = "legrecruit"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 55, bullet = 25, laser = 15, energy = 10, bomb = 40, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legrecruit/vet
	name = "legion veteran armor"
	armor = list (melee = 60, bullet = 30, laser = 15, energy = 10, bomb = 20, bio = 0, rad = 0)

/obj/item/clothing/suit/armor/f13/legvexil
	name = "Legion vexillarius armor"
	desc = "The armor appears to be based off of a suit of Legion veteran armor, with the addition of circular metal plates attached to the torso, as well as a banner displaying the flag of the Legion worn on the back."
	icon_state = "legvexil"
	item_state = "legvexil"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 60, bullet = 30, laser = 15, energy = 10, bomb = 20, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/legcenturion
	name = "Legion centurion armor"
	desc = "The Legion centurion armor is by far the strongest suit of armor available to Caesar's Legion. The armor is composed from other pieces of armor taken from that of the wearer's defeated opponents in combat."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 80, bullet = 40, laser = 35, energy = 20, bomb = 20, bio = 0, rad = 35)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/leglegat
	name = "Legion legat armor"
	desc = "The armor appears to be a full suit of heavy gauge steel and offers full body protection. It also has a cloak in excellent condition, but the armor itself bears numerous battle scars and the helmet is missing half of the left horn. The Legate's suit appears originally crafted, in contrast to other Legion armor which consists of repurposed pre-War sports equipment."
	icon_state = "leglegat"
	item_state = "leglegat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 85, bullet = 50, laser = 35, energy = 30, bomb = 30, bio = 0, rad = 45)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/combat
	name = "combat armor"
	desc = "An old combat armor, out of use around the time of the war."
	icon_state = "combat_armor"
	item_state = "combat_armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 50, bullet = 50, laser = 25, energy = 20, bomb = 20, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/combat/ncr
	name = "ranger patrol armor"
	desc = "A set of standard issue ranger patrol armor that provides defense similar to a suit of pre-war combat armor."
	icon_state = "ncr_patrol"
	item_state = "ncr_patrol"

/obj/item/clothing/suit/armor/f13/combat/brotherhood
	name = "brotherhood combat armor"
	desc = "A superior combat armor set made by the Brotherhood of Steel, standard issue for all initiates."
	icon_state = "brotherhood_armor"
	item_state = "brotherhood_armor"
	armor = list(melee = 60, bullet = 60, laser = 45, energy = 20, bomb = 20, bio = 0, rad = 80)

/obj/item/clothing/suit/armor/f13/rangercombat
	name = "ranger combat armor"
	desc = "The NCR ranger combat armor, or black armor consists of a pre-war L.A.P.D. riot suit under a duster with rodeo jeans. Considered one of the most prestigious suits of armor to earn and wear while in service of the NCR Rangers."
	icon_state = "ranger"
	item_state = "ranger"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 60, bullet = 60, laser = 45, energy = 20, bomb = 20, bio = 0, rad = 80)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/rangercombat/desert
	name = "desert ranger combat armor"
	desc = "This is the original armor the NCR Ranger Combat armor was based off of. An awe inspiring suit of armor used by the legendary Desert Rangers."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 70, bullet = 70, laser = 55, energy = 30, bomb = 30, bio = 0, rad = 900)

/obj/item/clothing/suit/armor/f13/rangercombat/eliteriot
	name = "elite riot gear"
	desc = "A heavily reinforced set of military grade armor, commonly seen in the Divide now repurposed and reissued to Chief Rangers."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list(melee = 75, bullet = 75, laser = 60, energy = 35, bomb = 35, bio = 0, rad = 100)

/obj/item/clothing/suit/armor/f13/ncrarmor
	name = "NCR vest"
	desc = "A standard issue NCR protective vest."
	icon_state = "ncr_vest"
	item_state = "ncr_vest"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET
	armor = list(melee = 30, bullet = 35, laser = 15, energy = 10, bomb = 40, bio = 0, rad = 0)
	put_on_delay = 60
	strip_delay = 60

/obj/item/clothing/suit/armor/f13/ncrarmor/mantle
	name = "NCR mantle vest"
	desc = "An NCR protective vest with a hide mantle over one shoulder. Commonly issued to NCOs and COs as well."
	icon_state = "ncr_mantle"
	item_state = "ncr_mantle"
	armor = list(melee = 35, bullet = 40, laser = 15, energy = 10, bomb = 40, bio = 0, rad = 0)

/*
/obj/item/clothing/suit/armor/f13/power_armor/t45b
	name = "T-45b power armor"
	desc = "It's a set of T-45b power armor recovered by the NCR during the NCR-Brotherhood War.<br>NCR technicians have restored it to working order by replacing the back-mounted cylinders with a custom air conditioning module and stripping out the joint servomotors."
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list(melee = 70, bullet = 60, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 60)
	slowdown = 2

/obj/item/clothing/suit/armor/f13/power_armor/t45b/salvaged
	name = "Salvaged T-45b power armor"
	desc = "It's a set of T-45d power armor recovered by the NCR during the NCR-Brotherhood War.<br>NCR technicians have restored it to working order by replacing the back-mounted cylinders with a custom air conditioning module and stripping out the joint servomotors.<br>Due to the lack of servomotors in the limbs, this armor is so heavy that it feels like you're carrying a brahmin on your back!"
	icon_state = "t45bpowerarmor"
	item_state = "t45bpowerarmor"
	armor = list(melee = 60, bullet = 50, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 80)
	slowdown = 3

/obj/item/clothing/suit/armor/f13/power_armor/t45d
	name = "T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle."
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	armor = list(melee = 70, bullet = 60, laser = 60, energy = 60, bomb = 60, bio = 100, rad = 70)

/obj/item/clothing/suit/armor/f13/power_armor/t45d/salvaged
	name = "Salvaged T-45d power armor"
	icon_state = "t45dpowerarmor"
	item_state = "t45dpowerarmor"
	name = "Salvaged T-45d power armor"
	desc = "Originally developed and manufactured for the United States Army by American defense contractor West Tek, the T-45d power armor was the first version of power armor to be successfully deployed in battle. This suit appears worn and battered."
	armor = list(melee = 60, bullet = 50, laser = 50, energy = 50, bomb = 60, bio = 100, rad = 80)
	slowdown = 3

/obj/item/clothing/suit/armor/f13/power_armor/advanced
	name = "Advanced power armor"
	desc = "An advanced suit of armor typically used by the Enclave.<br>It is composed of lightweight metal alloys, reinforced with ceramic castings at key stress points.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor"
	item_state = "advpowerarmor"
	armor = list(melee = 80, bullet = 70, laser = 70, energy = 70, bomb = 70, bio = 100, rad = 80)

/obj/item/clothing/suit/armor/f13/power_armor/advanced/mk2
	name = "Advanced power armor MKII"
	desc = "It's an improved model of advanced power armor used exclusively by the Enclave military forces, developed after the Great War.<br>Like its older brother, the standard advanced power armor, it's matte black with a menacing appearance, but with a few significant differences - it appears to be composed entirely of lightweight ceramic composites rather than the usual combination of metal and ceramic plates.<br>Additionally, like the T-51b power armor, it includes a recycling system that can convert human waste into drinkable water, and an air conditioning system for it's user's comfort."
	icon_state = "advpowerarmor"
	item_state = "advpowerarmor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	armor = list(melee = 90, bullet = 80, laser = 80, energy = 80, bomb = 80, bio = 100, rad = 90)

/obj/item/clothing/suit/armor/f13/power_armor/t51b
	name = "T-51b power armor"
	desc = "The pinnacle of pre-war technology. This suit of power armor provides substantial protection to the wearer."
	icon_state = "t51bpowerarmor"
	item_state = "t51bpowerarmor"
	armor = list(melee = 85, bullet = 65, laser = 65, energy = 65, bomb = 65, bio = 100, rad = 100)

*/
