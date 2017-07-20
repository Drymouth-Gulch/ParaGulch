/obj/item/weapon/reagent_containers/blood/radaway
	name = "radaway"
	icon_state = "radaway_empty"
	desc = "RadAway is an intravenous chemical solution that bonds with radiation particles and passes them through the body's system. It takes some time to work and is a potent diuretic."
	list_reagents = list("radaway" = 200)

/obj/item/weapon/reagent_containers/blood/radaway/update_icon()
	var/percent = round((reagents.total_volume / volume) * 100)
	switch(percent)
		if(0 to 9)			icon_state = "radaway_empty"
		if(10 to 50) 		icon_state = "radaway_half"
		if(51 to INFINITY)	icon_state = "radaway"