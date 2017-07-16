/*This file contains mostly asthetic, cute hatsies

This file contains:

-
    -POLICE HAT
    -SAFARI HAT
    -STORMCHASER
*/
//////
//MISC
//////
/obj/item/clothing/head/police
	name = "pre-War police hat"
	desc = "It's the police hat of dark blue in color with a silver colored badge on the frontside.<br>The badge is inscripted with the words SPECIAL and POLICE."
	icon_state = "retropolice"
	item_state = "fedora"

/obj/item/clothing/head/safari //Referencing the Jebediah from Mad Max III
	name = "pith helmet"
	desc = "It's a lightweight cloth-covered helmet made of pith.<br>Suitable for explorers or batshit crazy pilots."
	icon_state = "safari"
	item_state = "dethat"
	armor = list(melee = 40, bullet = 0, laser = 0, energy = 0, bomb = 25, bio = 0, rad = 0)

/obj/item/clothing/head/stormchaser
	name = "stormchaser hat"
	icon_state = "stormchaser"
	item_state = "fedora"
	desc = "Home, home on the wastes,<br>Where the mole rat and the fire gecko play.<br>Where seldom is heard a discouraging word,<br>And my skin is not glowing all day."
	flags = BLOCKHAIR