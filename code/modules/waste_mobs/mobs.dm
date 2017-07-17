/*This file contains passive, hostile mobs and their corresponding meats / anything obtained.

This file contains:

-
	HOSTILE
		-CAZADOR
		-GEKKON
		-MOLERAT
		-YAO GUAI
		-SUPER MUTANT
		-DEATHCLAW
		-RADSCORPION
		-GHOUL
		-GLOWING GHOUL
			-PROTECTRON
			-GUTSY

	PASSIVE
		-BRAHMIN
		-BRAH MIN (Super mutant)
		-MARVIN (protectron)


*/

/////////////////////////////////
/////		HOSTILE			/////
/////////////////////////////////

/mob/living/simple_animal/hostile/cazador
	name = "Cazador"
	desc = "Big flying thing."
	icon_state = "cazador"
	icon_living = "cazador"
	icon_gib = "carp_gib"
	speak_chance = 0
	turns_per_move = 15
	butcher_results = list()
	response_help = "pets"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	emote_taunt = list("gnashes")
	taunt_chance = 30
	speed = -5
	maxHealth = 50
	health = 50

	harm_intent_damage = 10
	melee_damage_lower = 16
	melee_damage_upper = 20
	attacktext = "stings"
	attack_sound = 'sound/weapons/bite.ogg'
	speak_emote = list("gnashes")

	//Space carp aren't affected by cold.
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	maxbodytemp = 350

	faction = list("wmob")
	flying = 1
	gold_core_spawnable = 1

/mob/living/simple_animal/hostile/cazador/death(gibbed)
	health = 0
	icon_dead = pick(list("cazador_dead1", "cazador_dead2", "cazador_dead3", "cazador_dead4"))
	icon_state = pick(list("cazador_dead1", "cazador_dead2", "cazador_dead3", "cazador_dead4"))
	stat = DEAD
	density = 0
	if(!gibbed)
		visible_message("<span class='danger'>\the [src] stops moving...</span>")
	..()

/mob/living/simple_animal/hostile/cazador/AttackingTarget()
	..()
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		H.adjustStaminaLoss(4)

/mob/living/simple_animal/hostile/molerat
	name = "Molerat"
	desc = "A giant rodent"
	icon_state = "mole_rat"
	icon_living = "mole_rat"
	icon_dead = "mole_rat_dead"
	speak_chance = 20
	speak = list("Squeek!", "Squeek, i say", "Squeek", "Squeek", "Squeek", "Squeek!", "Squeek", "Squeek!")
	speak_emote = list("chirps")
	turns_per_move = 1
	response_help = "pets"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/molerat = 1)
	maxHealth = 50
	health = 50
	faction = list("wmob")
	melee_damage_lower = 5
	melee_damage_upper = 10
	attacktext = "bites"
	speed = 2

/mob/living/simple_animal/hostile/yaoguai
	name = "yao guai"
	desc = "Don't feed the yao guai..."
	icon_state = "yao_guai"
	icon_living = "yao_guai"
	icon_dead = "yao_guai_dead"
	icon_gib = "bear_gib"

/mob/living/simple_animal/hostile/gekkon
	name = "Gekkon"
	desc = "It's Gekkon, not G.E.C.K."
	icon_state = "gekkon"
	icon_living = "gekkon"
	icon_dead = "gekkon_dead"
	//speak_chance = 20
	//speak = list("Squeek!", "Squeek, i say", "Squeek", "Squeek", "Squeek", "Squeek!", "Squeek", "Squeek!")
	//speak_emote = list("chirps")
	turns_per_move = 1
	response_help = "pets"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	maxHealth = 60
	health = 60
	butcher_results = list(/obj/item/stack/sheet/gekkonhide = 1, \
	/obj/item/weapon/reagent_containers/food/snacks/meat/slab/gekkon = 1)
	faction = list("wmobs")
	melee_damage_lower = 10
	melee_damage_upper = 15
	attacktext = "bites"
	speed = 2

