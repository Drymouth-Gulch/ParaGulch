/*This file contains automatic, burst-fire firearms

This file contains:

-
	greasegun
	american180
	10mm submachine gun
	Assault Rifle
	Infiltrator
	Marsman Carbine
	Service Rifle
	Minigun
	Pancor
	Riot Shotgun - Semi Automatic Shotgun
	LSW - Light Support Weapon


*/

/////////////////////////////////
/////	AUTOMATIC WEAPONS	/////
/////////////////////////////////

/obj/item/weapon/gun/projectile/automatic/greasegun
	name = "M3A1 grease gun"
	desc = "A mass-produced .45 caliber sub machine gun used in World War II. Slow fire rate means less waste of ammo and controllable bursts."
	icon_state = "grease_gun"
	item_state = "arg"
	slot_flags = 0
	origin_tech = "combat=3;materials=2"
	mag_type = /obj/item/ammo_box/magazine/stick45
	fire_sound = 'sound/f13weapons/greasegun.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 3

/obj/item/weapon/gun/projectile/automatic/american180
	name = "silenced .22 smg"
	desc = "An American 180, commonly used in prisons."
	icon_state = "american180"
	item_state = "shotgun"
	suppressed = 1
	can_unsuppress = 0
	fire_delay = 1
	mag_type = /obj/item/ammo_box/magazine/d22
	fire_sound = 'sound/f13weapons/american180.ogg'

/obj/item/weapon/gun/projectile/automatic/smg10mm
	name = "10-mm submachine gun"
	desc = "Submachine gun H&K MP9 (10-mm caliber variant). The average sub-machine gun, can operate in both single and automatic fire."
	icon_state = "smg10mm"
	item_state = "smg10mm"
	slot_flags = 0
	origin_tech = "combat=3;materials=2"
	mag_type = /obj/item/ammo_box/magazine/m10mm_auto
	fire_sound = 'sound/f13weapons/10mm_fire_03.ogg'
	can_suppress = 0
	burst_size = 3
 	//fire_delay = 1

/obj/item/weapon/gun/projectile/automatic/assault_rifle
	name = "Assault Rifle"
	desc = "An Assault Rifle. An old military model, out of use around the time of the war."
	icon_state = "assault_rifle"
	item_state = "assault_rifle"
	slot_flags = 0
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 1
	w_class = 4
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/assault_rifle/infiltrator
	name = "infiltrator"
	desc = "A customized R91 assault rifle, with a scope, integrated suppressor, cut down stock and polymer furniture."
	icon_state = "infiltrator"
	item_state = "arg"
	suppressed = 1
	can_unsuppress = 0
	zoomable = TRUE
	zoom_amt = 7
	//damageG=6  TODO - Work out efficient way of doing proper modifiers
	armour_penetration=0
	//stamina=0 TODO - Work out efficient way of doing proper modifiers
	//range=0 TODO - Work out efficient way of doing proper modifiers
	fire_sound = 'sound/weapons/Gunshot_large_silenced.ogg'
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/assault_rifle/infiltrator/New()
	..()
	update_icon()

	return

/obj/item/weapon/gun/projectile/automatic/marksman
	name = "Marksman Carbine"
	desc = "A 5.56 caliber assault rifle widely seen in use by pre-war U.S. military forces. Semi-automatic only."
	icon_state = "marksman_rifle"
	item_state = "arg"
	slot_flags = 0
	w_class = 4
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/marksman_rifle.ogg'
	can_suppress = 0
	burst_size = 1//Setting it to 0 is dumb. Just set it to one.
	fire_delay = 2
	zoomable = TRUE
	zoom_amt = 7
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	//damageG=10 TODO - Work out efficient way of doing proper modifiers
	armour_penetration=0
	//stamina=0 TODO - Work out efficient way of doing proper modifiers
	//range=0 TODO - Work out efficient way of doing proper modifiers
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/marksman/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/automatic/marksman/servicerifle
	name = "Service Rifle"
	desc = "A 5.56 caliber semi-automatic standard issue service rifle for NCR Troopers."
	icon_state = "service_rifle"
	item_state = "assault_rifle"
	fire_sound = 'sound/f13weapons/varmint_rifle.ogg'
	zoomable = FALSE
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/minigun
	name = "Minigun"
	desc = "A minigun is a multi-barrel machine gun with a high rate of fire, employing Gatling-style rotating barrels."
	icon_state = "arg"
	item_state = "arg"
	slot_flags = 0
	origin_tech = "combat=5;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/10mm_fire_03.ogg'
	can_suppress = 0
	burst_size = 3
	fire_delay = 0.5
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/shotgun/pancor
	name = "pancor jackhammer"
	desc = "A select fire automatic shotgun, the pinnacle of turning things into swiss cheese."
	icon_state = "pancor"
	item_state = "bulldog"
	fire_sound = 'sound/f13weapons/repeater_fire.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	can_suppress = 0
	burst_size = 3
	w_class = 4
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/shotgun/riot
	name = "riot shotgun"
	desc = "A semi-automatic shotgun with a drum magazine of 12, allowing for robust crowd control."
	icon_state = "riot_shotgun"
	item_state = "shotgun"
	can_suppress = 0
	burst_size = 0
	fire_delay = 2
	fire_sound = 'sound/f13weapons/riot_shotgun.ogg'
	mag_type = /obj/item/ammo_box/magazine/d12g
	w_class = 4
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/automatic/lsw
	name = "light support weapon"
	desc = "A British made light machine gun, for squad supressive fire capabilities. "
	icon_state = "lsw"
	item_state = "l6closedmag"
	slot_flags = 0
	origin_tech = "combat=6;materials=1"
	mag_type = /obj/item/ammo_box/magazine/m556
	fire_sound = 'sound/f13weapons/assaultrifle_fire.ogg'
	can_suppress = 0
	burst_size = 10
	weapon_weight = WEAPON_HEAVY
	fire_delay = 1
	mag_load_sound = 'sound/effects/wep_magazines/ar_load.ogg'
	mag_unload_sound = 'sound/effects/wep_magazines/ar_unload.ogg'
	chamber_sound = 'sound/effects/wep_magazines/ar_chamber.ogg'
	w_class = 5
	weapon_weight = WEAPON_HEAVY