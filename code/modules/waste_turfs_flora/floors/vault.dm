//Test vault-tec plating
/turf/simulated/floor/engine/vaulttec
	name = "floor"
	icon = 'icons/turf/floors2.dmi'
	icon_state = "plating"

/turf/simulated/floor/engine/vaulttec/attackby(obj/item/weapon/C, mob/user, params)
	if(!C || !user)
		return
	if(istype(C, /obj/item/weapon/wrench))
		user << "<span class='notice'>You hit the floor with a wrench...<br>Why would you even...</span>"
		return
