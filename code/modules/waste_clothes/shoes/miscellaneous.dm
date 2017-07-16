/*This file contains misc shoes

This file contains:

-
    - LEGION
		- leather boots
		- Metal Boots
		- Legat Boots
	- NCR
		- Combat Boots
	- Fluff
		- Diesel Boots




*/

///////////////////////
//		LEGION
//////////////////////


/obj/item/clothing/shoes/legionleather
	name = "legion leather boots"
	desc = "A pair of boots worn by the Legion recruits."
	icon_state = "legionleather"
	item_state = "legionleather"
	item_color = "cult"
	armor = list(melee = 15, bullet = 10, laser = 5, energy = 0, bomb = 20, bio = 0, rad = 0)
//	can_insert_knife = TRUE

/obj/item/clothing/shoes/legionmetal
	name = "legion metal boots"
	desc = "A pair of boots worn by the Legion veterans."
	icon_state = "legionmetal"
	item_state = "legionmetal"
	item_color = "cult"
	armor = list(melee = 25, bullet = 20, laser = 25, energy = 10, bomb = 30, bio = 0, rad = 15)
//	can_insert_knife = TRUE

/obj/item/clothing/shoes/legionlegat
	name = "legion legat boots"
	desc = "A pair of boots worn by the Legion legats."
	icon_state = "legionlegat"
	item_state = "legionlegat"
	item_color = "cult"
	armor = list(melee = 35, bullet = 25, laser = 30, energy = 10, bomb = 30, bio = 0, rad = 15)
//	can_insert_knife = TRUE

///////////////////////
//		NCR
//////////////////////

/obj/item/clothing/shoes/combat/ncr
	name = "NCR boots"
	desc = "Standard issue high speed low drag NCR boots."
	icon_state = "ncr_boots"
	item_state = "ncr_boots"

///////////////////////
//		FLUFF
//////////////////////

/obj/item/clothing/shoes/fluff/diesel
	name = "diesel boots"
	desc = "Fancy female knee high platform boots with shiny steel clasps."
	icon_state = "diesel"
	item_state = "diesel"
	armor = list(melee = 20, bullet = 10, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)
	cold_protection = FEET
	min_cold_protection_temperature = SHOES_MIN_TEMP_PROTECT
//	can_insert_knife = TRUE