/mob/living/simple_animal/hostile/deathclaw
	name = "Deathclaw"
	desc = "A huge monster"
	icon = 'icons/mob/deathclaw.dmi'
	icon_state = "deathclaw"
	icon_living = "deathclaw"
	icon_dead = "deathclaw_dead"
	//speak_chance = 40
	//speak = list("GRRRRRR!", "ARGH!", "NNNNNGH!", "HMPH!", "ARRRRR!")
	//speak_emote = list("shouts", "yells")
	speed = 3
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "tries to push aside"
	response_harm = "hits"
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab/deathclaw = 5)
	maxHealth = 500
	health = 500
	force_threshold = 20
	faction = list("wclaw")
	melee_damage_lower = 40
	melee_damage_upper = 60
	attacktext = "slashes"
	attack_sound = 'sound/weapons/bladeslice.ogg'


/mob/living/simple_animal/hostile/badmutant
	name = "Mutant"
	desc = "A huge and ugly super mutant."
	icon = 'icons/mob/hulk.dmi'
	icon_state = "hulk_113_s"
	icon_dead = "hulk_113_s"
	speak_chance = 40
	speak = list("GRRRRRR!", "ARGH!", "NNNNNGH!", "HMPH!", "ARRRRR!")
	speak_emote = list("shouts", "yells")
	speed = 5
	turns_per_move = 5
	response_help = "touches"
	response_disarm = "tries to push aside"
	response_harm = "hits"
	maxHealth = 300
	health = 300
	force_threshold = 15
	faction = list("wmaster")
	melee_damage_lower = 25
	melee_damage_upper = 35
	attacktext = "hits"
	attack_sound = 'sound/weapons/punch4.ogg'

/mob/living/simple_animal/hostile/badmutant/death(gibbed)
	health = 0
	icon = 'icons/mob/Hulk_dead.dmi'
	icon_state = icon_dead
	stat = DEAD
	density = 0
	if(!gibbed)
		visible_message("<span class='danger'>\the [src] stops moving...</span>")
	..()

/mob/living/simple_animal/hostile/rad_scorpion
	name = "giant rad scorpion"
	desc = "Furry and black, it makes you shudder to look at it. This one has deep red eyes."
	icon_state = "guard"
	icon_living = "guard"
	icon_dead = "guard_dead"
	speak_emote = list("chitters")
	//emote_hear = list("chitters")
	speak_chance = 5
	turns_per_move = 5
	see_in_dark = 10
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/radlegred = 2, /obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider/radmeatred = 3)
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "hits"
	maxHealth = 200
	health = 200
	melee_damage_lower = 10
	melee_damage_upper = 20
	faction = list("scorpions")
	var/busy = 0
	pass_flags = PASSTABLE
	move_to_delay = 6
	ventcrawler = 2
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	//unique_name = 1
	gold_core_spawnable = 1
	see_invisible = SEE_INVISIBLE_MINIMUM
	see_in_dark = 4

/mob/living/simple_animal/hostile/rad_scorpion/blue
	name = "giant rad scorpion"
	desc = "Furry, blue and looks deadly, it's been mutated for years."
	icon_state = "radscorpion"
	icon_living = "radscorpion"
	icon_dead = "radscorpion_d"
	icon_gib = "radscorpion_g"
	maxHealth = 250
	health = 250
	melee_damage_lower = 15
	melee_damage_upper = 20
	move_to_delay = 5
	faction = list("scorpions")
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/radlegblue = 2, /obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider/radmeatblue = 3)

/mob/living/simple_animal/hostile/ghoul
	name = "Feral Ghoul"
	desc = "necrotic post-humans, are decrepit, rotting, zombie-like mutants."
	icon_state = "feralghoul"
	icon_living = "feralghoul"
	icon_dead = "feralghoul_d"
	icon_gib = "feralghoul_g"
	speak_chance = 0
	turns_per_move = 5
	response_help = "hugs"
	response_disarm = "gently pushes aside"
	response_harm = "hits"
	speed = 0
	maxHealth = 60
	health = 60

	harm_intent_damage = 10
	melee_damage_lower = 20
	melee_damage_upper = 20
	attacktext = "scratche"
	attack_sound = 'sound/weapons/bite.ogg'

	minbodytemp = 0
	maxbodytemp = 1500

	faction = list("ghoul")
	gold_core_spawnable = 1
	environment_smash = 0

/mob/living/simple_animal/hostile/ghoul/glowing
	name = "Glowing Feral Ghoul"
	desc = "necrotic post-humans, are decrepit, rotting, zombie-like mutants."
	icon_state = "glowinghoul"
	icon_living = "glowinghoul"
	icon_dead = "glowinghoul_d"
	icon_gib = "glowinghoul_g"
	maxHealth = 100
	health = 100
	harm_intent_damage = 15
	melee_damage_lower = 20
	melee_damage_upper = 20

