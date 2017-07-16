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