/*This file contains helmets to protect your noggin

This file contains:

-
    -RAIDER
        raider
        arclight
        blastmaster
        yankee
    -MISC
        eyebot
        combat helmet
        metal mask
	        +mk2
        tesla
    -BOS
        brotherhood combat helmet
    -LEGION
        legion recruit
        legion veteran
        legion decan
        legion centurion
        legion legat
    -NCR
        ranger combat helmet
	        +desert ranger
    -VAULT
        vault riot helmet
        
    -POWER ARMOR HELMETS - TODO THESE WILL EVENTUALLY BE SIMILAR TO HARDSUITS(?) - gomble
        t45b
	        +salvaged
        advanced
	        +mk2
        t51b
        t45d
        	+broken

   
	
*/
/////////
//HELMETS
/////////



/obj/item/clothing/head/helmet/raider
	name = "supa-fly raider helmet"
	desc = "It's a makeshift raider helmet, made of leather. It heavily smells with chems and sweat."
	icon_state = "supafly"
	item_state = "supafly"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	armor = list(melee = 20, bullet = 10, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/raider/arclight
	name = "raider arclight helmet"
	desc = "This will protect you against flashes."
	icon_state = "arclight"
	item_state = "arclight"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH
	armor = list(melee = 30, bullet = 15, laser = 10, energy = 10, bomb = 10, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/raider/blastmaster
	name = "raider blastmaster helmet"
	icon_state = "blastmaster"
	item_state = "blastmaster"
	burn_state = FIRE_PROOF
	armor = list(melee = 30, bullet = 10, laser = 0,energy = 0, bomb = 10, bio = 50, rad = 30)

/obj/item/clothing/head/helmet/raider/yankee
	name = "yankee raider helmet"
	desc = "Long time ago, it has belonged to a football player, now it belongs to wasteland."
	icon_state = "yankee"
	item_state = "yankee"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	armor = list(melee = 50, bullet = 20, laser = 0,energy = 0, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/head/helmet/eyebot
	name = "eyebot helmet"
	desc = "It is a dismantled eyebot, hollowed out to accommodate for a humanoid head."
	icon_state = "eyebot"
	item_state = "eyebot"
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	armor = list(melee = 50, bullet = 30, laser = 10,energy = 10, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/combat
	name = "combat helmet"
	desc = "An old combat helmet, out of use around the time of the war."
	icon_state = "combat_helmet"
	item_state = "combat_helmet"
	armor = list(melee = 45, bullet = 45, laser = 15,energy = 25, bomb = 10, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF
	flash_protect = 1
	tint = 0

/obj/item/clothing/head/helmet/combat/brotherhood
	name = "brotherhood combat helmet"
	desc = "An improved combat helmet, seen commonly worn on initiates"
	icon_state = "brotherhood_helmet"
	item_state = "brotherhood_helmet"
	armor = list(melee = 55, bullet = 50, laser = 35,energy = 25, bomb = 10, bio = 0, rad = 90)

/obj/item/clothing/head/helmet/legrecruit
	name = "legion recruit helmet"
	desc = "It's leather legion recruit helmet."
	icon_state = "legrecruit"
	item_state = "legrecruit"
	armor = list(melee = 35, bullet = 15, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/legveteran
	name = "legion veteran helmet"
	desc = "It's a metal legion veteran helmet, looks pretty sturdy."
	icon_state = "legvet"
	item_state = "legvet"
	armor = list(melee = 40, bullet = 20, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF
/obj/item/clothing/head/helmet/riot/vaultsec
	name = "security helmet"
	desc = "A standard issue vault security helmet, pretty robust."
	armor = list(melee = 60, bullet = 25, laser = 25,energy = 10, bomb = 25, bio = 2, rad = 0)
/obj/item/clothing/head/helmet/legvexil
	name = "legion vexillarius helmet"
	desc = "It's leather legion vexillarius helmet."
	icon_state = "legvexil"
	item_state = "legvexil"
	armor = list(melee = 40, bullet = 20, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/legdecan
	name = "legion decan helmet"
	desc = "It's leather legion decan helmet."
	icon_state = "legdecan"
	item_state = "legdecan"
	armor = list(melee = 45, bullet = 20, laser = 10,energy = 0, bomb = 30, bio = 0, rad = 0)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/legcenturion
	name = "legion centurion helmet"
	desc = "It's metal legion centurion helmet."
	icon_state = "legcenturion"
	item_state = "legcenturion"
	armor = list(melee = 75, bullet = 40, laser = 25,energy = 15, bomb = 40, bio = 0, rad = 50)
	flags_inv = HIDEEARS
	flags = BLOCKHAIR
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/leglegat
	name = "legion legat helmet"
	desc = "It's metal legion legat helmet."
	icon_state = "leglegat"
	item_state = "leglegat"
	armor = list(melee = 85, bullet = 50, laser = 35,energy = 25, bomb = 50, bio = 0, rad = 60)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF

/obj/item/clothing/head/helmet/rangercombat
	name = "ranger combat helmet"
	desc = "An old combat helmet, out of use around the time of the war."
	icon_state = "ranger"
	item_state = "ranger"
	armor = list(melee = 70, bullet = 60, laser = 40, energy = 40, bomb = 40, bio = 0, rad = 80)
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	put_on_delay = 10
	strip_delay = 50
	burn_state = FIRE_PROOF
/*
	darkness_view = 8
	invis_view = SEE_INVISIBLE_MINIMUM
*/

/obj/item/clothing/head/helmet/rangercombat/desert
	name = "desert ranger combat helmet"
	desc = "An U.S Marine Corps helmet, used by the legendary Desert Rangers."
	icon_state = "desert_ranger"
	item_state = "desert_ranger"
	armor = list(melee = 65, bullet = 60, laser = 45,energy = 35, bomb = 20, bio = 0, rad = 100)

/obj/item/clothing/head/helmet/rangercombat/eliteriot
	name = "elite riot gear helmet"
	desc = "An old combat helmet seen in the divide, repurposed for higher ranking Rangers."
	icon_state = "elite_riot"
	item_state = "elite_riot"
	armor = list(melee = 75, bullet = 68, laser = 50,energy = 50, bomb = 45, bio = 0, rad = 100)

/obj/item/clothing/head/helmet/metalmask
	name = "metal mask"
	desc = "A crudely formed metal hockey mask."
	icon_state = "metal_mask"
	item_state = "metal_mask"
	armor = list(melee = 30, bullet = 15, laser = 20,energy = 15, bomb = 5, bio = 2, rad = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80

/obj/item/clothing/head/helmet/metalmask/mk2
	name = "metal mask mk2"
	desc = "A finely formed metal hockey mask."
	icon_state = "metal_mask2"
	item_state = "metal_mask2"
	armor = list(melee = 35, bullet = 20, laser = 25,energy = 20, bomb = 10, bio = 2, rad = 0)
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	strip_delay = 80

/obj/item/clothing/head/helmet/tesla
	name = "tesla helmet"
	desc = "A prewar armor design by Nikola Tesla before being confinscated by the U.S. government. Provides the best energy weapons resistance."
	icon_state = "tesla_helmet"
	item_state = "tesla_helmet"
	armor = list(melee = 35, bullet = 20, laser = 50, energy = 40, bomb = 10, bio = 0, rad = 5)
	var/hit_reflect_chance = 70
	put_on_delay = 30
	strip_delay = 10

/obj/item/clothing/head/helmet/tesla/IsReflect(def_zone)
	if(!(def_zone in list("head"))) //If not shot where ablative is covering you, you don't get the reflection bonus!
		return 0
	if (prob(hit_reflect_chance))
		return 1

//Power armor helmets

/obj/item/clothing/head/helmet/power_armor/f13
	flags = HEADCOVERSEYES | HEADCOVERSMOUTH | STOPSPRESSUREDMAGE | BLOCKHAIR
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELM_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = SPACE_HELM_MAX_TEMP_PROTECT
	unacidable = 1
	ispowerarmor = 1
	put_on_delay = 20
	strip_delay = 200
	burn_state = FIRE_PROOF
	flash_protect = 2
	tint = 0

/obj/item/clothing/head/helmet/power_armor/t45b
	name = "T-45b power helmet"
	desc = "It's a pre-War power armor helmet, recovered and maintained by NCR engineers."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list(melee = 70, bullet = 60, laser = 50, energy = 50, bomb = 50, bio = 100, rad = 60)

/obj/item/clothing/head/helmet/power_armor/t45b/salvaged
	name = "Salvaged T-45b helmet"
	desc = "It's a pre-War power armor helmet, recovered and maintained by NCR engineers."
	icon_state = "t45bhelmet"
	item_state = "t45bhelmet"
	armor = list(melee = 70, bullet = 50, laser = 50,energy = 50, bomb = 30, bio = 100, rad = 20)
	flash_protect = 0

/obj/item/clothing/head/helmet/power_armor/advanced
	name = "Advanced power helmet"
	desc = "It's an advanced power armor Mk I helmet, typically used by the Enclave. It looks somewhat threatening."
	icon_state = "advanced"
	item_state = "advanced"
	armor = list(melee = 80, bullet = 70, laser = 70, energy = 70, bomb = 70, bio = 100, rad = 80)

/obj/item/clothing/head/helmet/power_armor/advanced/mk2
	name = "Advanced power helmet MK2"
	desc = "It's an advanced power armor Mk II helmet, typically used by the Enclave. It looks somewhat threatening."
	icon_state = "advanced"
	item_state = "advanced"
	armor = list(melee = 90, bullet = 80, laser = 80, energy = 80, bomb = 80, bio = 100, rad = 90)

/obj/item/clothing/head/helmet/power_armor/t51b
	name = "T-51b power helmet"
	desc = "It's a t51b power helmet, typically used by the Brotherhood. It looks somewhat charming."
	icon_state = "t51bhelmet"
	item_state = "t51bhelmet"
	armor = list(melee = 80, bullet = 60, laser = 60,energy = 60, bomb = 40, bio = 100, rad = 60)

/obj/item/clothing/head/helmet/power_armor/t45d/broken
	name = "broken T-45d power helmet"
	desc = "This power armor helmet is so decrepit and battle-worn that it have ceased it's primary function of protecting the wearer from harm.<br>It still can provide some very basic protection though."
	icon_state = "brokenhelmet"
	item_state = "brokenhelmet"
	armor = list(melee = 30, bullet = 20, laser = 0,energy = 0, bomb = 10, bio = 0, rad = 10)
	flash_protect = 0

/obj/item/clothing/head/helmet/power_armor/t45d
	name = "T-45d power helmet"
	desc = "It's an old pre-War power armor helmet. It's pretty hot inside of it."
	icon_state = "t45dhelmet"
	item_state = "t45dhelmet"
	armor = list(melee = 70, bullet = 60, laser = 60, energy = 60, bomb = 60, bio = 100, rad = 70)
	action_button_name = "Toggle Helmet Light"
	var/brightness_on = 4 //luminosity when the light is on
	var/on = 0

/obj/item/clothing/head/helmet/power_armor/t45d/attack_self(mob/user)
	if(!isturf(user.loc))
		user << "<span class='warning'>You cannot turn the light on while in this [user.loc]!</span>" //To prevent some lighting anomalities.
		return
	on = !on
	icon_state = "t45dhelmet-light"
	item_state = "t45dhelmet-light"
	user.update_inv_head()	//so our mob-overlays update

	if(on)
		turn_on(user)
	else
		turn_off(user)

/obj/item/clothing/head/helmet/power_armor/t45d/pickup(mob/user)
	if(on)
		user.AddLuminosity(brightness_on)
		SetLuminosity(0)

/obj/item/clothing/head/helmet/power_armor/t45d/dropped(mob/user)
	if(on)
		user.AddLuminosity(-brightness_on)
		SetLuminosity(brightness_on)

/obj/item/clothing/head/helmet/power_armor/t45d/proc/turn_on(mob/user)
	user.AddLuminosity(brightness_on)

/obj/item/clothing/head/helmet/power_armor/t45d/proc/turn_off(mob/user)
	user.AddLuminosity(-brightness_on)