/obj/item/weapon/stock_parts/cell/device/laser/update_icon()
	var/ratio = charge / maxcharge
	if(charge)
		ratio = max(round(ratio, 0.25) * 100, 25)
		icon_state = "[initial(icon_state)][ratio]"
	else
		icon_state = "[initial(icon_state)]0"

/obj/item/weapon/stock_parts/cell/laser/New()
	..()
	update_icon()

/obj/item/weapon/stock_parts/cell/device/laser
	icon = 'icons/obj/laser_battery.dmi'
	icon_state = "standart"
	name = "standart laser battery"
	desc = "Standart battery power supply high-intensity."
	origin_tech = list(TECH_POWER = 1)
	charge = 700
	maxcharge = 700

/obj/item/weapon/stock_parts/cell/device/laser/high
	name = "high laser battery"
	desc = "High battery power supply high-intensity."
	icon_state = "high"
	origin_tech = list(TECH_POWER = 2)
	materials = list(MAT_GLASS=80)
	charge = 1100
	maxcharge = 1100

/obj/item/weapon/stock_parts/cell/device/laser/super
	name = "super laser battery"
	desc = "Super battery power supply high-intensity."
	icon_state = "super"
	origin_tech = list(TECH_POWER = 5)
	materials = list(MAT_GLASS=80)
	charge = 1500
	maxcharge = 1500

/obj/item/weapon/stock_parts/cell/device/laser/hyper
	name = "hyper laser battery"
	desc = "Hyper battery power supply high-intensity."
	icon_state = "hyper"
	origin_tech = list(TECH_POWER = 6)
	materials = list(MAT_GLASS=80)
	charge = 2000
	maxcharge = 2000