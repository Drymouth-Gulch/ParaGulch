/*This file contains pistols

This file contains:

- PISTOLS
	N99 Pistol - Thats one long description
	//////Where the fuck is 10mm pistol
	SILENCED 22
	9MM
	1911 + Compact

*/

/////////////////////////
/////	PISTOLS 	/////
/////////////////////////

/obj/item/weapon/gun/projectile/automatic/pistol/n99
	name = "N99 pistol"
	desc = "The large-framed, gas-operated N99 was selected as the standard issue conventional sidearm of the United States military. The N99 is designed to withstand the most extreme conditions, which was one of the requirements for a new service sidearm. It can also be repaired easily by anyone with even the most basic technical knowledge."
	icon_state = "n99"
	w_class = 3
	force = 13
	origin_tech = "combat=2;materials=2"
	mag_type = /obj/item/ammo_box/magazine/m10mm_adv
	fire_sound = 'sound/f13weapons/10mm_fire_02.ogg'
	can_suppress = 1
	burst_size = 1
	fire_delay = 0

/obj/item/weapon/gun/projectile/automatic/pistol/silenced22
	name = "silenced .22 pistol"
	desc = "A integrally suppressed .22 pistol."
	icon_state = "silenced22"
	suppressed = 1
	mag_type = /obj/item/ammo_box/magazine/m22
	can_unsuppress = 0
	fire_sound = 'sound/f13weapons/22pistol.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/ninemil
	name = "9mm pistol"
	desc = "A mass produced pre-war Browning Hi-power standard issue for NCR troops."
	icon_state = "ninemil"
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/m9mm
	can_suppress = 0
	fire_sound = 'sound/f13weapons/greasegun.ogg'

/obj/item/weapon/gun/projectile/automatic/pistol/m1911
	name = "\improper M1911"
	desc = "A classic .45 handgun with a small magazine capacity, a good weapon for taking down unarmored enemies."
	icon_state = "m1911"
	w_class = 3
	mag_type = /obj/item/ammo_box/magazine/m45
	can_suppress = 0


/obj/item/weapon/gun/projectile/automatic/pistol/m1911/compact
	name = "\improper M1911 Compact"
	desc = "A classic .45 handgun with a small magazine capacity. This model can easily fit in your pocket"
	icon_state = "m1911c"
	w_class = 2