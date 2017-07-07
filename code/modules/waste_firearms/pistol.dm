/*This file contains pistols

This file contains:

- PISTOLS
	N99 Pistol - Thats one long description
	//////Where the fuck is 10mm pistol
    
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
	action_button_name = null