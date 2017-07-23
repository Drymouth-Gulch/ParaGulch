/turf/simulated/wall/composite
	name = "composite wall"
	icon = 'icons/turf/walls/composite.dmi'
	icon_state = "ruins0"
	//walltype = "ruins"
	smooth = SMOOTH_FALSE

/turf/simulated/wall/composite/New()
	..()
	for(var/turf/simulated/wall/composite/W in range(src,1))
		W.relativewall()
	..()

/turf/simulated/wall/composite/Del()
	for(var/turf/simulated/wall/composite/W in range(src,1))
		W.relativewall()
	..()

/turf/simulated/wall/composite/proc/relativewall()
	var/junction = 0

	for(var/cdir in cardinal)
		var/turf/T = get_step(src,cdir)
		if(istype(T, /turf/simulated/wall/composite))
			junction |= cdir
	icon_state = "ruins[junction]"


/turf/simulated/wall/composite/store
	icon = 'icons/turf/walls/store.dmi'
	icon_state = "store0"
	//walltype = "store"

/turf/simulated/wall/composite/superstore
	icon = 'icons/turf/walls/superstore.dmi'
	icon_state = "supermart0"
	//walltype = "supermart"