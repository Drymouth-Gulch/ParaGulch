/*This file contains lasers from a laser weapon.

This file contains:

-
	-BEAMS
		-PROTECTRON BEAM
		-PLASMA BEAMS


*/

/obj/item/projectile/beam
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	damage = 30
	damage_type = BURN
	hitsound = 'sound/f13weapons/sear.ogg'
	hitsound_wall = 'sound/f13weapons/sear_wall.ogg'
	flag = "laser"
	eyeblur = 2

/obj/item/projectile/beam/plasma_beam
	name = "plasma_beam"
	icon_state = "plasma_beam"
	damage = 50
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/projectile/beam/turbo_plasma_beam
	name = "turbo_plasma_beam"
	icon_state = "plasma_beam"
	damage = 75
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/projectile/beam/plasma_pistol_beam
	name = "plasma_pistol_beam"
	icon_state = "plasma_beam"
	damage = 30
	hitsound = 'sound/f13weapons/plasmarifle.ogg'
	hitsound_wall = 'sound/f13weapons/plasmaout.ogg'

/obj/item/projectile/beam/heavylaser
	name = "heavy laser"
	icon_state = "heavylaser"
	damage = 50

/obj/item/projectile/beam/robotlaser
	name = "laser beam"
	damage = 65

/obj/item/projectile/beam/protolaser
	icon_state = "bluelaser"
	damage = 15
	range = 10
	irradiate = 5
	eyeblur = 2

/obj/item/projectile/protectron
	name = "laser"
	icon_state = "laser"
	pass_flags = PASSTABLE | PASSGLASS | PASSGRILLE
	damage = 25
	damage_type = BURN
	hitsound = 'sound/f13weapons/sear.ogg'
	hitsound_wall = 'sound/f13weapons/sear_wall.ogg'
	flag = "laser"
	eyeblur = 2