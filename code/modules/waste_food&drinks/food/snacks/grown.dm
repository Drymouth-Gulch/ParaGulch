/obj/item/weapon/reagent_containers/food/snacks/grown/broc
	seed = /obj/item/seeds/broc
	name = "broc flower"
	desc = "Broc flower grows on broc plants and can be used in the crafting of healing powder and stimpaks due to it's mild healing properties."
	icon_state = "broc"
	//slot_flags = SLOT_HEAD
	filling_color = "#FF6347"
	bitesize_mod = 5

/*
/obj/item/weapon/reagent_containers/food/snacks/grown/broc/add_juice()
	if(..())
		reagents.add_reagent("nutriment", 1 + round((potency / 20), 1))
		reagents.add_reagent("salglu_solution", 1 + round((potency / 20), 1))
		bitesize = 1 + round(reagents.total_volume / 3, 1)
*/

/obj/item/weapon/reagent_containers/food/snacks/grown/xander
	seed = /obj/item/seeds/xander
	name = "xander root"
	desc = "Xander root is a large, turnip-like root with mild healing properties. It can easily be identified by its exposed head and tall green stalk protruding from a raised ring of dirt, resembling an onion. Once collected, xander root can be used in the crafting of both healing powder and stimpaks."
	icon_state = "xander"
	filling_color = "#FF6347"
	bitesize_mod = 5

/*
/obj/item/weapon/reagent_containers/food/snacks/grown/xander/add_juice()
	if(..())
		reagents.add_reagent("nutriment", 1 + round((potency / 20), 1))
		reagents.add_reagent("vitamin", 1 + round((potency / 20), 1))
		bitesize = 1 + round(reagents.total_volume / 3, 1)
*/
/obj/item/weapon/reagent_containers/food/snacks/grown/fungus
	seed = /obj/item/seeds/fungus
	name = "cave fungus"
	desc = "Cave fungus is an edible mushroom which has the ability to decrease radioation."
	icon_state = "fungus"
	filling_color = "#FF6347"
	bitesize_mod = 5

/*
/obj/item/weapon/reagent_containers/food/snacks/grown/fungus/add_juice()
	if(..())
		reagents.add_reagent("nutriment", 1 + round((potency / 20), 1))
		reagents.add_reagent("charcoal", 1 + round((potency / 20), 1))
		bitesize = 1 + round(reagents.total_volume / 3, 1)
*/

/obj/item/weapon/reagent_containers/food/snacks/grown/mutfruit
	seed = /obj/item/seeds/mutfruit
	name = "Mutfruit"
	desc = "Mutfruit provides both hydration and sustenance, and provides them at moderately higher levels than other fruits, it gives a small amount of Radiation."
	icon_state = "mutfruit"
	filling_color = "#FF6347"
	bitesize_mod = 5

/*
/obj/item/weapon/reagent_containers/food/snacks/grown/mutfruit/add_juice()
	if(..())
		reagents.add_reagent("nutriment", 3 + round((potency / 20), 1))
		reagents.add_reagent("radium", 1 + round((potency / 20), 1))
		bitesize = 1 + round(reagents.total_volume / 3, 1)
*/
/obj/item/weapon/reagent_containers/food/snacks/grown/feracactus
	seed = /obj/item/seeds/feracactus
	name = "Barrel cactus fruit"
	desc = "Barrel cactus fruit are found on barrel cactus; a spherical cacti that can be encountered while wandering the Texas. They usually form in groups, with one large barrel cactus that contains the fruit surrounded by several smaller cacti. Like all other Texas plants, fruit-bearing barrel cacti will eventually grow back after being picked."
	icon_state = "feracactus"
	filling_color = "#FF6347"
	bitesize_mod = 5

/*
/obj/item/weapon/reagent_containers/food/snacks/grown/fungus/add_juice()
	if(..())
		reagents.add_reagent("nutriment", 1 + round((potency / 20), 1))
		reagents.add_reagent("calomel", 0 + round((potency / 20), 1))
		bitesize = 1 + round(reagents.total_volume / 3, 1)
*/