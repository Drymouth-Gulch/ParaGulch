/obj/item/seeds/broc
	name = "pack of broc seeds"
	desc = "These seeds grow into broc flower."
	icon_state = "seed-broc"
	species = "broc"
	plantname = "Broc Plants"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/broc
	lifespan = 25
	endurance = 10
	maturation = 8
	production = 6
	yield = 6
	potency = 20
	genes = list(/datum/plant_gene/trait/plant_type/weed_hardy,/datum/plant_gene/trait/repeated_harvest)
//	oneharvest = 1
	growthstages = 3
	//mutatelist = list(/obj/item/seeds/geraniumseed, /obj/item/seeds/lilyseed)
	reagents_add = list("salglu_solution" = 0.25, "vitamin" = 0.04, "plantmatter" = 0.04, "nutriment" = 0.25)

obj/item/seeds/xander
	name = "pack of xander seeds"
	desc = "These seeds grow into xander root."
	icon_state = "seed-xander"
	species = "xander"
	plantname = "Xander Plants"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/xander
	lifespan = 25
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	potency = 20
	genes = list(/datum/plant_gene/trait/plant_type/weed_hardy)
//	oneharvest = 1
	growthstages = 3
	reagents_add = list("vitamin" = 0.25, "plantmatter" = 0.5, "nutriment" = 0.25)

/obj/item/seeds/fungus
	name = "pack of fungus seeds"
	desc = "These seeds grow into fungus mushrooms."
	icon_state = "seed-fungus"
	species = "fungus"
	plantname = "Fungus"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/fungus
	lifespan = 50
	endurance = 10
	maturation = 8
	production = 3
	yield = 6
	potency = 20
	genes = list(/datum/plant_gene/trait/plant_type/fungal_metabolism)
//	oneharvest = 1
	growthstages = 3
	reagents_add = list("charcoal" = 1, "vitamin" = 0.04, "plantmatter" = 0.04, "nutriment" = 0.25)

/obj/item/seeds/mutfruit
	name = "pack of mutfruit seeds"
	desc = "These seeds grow into mutfruit."
	icon_state = "seed-mutfruit"
	species = "mutfruit"
	plantname = "Mutfruit"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/mutfruit
	lifespan = 30
	endurance = 20
	maturation = 8
	production = 2
	yield = 6
	potency = 20
	genes = list(/datum/plant_gene/trait/plant_type/weed_hardy,/datum/plant_gene/trait/repeated_harvest)
//	oneharvest = 0
	growthstages = 3
	reagents_add = list("radium" = 0.25, "vitamin" = 0.04, "plantmatter" = 0.04, "nutriment" = 1)

/obj/item/seeds/feracactus
	name = "pack of feracactus seeds"
	desc = "These seeds grow into feracactus."
	icon_state = "seed-feracactus"
	species = "feracactus"
	plantname = "Feracactus"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/feracactus
	lifespan = 50
	endurance = 20
	maturation = 8
	production = 2
	yield = 6
	potency = 20
	genes = list(/datum/plant_gene/trait/plant_type/weed_hardy,/datum/plant_gene/trait/repeated_harvest)
//	oneharvest = 0
	growthstages = 3
	reagents_add = list("calomel" = 0.25, "vitamin" = 0.04, "plantmatter" = 0.04, "nutriment" = 0.25)