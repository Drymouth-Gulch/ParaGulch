/*This file contains gloves, mitts, handy warmers

This file contains:

- 
    -baseball glove
	-legion gloves
	-ncr gloves
	-legion legat reinforced gloves
   
	
*/
////////
//Gloves
////////

/obj/item/clothing/gloves/f13/baseball
	name = "baseball glove"
	desc = "A baseball glove or mitt is a large leather glove worn by baseball players of the defending team which assist players in catching and fielding balls hit by a batter or thrown by a teammate."
	icon_state = "baseball"
	item_state = "b_shoes"
	item_color = null
	transfer_prints = TRUE
	strip_delay = 20
	put_on_delay = 40
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/f13/legion
	name = "Legion gloves"
	desc = "Standard issue gloves for legion soldiers. They smell like a rad dog"
	icon_state = "legion"
	item_state = "legion"
	item_color = null
	transfer_prints = TRUE
	strip_delay = 20
	put_on_delay = 40
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT

/obj/item/clothing/gloves/f13/legion/ncr
	name = "NCR gloves"
	desc = "Standard issue fingerless gloves for all NCR Troopers."


/obj/item/clothing/gloves/f13/legionlegat
	name = "Legion legat gloves"
	desc = "It's a large metal gloves worn by baseball players of the defending team which assist players in catching and fielding balls hit by a batter or thrown by a teammate."
	icon_state = "legionlegat"
	item_state = "legionlegat"
	item_color = null
	transfer_prints = TRUE
	strip_delay = 20
	put_on_delay = 40
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_TEMP_PROTECT
