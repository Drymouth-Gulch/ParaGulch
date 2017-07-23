#define SINGLE "single"
#define VERTICAL "vertical"
#define HORIZONTAL "horizontal"

#define METAL 1
#define WOOD 2
#define SAND 3

//Wooden Planks for barricading, and cover you can duck behind

/obj/structure/barricade/wooden/planks
	icon_state = "board"
	health = 90
	maxhealth = 90
	layer = 5
	var/planks = 3
	var/maxplanks = 3

/obj/structure/barricade/wooden/planks/New()
	..()
	checkplanks()
	maxhealth = maxplanks*30

/obj/structure/barricade/wooden/planks/examine()
	..()
	usr << "<span class='notice'>There are [planks] boards left.</span>"

/obj/structure/barricade/wooden/planks/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/weapon/crowbar))
		visible_message("<span class='danger'>[user] begins pry off a board...</span>")
		if(do_after(user, 25, target = src))
			visible_message("<span class='danger'>[user] pries off a board!</span>")
			planks --
			checkplanks()
			if(prob(50))
				new /obj/item/stack/sheet/wood(user.loc)
			return
	..() //Adding more planks is an afterattack on the sheet type

/obj/structure/barricade/wooden/planks/attackby()
	..()
	if(health <= (planks-1)*30)
		planks --
		checkplanks()
	return

/obj/structure/barricade/wooden/planks/proc/checkplanks()
	health = planks*30 //Each board adds 30 health
	icon_state = "board-[planks]"
	if(health <= 0)
		qdel(src)

/obj/structure/barricade/wooden/planks/pregame/New() //Place these in the map maker to have a bit of randomization with boarded up windows/doors
	planks = rand(1,maxplanks)
	..()

/obj/structure/barricade/security
	name = "security barrier"
	desc = "A deployable barrier. Provides good cover in fire fights."
	icon = 'icons/obj/objects.dmi'
	icon_state = "barrier0"
	density = 0
	anchored = 0
	health = 180
	maxhealth = 180
	proj_pass_rate = 20
	ranged_damage_modifier = 0.5


/obj/structure/barricade/security/New()
	..()
	spawn(40)
		icon_state = "barrier1"
		density = 1
		anchored = 1
		visible_message("<span class='warning'>[src] deploys!</span>")


/obj/item/weapon/grenade/barrier
	name = "barrier grenade"
	desc = "Instant cover. Alt+click to toggle modes."
	icon = 'icons/obj/grenade.dmi'
	icon_state = "flashbang"
	item_state = "flashbang"
	actions_types = list(/datum/action/item_action/toggle_barrier_spread)
	var/mode = SINGLE

/obj/item/weapon/grenade/barrier/AltClick(mob/user)
	toggle_mode(user)

/obj/item/weapon/grenade/barrier/proc/toggle_mode(mob/user)
	switch(mode)
		if(SINGLE)
			mode = VERTICAL
		if(VERTICAL)
			mode = HORIZONTAL
		if(HORIZONTAL)
			mode = SINGLE

	user << "[src] is now in [mode] mode."

/obj/item/weapon/grenade/barrier/prime()
	new /obj/structure/barricade/security(get_turf(src.loc))
	switch(mode)
		if(VERTICAL)
			var/target_turf = get_step(src, NORTH)
			if(!(is_blocked_turf(target_turf)))
				new /obj/structure/barricade/security(target_turf)

			var/target_turf2 = get_step(src, SOUTH)
			if(!(is_blocked_turf(target_turf2)))
				new /obj/structure/barricade/security(target_turf2)
		if(HORIZONTAL)
			var/target_turf = get_step(src, EAST)
			if(!(is_blocked_turf(target_turf)))
				new /obj/structure/barricade/security(target_turf)

			var/target_turf2 = get_step(src, WEST)
			if(!(is_blocked_turf(target_turf2)))
				new /obj/structure/barricade/security(target_turf2)
	qdel(src)

/obj/item/weapon/grenade/barrier/ui_action_click()
	toggle_mode(usr)

#undef SINGLE
#undef VERTICAL
#undef HORIZONTAL

#undef METAL
#undef WOOD
#undef SAND