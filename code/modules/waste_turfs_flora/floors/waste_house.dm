//Wasteland house
/turf/simulated/floor/engine/house
	name = "wooden floor"
	icon = 'icons/turf/floors3.dmi'
	icon_state = "housewood1"

/turf/simulated/floor/engine/house/attackby(obj/item/weapon/C, mob/user, params)
	if(!C || !user)
		return
	if(istype(C, /obj/item/weapon/wrench))
		user << "<span class='notice'>You try to break the floor with a wrench but all of your attempts are futile...<br>Why would you even...</span>"
		return

/turf/simulated/floor/engine/housebase
	name = "substruction"
	icon = 'icons/turf/floors3.dmi'
	icon_state = "housebase"

/turf/simulated/floor/engine/housebase/attackby(obj/item/weapon/C, mob/user, params)
	if(!C || !user)
		return
	if(istype(C, /obj/item/weapon/wrench))
		user << "<span class='notice'>You try to destroy the building remains but it's too hard for a wrench to break...<br>Why would you even...</span>"
		return