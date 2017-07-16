/obj/item/ammo_casing/energy/laser
	projectile_type = /obj/item/projectile/beam
	select_name = "kill"
	fire_sound = 'sound/f13weapons/laser_rifle.ogg'

/obj/item/ammo_casing/energy/laser/pistol
	projectile_type = /obj/item/projectile/beam/pistol
	select_name = "kill"
	fire_sound = 'sound/f13weapons/laser_pistol.ogg'

/obj/item/ammo_casing/energy/lasergun
	projectile_type = /obj/item/projectile/beam
	e_cost = 83
	fire_sound = 'sound/f13weapons/laser_rifle.ogg'
	select_name = "kill"

/obj/item/ammo_casing/energy/plasmagun
	projectile_type = /obj/item/projectile/beam/plasma_beam
	e_cost = 83
	select_name = "kill"
	fire_sound = 'sound/f13weapons/plasma_rifle.ogg'
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
//	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/ammo_casing/energy/plasmagun/scatter
	projectile_type = /obj/item/projectile/beam/plasma_scatter
	pellets = 5
	variance = 25
	select_name = "kill"
	fire_sound = 'sound/f13weapons/multiplas_rifle.ogg'
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
//	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/ammo_casing/energy/plasmapistol
	projectile_type = /obj/item/projectile/beam/plasma_pistol
	e_cost = 83
	select_name = "kill"
	fire_sound = 'sound/f13weapons/plasma_pistol.ogg'
	hitsound = 'sound/f13weapons/plasmarifle.ogg'

/obj/item/projectile/beam/pistol
	name = "laser"
	icon_state = "laser"
	damage = 20

/obj/item/projectile/beam/plasma_beam
	name = "plasma beam"
	icon_state = "plasma_beam"
	damage = 50

/obj/item/projectile/beam/plasma_scatter
	name = "plasma scatter"
	icon_state = "plasma_beam"
	damage = 13

/obj/item/projectile/beam/plasma_pistol
	name = "plasma beam"
	icon_state = "plasma_beam"
	damage = 35