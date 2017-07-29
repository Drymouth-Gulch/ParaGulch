/obj/item/ammo_box/c357
	name = "speed loader (.357)"
	icon_state = "38"
	ammo_type = /obj/item/ammo_casing/c357
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_box/c357/c38
	name = "speed loader (.38)"
	icon_state = "38"
	ammo_type = /obj/item/ammo_casing/c357/lowpower

/obj/item/ammo_box/m44
	name = "speed loader (.44)"
	icon_state = "44"
	ammo_type = /obj/item/ammo_casing/m44
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_box/needler
	name = "stripper clip (hypodermic needles)"
	desc = "A stripper clip."
	icon_state = "needler"
	ammo_type = /obj/item/ammo_casing/caseless/needler
	max_ammo = 5
	multiple_sprites = 1

/obj/item/ammo_box/a556
	name = "ammo box (5.56x45mm)"
	icon_state = "556box"
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 20

/obj/item/ammo_box/a556/ap
	name = "ammo box (5.56x45mm Armour Piercing)"
	ammo_type = /obj/item/ammo_casing/a556/ap

/obj/item/ammo_box/a556/inc
	name = "ammo box (5.56x45mm Incendiary)"
	ammo_type = /obj/item/ammo_casing/a556/inc

/obj/item/ammo_box/a556/tox
	name = "ammo box (5.56x45mm Uranium Tipped)"
	ammo_type = /obj/item/ammo_casing/a556/tox

/obj/item/ammo_box/a556/surplus
	name = "ammo box (5.56x45mm Surplus)"
	ammo_type = /obj/item/ammo_casing/a556/surplus

/obj/item/ammo_box/a556/bleed
	name = "ammo box (experimental 5.56x45mm bleeding)"
	ammo_type = /obj/item/ammo_casing/a556/bleed

/obj/item/ammo_box/a556/sopoforic
	name = "ammo box (experimental 5.56x45mm sleep)"
	ammo_type = /obj/item/ammo_casing/a556/sopoforic

/obj/item/ammo_box/a556/penetrator
	name = "ammo box (experimental 5.56x45mm penetrator)"
	ammo_type = /obj/item/ammo_casing/a556/penetrator

/obj/item/ammo_box/c4570
	name = "speed loader (.45-70 Gov't)"
	icon_state = "4570"
	ammo_type = /obj/item/ammo_casing/c4570
	max_ammo = 6
	multiple_sprites = 1


/obj/item/ammo_box/magazine/m762
	name = "box magazine (7.62mm)"
	icon_state = "a762-50"
	origin_tech = "combat=2"
	ammo_type = /obj/item/ammo_casing/a762
	caliber = "a762"
	max_ammo = 50

/obj/item/ammo_box/magazine/m762/bleeding
	name = "box magazine (Bleeding 7.62mm)"
	origin_tech = "combat=3"
	ammo_type = /obj/item/ammo_casing/a762/bleeding

/obj/item/ammo_box/magazine/m762/hollow
	name = "box magazine (Hollow-Point 7.62mm)"
	origin_tech = "combat=3"
	ammo_type = /obj/item/ammo_casing/a762/hollow

/obj/item/ammo_box/magazine/m762/ap
	name = "box magazine (Armor Penetrating 7.62mm)"
	origin_tech = "combat=4"
	ammo_type = /obj/item/ammo_casing/a762/ap

/obj/item/ammo_box/magazine/m762/incen
	name = "box magazine (Incendiary 7.62mm)"
	origin_tech = "combat=4"
	ammo_type = /obj/item/ammo_casing/a762/incen

/obj/item/ammo_box/magazine/m762/update_icon()
	..()
	icon_state = "a762-[round(ammo_count(),10)]"



//storage boxes

/obj/item/weapon/storage/box/lasershot
	name = "box of experimental laser shotgun shots"
	desc = "A box full of laser slug shots."
	icon_state = "lasershot_box"

/obj/item/weapon/storage/box/lasershot/New()
	..()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/laserslug(src)

/obj/item/weapon/storage/box/incenshot
	name = "box of incendiary shotgun shots"
	desc = "A box full of incendiary shots."
	icon_state = "incenshot_box"

/obj/item/weapon/storage/box/incenshot/New()
	..()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/incendiary(src)

/obj/item/weapon/storage/box/pulseshot
	name = "box of experimental pulse shotgun shots"
	desc = "A box full of pulse slug shots."
	icon_state = "pulseshot_box"

/obj/item/weapon/storage/box/pulseshot/New()
	..()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/ion(src)

/obj/item/weapon/storage/box/fragshot
	name = "box of explosive shotgun shots"
	desc = "A box full of frag 12 shots."
	icon_state = "fragshot_box"

/obj/item/weapon/storage/box/fragshot/New()
	..()
	for(var/i in 1 to 7)
		new /obj/item/ammo_casing/shotgun/frag12(src)