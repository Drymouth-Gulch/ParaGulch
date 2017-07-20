/*This file contains melee weapons.

This file contains:

	-MACHETE
	-POWERGAUNTLET
	-PIPE
	-GOLF
	-THROWINGSTAR
	-SWITCHBLADE
	//-TAILCLUB
	-SLEDGEHAMMER


*/

/obj/item/weapon/machete
	name = "Machete"
	desc = "The machete appears to be a makeshift weapon, and consists of a lawn mower blade strapped to a wooden handle. It is the primary melee weapon of Caesar's Legion. Aside from having a low Strength requirement, it also does bonus damage to limbs."
	icon_state = "machete"
	item_state = "machete"
	flags = CONDUCT
	slot_flags = SLOT_BELT
	force = 35
	throwforce = 15
	w_class = 3
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	block_chance = 20
	sharp = 1
	drawsound = 'sound/items/unholster_sword03.ogg'

/obj/item/weapon/powergauntlet
	name = "Powergauntlet"
	desc = "Power Knuckles 'Big ram' produced by Beau. Most consider him the best weapon for close combat. The rest of it's just fear. Power is provided by small batteries"
	icon_state = "powergauntlet"
	item_state = "powergauntlet"
	slot_flags = SLOT_BELT
	force = 35
	throw_speed = 3
	throw_range = 4
	throwforce = 10
	w_class = 1

/obj/item/weapon/powergauntlet/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

/obj/item/weapon/pipe
	name = "Pipe"
	desc = "One of the ends has tape wrapped around it to improve grip, while the other is heavily corroded and/or bloodstained, and topped with a pipe fitting. Though it has a short reach, it has decent damage and a fast swing, making it a good melee weapon for players who are just starting out. "
	icon_state = "pipe"
	item_state = "pipe"
	slot_flags = SLOT_BELT
	force = 20
	throw_speed = 3
	throw_range = 4
	throwforce = 20
	w_class = 1

/obj/item/weapon/pipe/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

/obj/item/weapon/golf
	name = "9 iron"
	desc = "This old 9 iron is bent and battered after many years of exposure to the elements."
	icon_state = "golf"
	item_state = "golf"
	slot_flags = SLOT_BELT
	force = 30
	throw_speed = 3
	throw_range = 4
	throwforce = 10
	w_class = 1

/obj/item/weapon/golf/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is impaling \himself with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS|FIRELOSS)

/obj/item/weapon/switchblade
	name = "switchblade"
	icon_state = "switchblade"
	desc = "A sharp, concealable, spring-loaded knife."
	flags = CONDUCT
	force = 3
	w_class = 2
	throwforce = 5
	throw_speed = 3
	throw_range = 6
	materials = list(MAT_METAL=12000)
	origin_tech = "materials=1"
	hitsound = 'sound/weapons/Genhit.ogg'
	attack_verb = list("stubbed", "poked")
	var/extended = 0

/obj/item/weapon/throwing_star
	name = "throwing star"
	desc = "An ancient weapon still used to this day due to it's ease of lodging itself into victim's body parts"
	icon_state = "throwingstar"
	item_state = "eshield0"
	force = 2
	throwforce = 20 //This is never used on mobs since this has a 100% embed chance.
	throw_speed = 4
	embedded_pain_multiplier = 4
	w_class = 2
	embed_chance = 100
	embedded_fall_chance = 0 //Hahaha!
	sharp = 1
	materials = list(MAT_METAL=500, MAT_GLASS=500)

/obj/item/weapon/switchblade/attack_self(mob/user)
	extended = !extended
	playsound(src.loc, 'sound/weapons/batonextend.ogg', 50, 1)
	if(extended)
		force = 20
		w_class = 3
		throwforce = 23
		icon_state = "switchblade_ext"
		attack_verb = list("slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
		hitsound = 'sound/weapons/bladeslice.ogg'
	else
		force = 3
		w_class = 2
		throwforce = 5
		icon_state = "switchblade"
		attack_verb = list("stubbed", "poked")
		hitsound = 'sound/weapons/Genhit.ogg'

/obj/item/weapon/switchblade/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is slitting \his own throat with the [src.name]! It looks like \he's trying to commit suicide.</span>")
	return (BRUTELOSS)

//obj/item/weapon/tailclub
//	name = "tail club"
//	desc = "For the beating to death of lizards with their own tails."
//	icon_state = "tailclub"
//	force = 14
//	throwforce = 1 // why are you throwing a club do you even weapon
//	throw_speed = 1
//	throw_range = 1
//	attack_verb = list("clubbed", "bludgeoned")
//	origin_tech = "combat=1"

/obj/item/weapon/twohanded/sledgehammer
	name = "Sledgehammer"
	desc = "Big hammer with massive grip. Very popular weapon among muscular types."
	force = 15
	w_class = 4
	slot_flags = SLOT_BACK
	force_unwielded = 15
	force_wielded = 30
	throwforce = 20
	throw_speed = 2
	attack_verb = list("smashed", "slammed", "whacked", "thwacked")
	icon = 'icons/obj/weapons.dmi'
	icon_state = "sledgehammer0"
	block_chance = 0

/obj/item/weapon/twohanded/sledgehammer/update_icon()
	icon_state = "sledgehammer[wielded]"
	return

/obj/item/weapon/twohanded/sledgehammer/attack(mob/target, mob/living/user)
	add_fingerprint(user)
	if((CLUMSY in user.disabilities) && prob(50))
		user << "<span class ='warning'>You club yourself over the head with [src].</span>"
		user.Weaken(3)
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.apply_damage(2*force, BRUTE, "head")
		else
			user.take_organ_damage(2*force)
		return
	if(isrobot(target))
		return ..()
	if(!isliving(target))
		return ..()
	var/mob/living/carbon/C = target
	if(C.stat)
		user << "<span class='warning'>It would be dishonorable to attack a foe while they cannot retaliate.</span>"
		return
/*
	switch(user.a_intent)
		if("disarm")
			if(!wielded)
				return ..()
			if(!ishuman(target))
				return ..()
			var/mob/living/carbon/human/H = target
			var/list/fluffmessages = list("[user] clubs [H] with [src]!", \
										  "[user] smacks [H] with the butt of [src]!", \
										  "[user] broadsides [H] with [src]!", \
										  "[user] smashes [H]'s head with [src]!", \
										  "[user] beats [H] with front of [src]!", \
										  "[user] twirls and slams [H] with [src]!")
			H.visible_message("<span class='warning'>[pick(fluffmessages)]</span>", \
								   "<span class='userdanger'>[pick(fluffmessages)]</span>")
			playsound(get_turf(user), 'sound/effects/woodhit.ogg', 75, 1, -1)
			H.adjustStaminaLoss(rand(13,20))
			if(prob(10))
				H.visible_message("<span class='warning'>[H] collapses!</span>", \
									   "<span class='userdanger'>Your legs give out!</span>")
				H.Weaken(4)
			if(H.staminaloss && !H.sleeping)
				var/total_health = (H.health - H.staminaloss)
				if(total_health <= config.health_threshold_crit && !H.stat)
					H.visible_message("<span class='warning'>[user] delivers a heavy hit to [H]'s head, knocking them out cold!</span>", \
										   "<span class='userdanger'>[user] knocks you unconscious!</span>")
					H.sleeping += 30
					H.adjustBrainLoss(25)
			return
		else
			return ..()
*/
	return ..()

/obj/item/weapon/twohanded/sledgehammer/hit_reaction(mob/living/carbon/human/owner, attack_text, final_block_chance)
	if(wielded)
		return ..()
	return 0