/mob/living/simple_animal/hostile/ghoul/glowing/New()
	..()
	set_light(1)

/////////////////////////////////
/////		PASSIVE			/////
/////////////////////////////////

mob/living/simple_animal/pet/dog/mutant
	name = "Brah Min"
	desc = "A huge and ugly super mutant with a showel full of brahmin feces.<br>He behaves like totally insane and it seems he can speak only English language.<br>He's all concerned only about his (probably not much so) brahmins."
	icon = 'icons/mob/hulk.dmi'
	icon_state = "hulk_brahmin_s"
	icon_dead = "hulk_brahmin_s"
	maxHealth = 300
	health = 300
	speak_chance = 30
	speak = list("Hey you! These are my brahmins!", "And I say, hey hey hey hey! I said hey, what's going on?", "What do you want from my brahmins?!", "Me gonna clean brahmin poop again now!", "I love brahmins, brahmins are good, just poop much!", "Do not speak to my brahmins ever again, you hear?!", "Bad raiders come to steal my brahmins - I crush their heads with my brahmin poop shovel!", "Do not come to my brahmins! Do not touch my brahmins! Do not look at my brahmins!", "I'm watching you, and my brahmins watch too!", "Brahmins say moo, and I'm saying - hey, get your ugly face out of my way!")
	speak_emote = list("shouts", "yells")
	emote_hear = list("looks around", "takes combat position", "is counting brahmins","yawns")
	emote_see = list("raises his brahmin poop shovel", "sticks his shovel into a large pile of brahmin feces", "shovels brahmin feces away", "waves his brahmin poop shovel above his head angrily")
	response_help  = "touches"
	response_disarm = "pushes"
	response_harm   = "punches"
	attack_sound = 'sound/misc/gameover.ogg'
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/bearsteak = 3)

/mob/living/simple_animal/brahmin
	name = "brahmin"
	desc = "Brahmin or brahma are mutated cattle with two heads and giant udders.<br>Known for their milk, just don't tip them over."
	icon_state = "brahmin"
	icon_living = "brahmin"
	icon_dead = "brahmin_d"
	icon_gib = "brahmin_g"
	speak = list("Moo?","Moo!","MOOOOOO")
	speak_emote = list("moos","moos hauntingly")
	emote_hear = list("brays.")
	emote_see = list("shakes its head.")
	speak_chance = 1
	turns_per_move = 5
	see_in_dark = 6
	butcher_results = list(/obj/item/weapon/reagent_containers/food/snacks/meat/slab = 6)
	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "kicks"
	attacktext = "kicks"
	attack_sound = 'sound/weapons/punch1.ogg'
	health = 50
	var/obj/udder/udder = null
	gold_core_spawnable = 2

/mob/living/simple_animal/pet/dog/protectron
	name = "Marvin"
	desc = "A standard RobCo RX2 V1.16.4 'vault helper', loaded with Vault protocols.<br>Looks like it was kept operational for an indefinite period of time - a body is covered in cracks and dents of various size, that have been repared so many times you are amazed the machine is still functioning at all."
	icon = 'icons/mob/animal.dmi'
	icon_state = "protectron"
	icon_dead = "protectron_dead"
	maxHealth = 50
	health = 50
	speak_chance = 30
	speak = list("Welcome to Vault 113! On behalf of Vault-Tec Corporation we wish you a good stay!", "Vault Dweller - remember the basic rules! 1. Always abide the Overseer and his orders! 2. Never under any circumstances leave the safety of the Vault, unless the Overseer orders to! 3. If you feel sick or strange - contact the medical personnel immediately!", "If Overseer orders you to evacuate the Vault - remember the Vault-Tec Vault Evacuation Protocol! 1. Line up in an orderly fashion! 2. To avoid the instant eye damage because of bright sun light - use protective eye wear! 3. Once outside the Vault, be prepared to live a life new! With help from the Garden of Eden Creation Kit! 4. Use G.E.C.K. to create the New World you've been waiting for!", "Vault Dweller, remember - I'm a robot. I'm not a refrigerator.", "You can blame the RobCo Industries for making androids with Genuine People Personalities. I'm a personality prototype. You can tell, can't you...?", "Here I am, brain the size of a planet, and they ask me to take you to the Overseer. Call that job satisfaction, 'cause I don't.", "The first ten million years were the worst. And the second ten million: they were the worst, too. The third ten million I didn't enjoy at all. After that, I went into a bit of a decline.", "You think you've got problems. What are you supposed to do if you are a manically depressed robot? No, don't even bother answering. I'm 50,000 times more intelligent than you and even I don't know the answer.", "Ghastly, isn't it? All the doors in this Vault have been programmed to have a cheery and sunny disposition.", "It is better not to leave the safety of the Vault. I've calculated your chance of survival, but I don't think you'll like it.")
	speak_emote = list("beeps", "buzzes")
	emote_hear = list("beeps", "buzzes", "is scanning the enviroment","is experiencing a slight system lag")
	emote_see = list("waves its manipulators", "is calculating chances of survival", "has something going deep inside of its CPU", "recovers from another system error")
	response_help  = "shakes manipulator"
	response_disarm = "pushes"
	response_harm   = "punches"
	attack_sound = 'sound/voice/liveagain.ogg'
	butcher_results = list(/obj/effect/gibspawner/robot = 1)

