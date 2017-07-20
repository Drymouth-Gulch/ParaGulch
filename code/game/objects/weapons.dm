/obj/item/weapon
	name = "weapon"
	icon = 'icons/obj/weapons.dmi'
	hitsound = "swing_hit"
	//Fallout sword draw sound.
	var/drawsound = null

/obj/item/weapon/pickup(mob/user)
	drawsound(user)

/obj/item/weapon/proc/drawsound(mob/user)
	if(drawsound)
		user.visible_message("<span class = 'warning'><b>[user] grabs a weapon!</b></span>")
		playsound(user, drawsound, 50, 1)
	else
		return