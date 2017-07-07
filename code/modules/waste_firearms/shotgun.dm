/*This file contains firearms with shotgun styled ammo loading (bolt action, gun cocking between shots etc.)

This file contains:

- Shotguns
	Hunting Shotgun
		+ Sawnoff func
- Combat Shotguns    
	Colt Rangemaster
	
- Bolt Actions
    Hunting Rifle
		+ Scoped
	
*/

/////////////////////////
/////	SHOTGUNS	/////
/////////////////////////
/obj/item/weapon/gun/projectile/shotgun/hunting
	name = "hunting shotgun"
	desc = "A traditional shotgun with wood furniture and a four-shell capacity underneath."
	icon_state = "shotgun"
	item_state = "shotgun"
	sawn_desc = "Blast 'em."

/obj/item/weapon/gun/projectile/shotgun/hunting/attackby(obj/item/A, mob/user, params)
	..()
	if(istype(A, /obj/item/weapon/circular_saw) || istype(A, /obj/item/weapon/gun/energy/plasmacutter))
		sawoff(user)
	if(istype(A, /obj/item/weapon/melee/energy))
		var/obj/item/weapon/melee/energy/W = A
		if(W.active)
			sawoff(user)

/////////////////////////////
/////	COMBAT SHOTGUNS	/////
/////////////////////////////


/obj/item/weapon/gun/projectile/shotgun/automatic/hunting
	name = "Colt Rangemaster"
	desc = "A Colt Rangemaster semi-automatic rifle chambered in .308. Single-shot only."
	icon_state = "rangemaster"
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	//fire_sound = 'sound/f13weapons/hunting_rifle.ogg'
	
	
/////////////////////////////
/////	BOLT ACTIONS	/////
/////////////////////////////

/obj/item/weapon/gun/projectile/shotgun/boltaction/huntingrifle //reskinned bolt action rifle 
	name = "Hunting rifle"
	desc = "A favourite of wasters and caravneers alike. Good for taking down lil' varmints."
	icon_state = "308"
	item_state = "assault_rifle"
	
/obj/item/weapon/gun/projectile/shotgun/boltaction/scoped //zoomable hunting rifle
	name = "scoped hunting rifle"
	desc = "This piece of junk looks like something that could have been used 700 years ago, but makes up for it with the scope."
	icon_state = "rifle308_scope"
	item_state = "assault_rifle"
	mag_type = /obj/item/ammo_box/magazine/internal/boltaction
	zoomable = TRUE
	zoom_amt = 7 //Long range, enough to see in front of you, but no tiles behind you.