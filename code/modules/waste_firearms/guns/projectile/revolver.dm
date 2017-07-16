/*This file contains firearms with Revolver styled ammo loading and a couple of exceptions (some shotguns, etc.)

This file contains:

- REVOLVERS
	S&W M29
		+Scoped
		+Mysterious Unique
	Ranger Sequoia
		+Scoped
	Police Revolver
	Needler
	Colt 6250
	.223 Pistol - Called That Gun for whatever reason

- SPECIAL REVOLVERS
	Mad Max Double Barrel Unique
	Caravan Shotgun
	Single Shotgun -> Sub of improvised
	Zip gun
	Pipe Rifle

*/

/////////////////////////
/////	REVOLVERS	/////
/////////////////////////
/obj/item/weapon/gun/projectile/revolver/m29
	name = "\improper S&W Model 29"
	desc = "Being that this is the most powerful handgun in the world, and can blow your head clean-off, you've got to ask yourself one question. Do I feel lucky? Well, do ya punk? "
	icon_state = "m29"
	origin_tech = "combat=4;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev44
	fire_sound = 'sound/f13weapons/44mag.ogg'

/obj/item/weapon/gun/projectile/revolver/m29/scoped
	name = "\improper scoped S&W Model 29"
	desc = "This version has a scope. Pew pew."
	icon_state = "scoped_m29"
	zoomable = TRUE
	zoom_amt = 7

/obj/item/weapon/gun/projectile/revolver/m29/mysterious
	name = "mysterious revolver"
	desc = "Yow!~"
	icon_state = "mysterious_m29"
	//damage=999 TODO - Work out efficient way of doing proper modifiers
	armour_penetration=999
	//stamina=999 TODO - Work out efficient way of doing proper modifiers
	//range=0 TODO - Work out efficient way of doing proper modifiers

/obj/item/weapon/gun/projectile/revolver/m29/mysterious/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/revolver/sequoia
	name = "Ranger Sequoia"
	desc = "This large, double-action revolver is a rare, scopeless variant of the hunting revolver. It is used exclusively by the New California Republic Rangers. This revolver features a dark finish with intricate engravings etched all around the weapon. Engraved along the barrel are the words 'For Honorable Service,' and 'Against All Tyrants.' The hand grip bears the symbol of the NCR Rangers, a bear, and a brass plate attached to the bottom that reads '20 Years.' "
	icon_state = "sequoia"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev4570
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/f13weapons/sequoia.ogg'

/obj/item/weapon/gun/projectile/revolver/police
	name = "police pistol"
	desc = "A .38 caliber police pistol which can also accept .357 rounds."
	icon_state = "police"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev38
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/f13weapons/policepistol.ogg'

/obj/item/weapon/gun/projectile/revolver/needler
	name = "needler pistol"
	desc = "You suspect this Bringham needler pistol was once used in scientific field studies. It uses small hard-plastic hypodermic darts as ammo. "
	icon_state = "needler"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revneedler
	origin_tech = "combat=5;materials=3;biological=3"
	fire_sound = 'sound/weapons/gunshot_silenced.ogg'

/obj/item/weapon/gun/projectile/revolver/colt6250
	name = "colt 6250"
	desc = "The Colt 6520 10mm autoloading pistol is a highly durable and efficient weapon developed by Colt Firearms prior to the Great War.It proved to be resistant to the desert-like conditions of the post-nuclear wasteland and is a fine example of workmanship and quality construction."
	icon_state = "colt6250"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev6250
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
	//damage=5 TODO - Work out efficient way of doing proper modifiers
	armour_penetration=0
	//stamina=0 TODO - Work out efficient way of doing proper modifiers
	//range=0 TODO - Work out efficient way of doing proper modifiers

/obj/item/weapon/gun/projectile/revolver/colt6250/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/revolver/sequoia/scoped
	name = "Hunting Revolver"
	desc = "A scoped double action revolver chambered in 45-70."
	icon_state = "hunting_revolver"
	zoomable = TRUE
	zoom_amt = 7

/obj/item/weapon/gun/projectile/revolver/that_gun
	name = ".223 pistol"
	desc = "A modified .223 rifle that was cut down to a pistol. It has two triggers, two red LEDs, and an ammunition capacity of five .223 rounds, granting it excellent firepower."
	icon_state = "that_gun"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/rev556
	origin_tech = "combat=4;materials=3"
	fire_sound = 'sound/f13weapons/that_gun.ogg'
	//damage=15 TODO - Work out efficient way of doing proper modifiers
	armour_penetration=5
	//stamina=0 TODO - Work out efficient way of doing proper modifiers
	//range=0 TODO - Work out efficient way of doing proper modifiers

/obj/item/weapon/gun/projectile/revolver/that_gun/New()
	..()
	update_icon()
	return

/////////////////////////////////
/////	SPECIAL REOLVERS	/////
/////////////////////////////////

/obj/item/weapon/gun/projectile/revolver/max_sawn_off
	name = "worn sawn off"
	desc = "Someone took the time to chop the last few inches off the barrel and stock of this shotgun. You see word 'Max' engraved on grip"
	icon_state = "max_sawn_off"
	item_state = "shotgun"
	w_class = 3
	force = 12
	unique_reskin = 0
	origin_tech = "combat=4;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/mad
	fire_sound = 'sound/f13weapons/max_sawn_off.ogg'
	//damage=25 TODO - Work out efficient way of doing proper modifiers
	armour_penetration=0
	//stamina=0 TODO - Work out efficient way of doing proper modifiers
	//range=0 TODO - Work out efficient way of doing proper modifiers

/obj/item/weapon/gun/projectile/revolver/max_sawn_off/New()
	..()
	update_icon()
	return

/obj/item/weapon/gun/projectile/revolver/caravan_shotgun
	name = "caravan shotgun"
	desc = "An common over under double barreled shotgun."
	icon_state = "caravan_shotgun"
	item_state = "shotgun"
	w_class = 4
	force = 15
	unique_reskin = 0
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/mad
	fire_sound = 'sound/f13weapons/caravan_shotgun.ogg'
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/revolver/single_shotgun
	name = "single shotgun"
	desc = "A dirt cheap single shot shotgun."
	icon_state = "single_shotgun"
	item_state = "shotgun"
	w_class = 3
	force = 15
	unique_reskin = 0
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised
	fire_sound = 'sound/f13weapons/caravan_shotgun.ogg'
	weapon_weight = WEAPON_HEAVY

/obj/item/weapon/gun/projectile/revolver/zipgun
	name = "zipgun"
	desc = "A crudely made single shot 10mm pistol."
	icon_state = "zipgun"
	item_state = "gun"
	w_class = 2
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised10mm

/obj/item/weapon/gun/projectile/revolver/pipe_rifle
	name = "pipe rifle"
	desc = "A crudely made single shot 10mm rifle."
	icon_state = "pipe_rifle"
	item_state = "shotgun"
	w_class = 4
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/weapons/Gunshot.ogg'
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised10mm