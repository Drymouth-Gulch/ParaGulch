
/obj/item/weapon/reagent_containers/food/snacks/meat/steak/gekkon
	name = "gekkon steak"

/obj/item/weapon/reagent_containers/food/snacks/meat/steak/molerat
	name = "molerat steak"

/obj/item/weapon/reagent_containers/food/snacks/meat/steak/deathclaw
	name = "deathclaw steak"
	desc = "A piece of hot spicy meat, eaten by only the most worthy hunters - or the most rich clients."
	list_reagents = list("nutriment" = 10)
	bonus_reagents = list("nutriment" = 5, "vitamin" = 10) //It wouldn't make sense for it to be worse than the normal

//////////////////////////////////////////////////////////////////////

/obj/item/weapon/reagent_containers/food/snacks/meat/slab/gekkon
	name = "gekkon fillet"
	desc = "A fillet of gekkon meat."
	icon_state = "fishfillet"
	list_reagents = list("nutriment" = 6, "carpotoxin" = 1, "vitamin" = 2)
	bitesize = 2 //Smaller animal
	filling_color = "#FA8072"
	cooked_type = /obj/item/weapon/reagent_containers/food/snacks/meat/steak/gekkon
	slice_path = null

/obj/item/weapon/reagent_containers/food/snacks/meat/slab/molerat
	name = "molerat meat"
	desc = "A slab of molerat meat."
	list_reagents = list("nutriment" = 3, "carpotoxin" = 3)
	bitesize = 4
	filling_color = "#FA8072"
	cooked_type = /obj/item/weapon/reagent_containers/food/snacks/meat/steak/molerat
	slice_path = null

/obj/item/weapon/reagent_containers/food/snacks/meat/slab/deathclaw
	name = "deathclaw meat"
	desc = "A slab of deathclaw meat."
	list_reagents = list("nutriment" = 9, "vitamin" = 9)
	bitesize = 6 //Big slabs of meat from a massive creature
	filling_color = "#FA8072"
	cooked_type = /obj/item/weapon/reagent_containers/food/snacks/meat/steak/deathclaw
	slice_path = null

//////////////////////////////////////////////////////////////////////

/obj/item/weapon/reagent_containers/food/snacks/radlegred
	name = "red rad leg"
	icon_state = "radslegred"
	desc = "ew a red leg"

/obj/item/weapon/reagent_containers/food/snacks/radlegblue
	name = "blue rad leg"
	icon_state = "radslegblue"
	desc = "ew a blue leg"
//TODO - BLUE SHOULD BE SUBCLASS OF RED, OR VISA VERSA - GOMBLE
/obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider/radmeatred
	name = "red rad meat"
	icon_state = "radsmeatred"
	desc = "ew red meat"

/obj/item/weapon/reagent_containers/food/snacks/meat/slab/spider/radmeatblue
	name = "blue rad meat"
	icon_state = "radsmeatblue"
	desc = "ew blue meat"

/obj/item/weapon/reagent_containers/food/snacks/bearsteak
	name = "Filet migrawr"
	desc = "Because eating bear wasn't manly enough."
	icon_state = "bearsteak"
	trash = /obj/item/trash/plate
	bonus_reagents = list("nutriment" = 2, "vitamin" = 6)
	list_reagents = list("nutriment" = 2, "vitamin" = 5, "manlydorf" = 5)