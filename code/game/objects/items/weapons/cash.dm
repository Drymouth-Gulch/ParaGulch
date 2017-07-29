/obj/item/stack/spacecash
	name = "NCR dollars"
	desc = "It's worth $1."
	singular_name = "bill"
	icon = 'icons/goonstation/objects/money.dmi'
	icon_state = "cashgreen"
	hitsound = "swing_hit"
	force = 1
	throwforce = 1
	throw_speed = 1
	throw_range = 7
	w_class = WEIGHT_CLASS_TINY
	burn_state = FLAMMABLE
	singular_name = "credit"
	max_amount = 1000000
	merge_type = /obj/item/stack/spacecash

/obj/item/stack/spacecash/New(loc, amt = null)
	..()
	update_icon()

/obj/item/stack/spacecash/update_icon()
	..()
	name = "[amount == max_amount ? "1000000" : amount] Credit[amount > 1 ? "s" : ""]"
	if(amount >= 1 && amount < 10)
		icon_state = "cashgreen"
	else if(amount >= 10 && amount < 50)
		icon_state = "spacecash"
	else if(amount >= 50 && amount < 500)
		icon_state = "cashblue"
	else if(amount >= 500 && amount < 1000)
		icon_state = "cashindi"
	else if(amount >= 1000 && amount < 1000000)
		icon_state = "cashpurp"
	else
		icon_state = "cashrbow"

/obj/item/stack/spacecash/c10
	amount = 10

/obj/item/stack/spacecash/c20
	amount = 20

/obj/item/stack/spacecash/c50
	amount = 50

/obj/item/stack/spacecash/c100
	amount = 100

/obj/item/stack/spacecash/c200
	amount = 200

/obj/item/stack/spacecash/c500
	amount = 500

/obj/item/stack/spacecash/c1000
	amount = 1000

/obj/item/stack/spacecash/c1000000
	amount = 1000000

/obj/item/stack/coin
	name = "Legion denarii"
	desc = "It's worth 1 denarius."
	singular_name = "denarius"
	icon = 'icons/goonstation/objects/money.dmi'
	icon_state = "coin"
	amount = 1
	max_amount = 300
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1
	//burn_state = FLAMMABLE

/obj/item/stack/coin/coins
	icon_state = "coins"
	desc = "It's worth 10 denarii."

/obj/item/stack/coin/bag
	icon_state = "money_coins"
	desc = "It's worth 50 denarii."

/obj/item/stack/caps
	name = "caps"
	desc = "It's worth 1 cap."
	singular_name = "cap"
	icon = 'icons/goonstation/objects/money.dmi'
	icon_state = "1"
	amount = 1
	max_amount = 3000
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1

/obj/item/stack/caps/update_icon()
	if(amount >= 20)
		icon_state = "20"
	else
		icon_state = "[amount]"
