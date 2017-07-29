/*This file contains mostly asthetic, cute hatsies

This file contains:

-
    -POLICE HAT
    -SAFARI HAT
    -STORMCHASER
    -Lots a fluff
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

//Fluff

/obj/item/clothing/head/fluff/rastacap
	name = "rastacap"
	desc = "<font color='#157206'>Him haffi drop him fork and run,</font><br><font color='green'>Him can't stand up to Jah Jah son,</font><br><font color='#fd680e'>Him haffi lef' ya with him gun,</font><br><font color='red'>Dig off with him bomb.</font>"
	icon_state = "rastacap"
	item_state = "fedora"
	flags = BLOCKHAIR
	cold_protection = HEAD //This tam brings the warm reggae and Jamaican sun with it.
	min_cold_protection_temperature = FIRE_HELM_MIN_TEMP_PROTECT

/obj/item/clothing/head/fluff/fez
	name = "fez"
	desc = "Fezzes are cool!"
	icon_state = "fez"
	item_state = "secsoft"

/obj/item/clothing/head/fluff/beaver
	name = "beaverkin"
	desc = "It's a hat made from felted beaver fur which makes this hat both comfortable and elegant."
	icon_state = "beaver"
	item_state = "that"

/obj/item/clothing/head/fluff/purple
	name = "purple top hat"
	desc = "You may not own the best jail in the observed Universe, or the best chocolate factory in the entire world, but at least you can try to have that purple top hat."
	icon_state = "ptophat"
	item_state = "that"

/obj/item/clothing/head/fluff/det_hat_alt
	name = "detective's fedora"
	desc = "There's only one man who can sniff out the dirty stench of crime, and he's likely wearing this black hat."
	icon_state = "detectivealt"
	item_state = "fedora"
	armor = list(melee = 30, bullet = 25, laser = 25, energy = 10, bomb = 25, bio = 0, rad = 0)

/obj/item/clothing/head/fluff/trilby
	name = "feather trilby"
	desc = "A sharp, stylish blue hat with a feather."
	icon_state = "trilby"
	item_state = "fedora"

/obj/item/clothing/head/fluff/cowboy
	name = "cowboy hat"
	desc = "It's a high-crowned, wide-brimmed hat best known as the defining piece of attire for the North American cowboy."
	icon_state = "cowboy"
	item_state = "dethat"

/obj/item/clothing/head/fluff/bandit
	name = "bandit hat"
	desc = "A black cowboy hat with a large brim, curved to the sides, and a silver eagle pinned to the front."
	icon_state = "bandit"
	item_state = "fedora"

/obj/item/clothing/head/fluff/gambler
	name = "gambler hat"
	desc = "Perfect for a ramblin' gamblin' man." //But I got to ramble (ramblin' man) //Oh I got to gamble (gamblin' man) //Got to got to ramble (ramblin' man) //I was born a ramblin' gamblin' man
	icon_state = "gambler"
	item_state = "dethat"

/obj/item/clothing/head/fluff/pot
	name = "metal cooking pot"
	desc = "Step one: Start with the sauce.<br>Step two: Add the noodles.<br>Step three: Stir the pasta.<br>Step four: Turn up the heat.<br>Step five: Burn the house."
	icon_state = "pot"
	item_state = "fedora"
	force = 10
	hitsound = 'sound/items/trayhit1.ogg'
	flags = BLOCKHAIR

/obj/item/clothing/head/fluff/battlecruiser
	name = "captain's hat"
	icon_state = "battlecruiser"
	item_state = "battlecruiser"
	desc = "The Yamato is loaded. And so am I."
	armor = list(melee = 30, bullet = 25, laser = 25, energy = 10, bomb = 25, bio = 0, rad = 0)