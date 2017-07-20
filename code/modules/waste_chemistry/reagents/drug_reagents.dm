/*This file contains drug reagents.
This file contains:

	-PSYCHO
	-TURBO
	-JET


*/

/datum/reagent/drug/psycho
	name = "Psycho fluid"
	id = "psycho"
	description = "Makes the user hit harder and shrug off slight stuns, but causes slight brain damage and carries a risk of addiction."
	reagent_state = LIQUID
	color = "#FF0000" // it's red as fuck
	overdose_threshold = 30
	addiction_chance = 65

/datum/reagent/drug/psycho/on_mob_life(mob/living/M)
	var/high_message = pick("<br><font color='#FF0000'><b>FUCKING KILL!</b></font>", "<br><font color='#FF0000'><b>RAAAAR!</b></font>", "<br><font color='#FF0000'><b>BRING IT!</b></font>")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.AdjustParalysis(-0.5)
	M.AdjustStunned(-0.5)
	M.AdjustWeakened(-0.5)
	M.adjustStaminaLoss(-1)
	M.adjustBrainLoss(0.25)
	M.hallucination += 5
	..()
	return

/datum/reagent/drug/psycho/overdose_process(mob/living/M)
	M.hallucination += 20
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	if(prob(20))
		M.emote(pick("twitch","drool","laugh"))
	if(prob(33))
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
	M.adjustBrainLoss(10)
	..()
	return

/datum/reagent/drug/psycho/addiction_act_stage1(mob/living/M)
	M.hallucination += 10
	M.Jitter(5)
	M.adjustBrainLoss(10)
	if(prob(20))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return
/datum/reagent/drug/psycho/addiction_act_stage2(mob/living/M)
	M.hallucination += 20
	M.Jitter(10)
	M.Dizzy(10)
	M.adjustBrainLoss(10)
	if(prob(30))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return
/datum/reagent/drug/psycho/addiction_act_stage3(mob/living/M)
	M.hallucination += 30
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 2, i++)
			step(M, pick(cardinal))
	M.Jitter(15)
	M.Dizzy(15)
	M.adjustBrainLoss(10)
	if(prob(40))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return
/datum/reagent/drug/psycho/addiction_act_stage4(mob/living/carbon/human/M)
	M.hallucination += 40
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.Jitter(50)
	M.Dizzy(50)
	M.adjustToxLoss(5)
	M.adjustBrainLoss(10)
	if(prob(50))
		M.emote(pick("twitch","drool","laugh"))
	..()
	return

/datum/reagent/drug/turbo
	name = "Turbo fluid"
	id = "turbo"
	description = "Makes the user perceive time slower, heightening their reflexes and movements. Basically, it makes you fast. Carries a high risk of addiction."
	reagent_state = LIQUID
	color = "#E5E5FF"
	overdose_threshold = 30
	addiction_chance = 65

/datum/reagent/drug/turbo/on_mob_life(mob/living/M)
	var/high_message = pick("You feel hyper.", "You feel like you need to go faster.", "You feel like you can run the world.")
	if(prob(5))
		M << "<span class='notice'>[high_message]</span>"
	M.status_flags |= GOTTAGOREALLYFAST
	M.Jitter(2)
	M.adjustBrainLoss(0.25)
	if(prob(5))
		M.emote(pick("twitch", "shiver"))
	..()
	return

/datum/reagent/drug/turbo/overdose_process(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	if(prob(20))
		M.emote("laugh")
	if(prob(33))
		M.visible_message("<span class='danger'>[M]'s hands flip out and flail everywhere!</span>")
		var/obj/item/I = M.get_active_hand()
		if(I)
			M.drop_item()
	..()
	M.adjustToxLoss(5)
	return

/datum/reagent/drug/turbo/addiction_act_stage1(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.Jitter(5)
	if(prob(20))
		M.emote(pick("twitch","shake","groan"))
	..()
	return
/datum/reagent/drug/turbo/addiction_act_stage2(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.Jitter(10)
	M.Dizzy(10)
	if(prob(30))
		M.emote(pick("twitch","shake","groan"))
	..()
	return
/datum/reagent/drug/turbo/addiction_act_stage3(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 10, i++)
			step(M, pick(cardinal))
	M.Jitter(15)
	M.Dizzy(15)
	M.adjustToxLoss(2.5)
	if(prob(40))
		M.emote(pick("twitch","shake","groan"))
	..()
	return
/datum/reagent/drug/turbo/addiction_act_stage4(mob/living/carbon/human/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 20, i++)
			step(M, pick(cardinal))
	M.Jitter(20)
	M.Dizzy(20)
	M.adjustToxLoss(5)
	if(prob(50))
		M.emote(pick("twitch","shake","groan"))
	..()
	return

/datum/reagent/drug/jet
	name = "Jet fluid"
	id = "jet"
	description = "Induces a short, but intense high that'll make you go faster. Carries a high risk of addiction."
	reagent_state = LIQUID
	color = "#A52A2A"
	overdose_threshold = 20
	addiction_chance = 65

/datum/reagent/drug/jet/on_mob_life(mob/living/M)
	var/high_message = pick("You feel amazing.", "You feel like you haven't got a care in the world.", "You see pretty lights.")
	if(prob(10))
		M << "<span class='notice'>[high_message]</span>"
	if(prob(7))
		M.emote(pick("drool","moan","giggle","laugh"))
	M.druggy = max(M.druggy, 15)
	M.status_flags |= GOTTAGOFAST
	..()
	return

/datum/reagent/drug/jet/overdose_start(mob/living/M)
	M << "<span class='userdanger'>Bad trip! Bad trip!</span>"

/datum/reagent/drug/jet/overdose_process(mob/living/M)
	if(prob(20))
		M.emote("twitch","moan")
	M.Jitter(5)
	M.hallucination += 5
	M.adjustBrainLoss(0.25)
	M.adjustToxLoss(5)
	return

/datum/reagent/drug/jet/addiction_act_stage1(mob/living/M)
	M.adjustToxLoss(1)
	..()
	return
/datum/reagent/drug/jet/addiction_act_stage2(mob/living/M)
	M.adjustToxLoss(2)
	..()
	return
/datum/reagent/drug/jet/addiction_act_stage3(mob/living/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 4, i++)
			step(M, pick(cardinal))
	M.adjustBrainLoss(0.5)
	M.adjustToxLoss(3)
	..()
	return
/datum/reagent/drug/jet/addiction_act_stage4(mob/living/carbon/human/M)
	if(M.canmove && !istype(M.loc, /atom/movable))
		for(var/i = 0, i < 8, i++)
			step(M, pick(cardinal))
	M.adjustBrainLoss(1)
	M.adjustToxLoss(4)
	..()
	return