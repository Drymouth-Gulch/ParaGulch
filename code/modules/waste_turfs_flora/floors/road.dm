/turf/simulated/floor/engine/road
	name = "road"
	icon = 'icons/turf/floors3.dmi'
	icon_state = "outermiddle"

/turf/simulated/floor/engine/road/attackby(obj/item/weapon/C, mob/user, params)
	if(!C || !user)
		return
	if(istype(C, /obj/item/weapon/wrench))
		user << "<span class='notice'>You hit the road with a wrench...<br>Why would you even...</span>"
		return