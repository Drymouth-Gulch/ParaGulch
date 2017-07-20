/obj/structure/flora/tree/wasteland
	name = "dead tree"
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "deadtree_1"


/obj/structure/flora/tree/wasteland/New()
	icon_state = "deadtree_[rand(1, 6)]"
	..()

/obj/structure/flora/tree/telephonepole //It's not a tree, not, but it can be cut down like one, so.
	name = "telephone pole"
	desc = "An old telephone pole, no longer connected to anything."
	icon_state = "telephonepole"
	icon = 'icons/obj/flora/pinetrees.dmi' //Because it's 96 high
	pixel_x = 0

/obj/structure/flora/tree/stump
	name = "stump"
	desc = "The bottom part of a tree left projecting from the ground after most of the trunk has fallen or been cut down."
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "stump"
	logamt = 1 //it's a stump.

//Logs (from trees, not towercaps)
/obj/item/weapon/log
	name = "tree log"
	desc = "A log, from a tree. Covered in bark."
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "tree_log"
	force = 9
	throwforce = 6
	w_class = 4
	throw_speed = 2
	throw_range = 3



/obj/structure/flora/grass/wasteland
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "tall_grass_1"

/obj/structure/flora/grass/wasteland/New()
	..()

	icon_state = "tall_grass_[rand(1, 8)]"//16)]"

//glowshroom
/obj/structure/flora/mushroom
	name = "mushroom"
	desc = "These light giving mushrooms were once a very rare type of fungus that fed on radioactive materials and radiation.<br>The luminescent glow is a by-product of the radiation they feed on.<br>They commonly grow in the dark areas."
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "mushroom_1"
/obj/structure/flora/mushroom/New()
	..()
	icon_state = "mushroom_[rand(1, 4)]"

/obj/structure/flora/cactus
	anchored = 1
	density = 1
	name = "cactus"
	icon = 'icons/obj/flora/wasteland.dmi'
	icon_state = "cactus_1"

/obj/structure/flora/cactus/New()
	..()
	icon_state = "cactus_[pick(1,2)]"//[rand(1, 4)]"
	dir = pick(alldirs)

/obj/structure/flora/tall_cactus
	name = "cactus"
	icon = 'icons/obj/flora/deadtrees.dmi'
	icon_state = "cactus"

/obj/structure/flora/tall_cactus/New()
	..()
	dir = pick(cardinal)