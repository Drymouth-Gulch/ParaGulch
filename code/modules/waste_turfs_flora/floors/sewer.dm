/turf/simulated/floor/engine/sewer
	name = "metal floor"
	icon = 'icons/turf/floors3.dmi'
	icon_state = "tunnelintact"

/turf/simulated/floor/engine/sewer/attackby(obj/item/weapon/C, mob/user, params)
	if(!C || !user)
		return
	if(istype(C, /obj/item/weapon/wrench))
		user << "<span class='notice'>You try to get to the pipes but all of your attempts are futile...<br>Why would you even...</span>"
		return