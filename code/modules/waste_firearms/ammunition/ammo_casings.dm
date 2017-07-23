/obj/item/ammo_casing/c4570
	caliber = "4570"
	projectile_type = /obj/item/projectile/bullet/sequoia

/obj/item/ammo_casing/m44
	desc = "A .44 Magnum bullet casing."
	caliber = "44"
	projectile_type = /obj/item/projectile/bullet/magnum

/obj/item/ammo_casing/caseless/needler
	name = "needler round"
	desc = "A dart for use in needler pistols."
	icon_state = "needle"
	caliber = "needle"
	projectile_type = /obj/item/projectile/needle

/obj/item/ammo_casing/caseless/needler/ap
	name = "needler ap round"
	desc = "A dart for use in needler pistols. This ammo type has excellent armor piercing capabilities."
	icon_state = "ap"
	projectile_type = /obj/item/projectile/needle/ap

/obj/item/ammo_casing/caseless/needler/dart
	name = "needler dart"
	desc = "A dart for use in needler pistols. Can be injected with up to 10 units of any chemical."
	icon_state = "dart"
	projectile_type = /obj/item/projectile/bullet/dart

/obj/item/ammo_casing/caseless/needler/dart/New()
	..()
	flags |= REAGENT_NOREACT
	flags |= OPENCONTAINER
	create_reagents(10)

/obj/item/ammo_casing/needler/dart/attackby()
	return

/obj/item/ammo_casing/c22
	caliber = "22"
	projectile_type = /obj/item/projectile/bullet/weakbullet4

/obj/item/ammo_casing/c357
	desc = "A .357 bullet casing."
	caliber = "38"
	projectile_type = /obj/item/projectile/bullet/mag357

/obj/item/ammo_casing/c357/lowpower
	desc = "A .38 bullet casing."
	projectile_type = /obj/item/projectile/bullet/weakbullet2

/obj/item/ammo_casing/a556
	desc = "A 5.56mm bullet casing."
	caliber = "a556"
	projectile_type = /obj/item/projectile/bullet/heavybullet

/obj/item/ammo_casing/a556/ap
	projectile_type = /obj/item/projectile/bullet/heavybullet/ap

/obj/item/ammo_casing/a556/inc
	projectile_type = /obj/item/projectile/bullet/incendiary/heavybullet

/obj/item/ammo_casing/a556/tox
	projectile_type = /obj/item/projectile/bullet/heavybullet/tox

/obj/item/ammo_casing/a556/surplus
	projectile_type = /obj/item/projectile/bullet/heavybullet/surplus

/obj/item/ammo_casing/a556/training
	projectile_type = /obj/item/projectile/bullet/training

/obj/item/ammo_casing/a556/bleed
	projectile_type = /obj/item/projectile/bullet/heavybullet/bleed

/obj/item/ammo_casing/a556/sopoforic
	projectile_type = /obj/item/projectile/bullet/heavybullet/sopoforic

/obj/item/ammo_casing/a556/penetrator
	projectile_type = /obj/item/projectile/bullet/heavybullet/penetrator


/obj/item/ammo_casing/a762
	desc = "A 7.62mm bullet casing."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/item/projectile/bullet/saw

/obj/item/ammo_casing/a762/bleeding
	desc = "A 7.62mm bullet casing with specialized inner-casing, that when it makes contact with a target, release tiny shrapnel to induce internal bleeding."
	icon_state = "762-casing"
	caliber = "a762"
	projectile_type = /obj/item/projectile/bullet/saw/bleeding

/obj/item/ammo_casing/a762/hollow
	desc = "A 7.62mm bullet casing designed to cause more damage to unarmored targets."
	projectile_type = /obj/item/projectile/bullet/saw/hollow

/obj/item/ammo_casing/a762/ap
	desc = "A 7.62mm bullet casing designed with a hardened-tipped core to help penetrate armored targets."
	projectile_type = /obj/item/projectile/bullet/saw/ap

/obj/item/ammo_casing/a762/incen
	desc = "A 7.62mm bullet casing designed with a chemical-filled capsule on the tip that when bursted, reacts with the atmosphere to produce a fireball, engulfing the target in flames. "
	projectile_type = /obj/item/projectile/bullet/saw/incen