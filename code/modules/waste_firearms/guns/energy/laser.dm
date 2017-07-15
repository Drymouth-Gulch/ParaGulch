/*This file contains battery powered laser and plasma weapons

This file contains:

-
	LASER
		-PISTOL
	PLASMA
		-RIFLE
		-MULTIPLAS
		-PISTOL


*/

/////////////////////////////////
/////		LASER			/////
/////////////////////////////////



/obj/item/weapon/gun/energy/laser/pistol
	name = "laser pistol"
	desc = "A basic energy-based laser gun that fires concentrated beams of light which pass through glass and thin metal."
	icon_state = "AEP7"
	item_state = "pistol"
	w_class = 2
	ammo_type = list(/obj/item/ammo_casing/energy/laser/pistol)
	cell_type = /obj/item/weapon/stock_parts/cell/laser

/////////////////////////////////
/////		PLASMA			/////
/////////////////////////////////

/obj/item/weapon/gun/energy/laser/plasma_rifle
	name ="plasma rifle"
	item_state = "plasma"
	icon_state = "plasma"
	desc = "A energy weapon that fires heated plasma clots. Due to the high accuracy and range is a good tool to eliminate the enemy."
	origin_tech = "combat=3;magnets=3"
	ammo_type = list(/obj/item/ammo_casing/energy/plasmagun)
	ammo_x_offset = 1
	cell_type = /obj/item/weapon/stock_parts/cell/laser
	w_class = 4

/obj/item/weapon/gun/energy/laser/plasma_rifle/multiplas
	name = "multiplas rifle"
	item_state = "plasma"
	icon_state = "multiplas"
	desc = "A plasma rifle designed to fire multiple shots."
	ammo_type = list(/obj/item/ammo_casing/energy/plasmagun/scatter)
	cell_type = /obj/item/weapon/stock_parts/cell/laser
	w_class = 4

/obj/item/weapon/gun/energy/laser/plasma_rifle/pistol
	name ="plasma pistol"
	item_state = "plasma"
	icon_state = "plasma_pistol"
	desc = "An energy sidearm that fires heated plasma clots."
	origin_tech = "combat=3;magnets=3"
	ammo_type = list(/obj/item/ammo_casing/energy/plasmapistol)
	w_class = 2
	ammo_x_offset = 1
	cell_type = /obj/item/weapon/stock_parts/cell/laser