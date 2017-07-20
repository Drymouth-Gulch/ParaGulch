/*This file contains medicine reagents.
This file contains:

	-STIMPACK
	-SUPERSTIMPACK
	-RADX
	-MENTATS
	-HEALINGPOWDER
	-RADAWAY
	-MEDX
	-FIXER


*/

datum/reagent/medicine/stimpak
	name = "stim chemicals"
	id = "stimpak"
	description = "Chemicals found in pre-war stimpaks."
	reagent_state = LIQUID
	color = "#e50d0d"

/datum/reagent/medicine/stimpak/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-2*REM)
	M.adjustFireLoss(-2*REM)
	M.adjustOxyLoss(-2*REM)
	..()

datum/reagent/medicine/super_stimpak
	name = "super stim chemicals"
	id = "super_stimpak"
	description = "Chemicals found in pre-war stimpaks."
	reagent_state = LIQUID
	color = "#e50d0d"

datum/reagent/medicine/super_stimpak/on_mob_life(mob/living/M)
	M.adjustBruteLoss(-3*REM)
	M.adjustFireLoss(-3*REM)
	M.adjustOxyLoss(-3*REM)
	..()
	return

/datum/reagent/medicine/radx
	name = "Rad-X"
	id = "radx"
	description = "Reduces massive amounts of radiation and some toxin damage."
	reagent_state = LIQUID
	color = "#ff6100"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/radx/on_mob_life(mob/living/M)
	if(M.radiation > 0)
		M.radiation -= 4
	M.adjustToxLoss(-1*REM)
	if(M.radiation < 0)
		M.radiation = 0
	..()
	return

/datum/reagent/medicine/mentats
	name = "mentat powder"
	id = "mentats"
	description = "A powerful and drug that heals and increases the perception of the user."
	color = "#C8A5DC"

/datum/reagent/medicine/mentats/on_mob_life(mob/living/M)
	if(M.disabilities & BLIND)
		if(ishuman(M))
			var/mob/living/carbon/human/H = M
			var/obj/item/organ/internal/eyes/E = H.get_int_organ(/obj/item/organ/internal/eyes)
			if(prob(20))
				M << "<span class='warning'>Your vision slowly returns...</span>"
				M.disabilities &= ~BLIND
				M.disabilities &= NEARSIGHTED
				M.eye_blurry = 35

			else if(M.disabilities & NEARSIGHTED)
				M << "<span class='warning'>The blackness in your peripheral vision fades.</span>"
				M.disabilities &= ~NEARSIGHTED
				M.eye_blurry = 10

			else if(M.eye_blind || M.eye_blurry)
				M.eye_blind = 0
				M.eye_blurry = 0
			else if(E.damage > 0) //(M.eye_stat > 0)
				E.damage -= 1 //M.eye_stat -= 1
				E.damage = Clamp(E.damage, 0, INFINITY) //M.eye_stat = Clamp(M.eye_stat, 0, INFINITY)
			var/high_message = pick("Your eyes widen.", "You feel more intelligent.", "You feel like you can solve any problem!")
			if(prob(5))
				M << "<span class='notice'>[high_message]</span>"
				M.adjustBrainLoss(-3*REM)
				M.SetEarDamage(0,0)
				..()
				return

/datum/reagent/medicine/healing_powder
	name = "healing powder"
	id = "healing_powder"
	description = "If used in touch-based applications, immediately restores bruising as well as restoring more over time. If ingested through other means, deals minor toxin damage."
	reagent_state = LIQUID
	color = "#C8A5DC"

/datum/reagent/medicine/healing_powder/on_mob_life(mob/living/M)
	M.adjustFireLoss(-2*REM)
	M.adjustBruteLoss(-2*REM)
	..()
	M.druggy = max(M.druggy, 15)
	if(isturf(M.loc) && !istype(M.loc, /turf/space))
		if(M.canmove)
			if(prob(10)) step(M, pick(cardinal))
	if(prob(7))
		M.emote(pick("twitch","drool","moan","giggle"))
	..()
	return

/datum/reagent/medicine/radaway
	name = "Radaway"
	id = "radaway"
	description = "A potent anti-toxin drug."
	reagent_state = LIQUID
	color = "#ff7200"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/radaway/on_mob_life(mob/living/M)
	M.adjustToxLoss(-4*REM)
	..()
	return

/datum/reagent/medicine/medx
	name = "Med-X"
	id = "medx"
	description = "Med-X is a potent opiate analgesic that binds to opioid receptors in the brain and central nervous system, reducing the perception of pain as well as the emotional response to pain."
	reagent_state = LIQUID
	color = "#6D6374"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM
	overdose_threshold = 20
	addiction_chance = 75

/datum/reagent/medicine/medx/on_mob_life(mob/living/M)
	if(iscarbon(M))
		var/mob/living/carbon/N = M
		N.hal_screwyhud = 5
	if(M.health == M.maxHealth)
		M.hallucination += 5
	M.status_flags |= IGNORESLOWDOWN
	M.adjustBruteLoss(-0.50*REM)
	M.adjustFireLoss(-0.50*REM)
	M.AdjustParalysis(-5)
	M.AdjustStunned(-5)
	M.AdjustWeakened(-5)
	M.adjustStaminaLoss(-15)
	..()

/datum/reagent/medicine/medx/reaction_mob(mob/living/M, method=TOUCH, reac_volume, show_message = 1)
	if(iscarbon(M) && M.stat != DEAD)
		if(show_message)
			M << pick("You feel <b>FUCKING INVINCIBLE!</b>.", "You feel your senses numbing.", "You feel like you can push it to the limit.") //It's a painkiller, after all
	..()

/datum/reagent/medicine/medx/on_mob_delete(mob/living/M)
	if(iscarbon(M))
		var/mob/living/carbon/N = M
		N.hal_screwyhud = 0
	..()

/datum/reagent/medicine/medx/overdose_process(mob/living/M)
	var/obj/item/I = M.get_active_hand()
	if(I)
		M.drop_item()
	M.Dizzy(2)
	M.Jitter(2)
	M.sleeping += 1
	..()
	return

/datum/reagent/medicine/medx/addiction_act_stage1(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
		M.Dizzy(2)
		M.Jitter(2)
	..()
	return
/datum/reagent/medicine/medx/addiction_act_stage2(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
		M.adjustToxLoss(1*REM)
		M.Dizzy(3)
		M.Jitter(3)
	..()
	return
/datum/reagent/medicine/medx/addiction_act_stage3(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
		M.adjustToxLoss(2*REM)
		M.Dizzy(4)
		M.Jitter(4)
	..()
	return
/datum/reagent/medicine/medx/addiction_act_stage4(mob/living/M)
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
		M.adjustToxLoss(3*REM)
		M.Dizzy(5)
		M.Jitter(5)
	..()
	return

/datum/reagent/medicine/fixer
	name = "Fixer"
	id = "fixer"
	description = "Treats addictions while also purging other chemicals from the body. Side effects include nausea."
	reagent_state = LIQUID
	color = "#C8A5DC"
	metabolization_rate = 0.5 * REAGENTS_METABOLISM

/datum/reagent/medicine/fixer/on_mob_life(mob/living/M)
	for(var/datum/reagent/R in M.reagents.reagent_list)
		if(R != src)
			M.reagents.remove_reagent(R.id,2)
	for(var/datum/reagent/R in M.reagents.addiction_list)
		M.reagents.addiction_list.Remove(R)
		M << "<span class='notice'>You feel like you've gotten over your need for [R.name].</span>"
	M.Dizzy(2)
	..()
	return