/////////////////////////////////
/////	HOSTILE BORGS		/////
/////////////////////////////////

/mob/living/simple_animal/hostile/robot
	name = "Protectron"
	desc = "A prewar Robco brand protectron.."
	icon_state = "protectronWB"
	icon_living = "protectronWB"
	icon_dead = "protectronWB-d"
	icon_gib = "protectronWB"
	speak_chance = 0
	turns_per_move = 3
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 4.5
	stat_attack = 1
	robust_searching = 1
	maxHealth = 300
	health = 300
	harm_intent_damage = 15
	melee_damage_lower = 25
	melee_damage_upper = 40
	minimum_distance = 2
	retreat_distance = 2
	attacktext = "punches"
	attack_sound = 'sound/weapons/punch1.ogg'
	a_intent = "harm"
	var/weapon1
	var/weapon2
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	unsuitable_atmos_damage = 15
	faction = list("syndicate")
	status_flags = CANPUSH
	vision_range = 12
	aggro_vision_range = 12
	idle_vision_range = 12

/mob/living/simple_animal/hostile/robot/death(gibbed)
	..(gibbed)
	if(weapon1)
		new weapon1 (src.loc)
	if(weapon2)
		new weapon2 (src.loc)
	return

/mob/living/simple_animal/hostile/robot/ranged
	name = "Protectron"
	desc = "Pre-war type of protectron, hmmm... its really dangerous machine."
	rapid = 1
	ranged = 1
	projectiletype = /obj/item/projectile/protectron
	projectilesound = 'sound/weapons/laser.ogg'

/mob/living/simple_animal/hostile/gutsy
	name = "mister gutsy"
	desc = "Fucking robot, it finna cut you."
	icon = 'icons/mob/robots.dmi'
	icon_state = "g_secborg"
	icon_living = "g_secborg"
	maxHealth = 500
	health = 500
	stat_attack = 1
	robust_searching = 1
	a_intent = "harm"
	armour_penetration = 20
	attacktext = "saws through"
	melee_damage_lower = 35
	melee_damage_upper = 45
	attack_sound = 'sound/weapons/bladeslice.ogg'
	faction = list("syndicate")
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 0, "min_tox" = 0, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	gold_core_spawnable = 1
	environment_smash = 0

/mob/living/simple_animal/hostile/gutsy/death(gibbed)
	..(1)
	visible_message("<span class='warning'>[src] blows apart!</span>")
	new /obj/effect/decal/cleanable/blood/gibs/robot(src.loc)
	var/datum/effect/system/spark_spread/s = new /datum/effect/system/spark_spread
	s.set_up(3, 1, src)
	s.start()
	ghostize()
	qdel(src)
	return

/mob/living/simple_animal/hostile/gutsy/ranged
	name = "mister gutsy"
	desc = "Fucking robot, it finna shoot you."
	ranged = 1
	retreat_distance = 2
	minimum_distance = 2
	projectilesound = 'sound/f13weapons/plasma_rifle.ogg'
	projectiletype = /obj/item/projectile/beam/plasma_beam