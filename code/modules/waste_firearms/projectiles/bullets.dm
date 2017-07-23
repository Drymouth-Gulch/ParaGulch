/obj/item/projectile/bullet/training //training shouldn't embed (but it would be funny)
	name = "dummy bullet"
	damage = 0
//	embed = 0

/obj/item/projectile/bullet/sequoia
	name = "bullet"
	damage = 70

/obj/item/projectile/needle
	name = "needler dart"
	icon_state = "cbbolt"
	damage = 32

/obj/item/projectile/needle/ap
	name = "needler dart"
	damage = 64
	armour_penetration = 35

/obj/item/projectile/bullet/magnum
	damage = 55
	armour_penetration = -10

/obj/item/projectile/bullet/mag357
	damage = 50
	armour_penetration = 5

/obj/item/projectile/bullet/heavybullet
	damage = 35

/obj/item/projectile/bullet/heavybullet/ap
	damage = 30
	armour_penetration = 10

/obj/item/projectile/bullet/heavybullet/tox
	damage = 25
	damage_type = TOX

/obj/item/projectile/bullet/incendiary/heavybullet
	damage = 25

/obj/item/projectile/bullet/heavybullet/surplus
	damage = 20

/obj/item/projectile/bullet/heavybullet/bleed
	damage = 10
	armour_penetration = 15

/obj/item/projectile/bullet/heavybullet/bleed/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = target
		H.bleed(100)

	return ..()

/obj/item/projectile/bullet/heavybullet/penetrator
	damage = 30
	forcedodge = 1

/obj/item/projectile/bullet/heavybullet/sopoforic
	armour_penetration = 0
	nodamage = 1
	stun = 0
	weaken = 0

/obj/item/projectile/bullet/heavybullet/soporific/on_hit(atom/target, blocked = 0, hit_zone)
	if((blocked != 100) && istype(target, /mob/living))
		var/mob/living/L = target
		L.SetSleeping(20)

	return ..()