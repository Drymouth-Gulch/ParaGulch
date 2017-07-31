/*Completely generic structures for use by mappers to create fake objects, i.e. display rooms*/

/obj/structure/showcase/sign
	icon = 'icons/obj/billboard.dmi'
	bound_x = 64
	density = 1

/obj/structure/showcase/sign/klamat
	name = "Klamat"
	desc = "A sign showing the name of the town to Klamat."
	icon_state = "klamat"

/obj/structure/showcase/sign/den
	name = "Den"
	desc = "A sign showing the name of the Den settlement."
	icon_state = "den"

/obj/structure/showcase/sign/random
	var/types = 4

/obj/structure/showcase/sign/random/New()
	..()
	types = pick(1,4)

/obj/structure/showcase/sign/random/nukacola
	name = "\improper Nuka-Cola billboard"
	desc = "A billboard for the famous pre-war soft beverage."
	icon_state = "cola1"

/obj/structure/showcase/sign/random/nukacola/New()
	..()
	icon_state = "cola[types]"
	switch(types)
		if(1)
			desc = "A billboard for the famous pre-war soft beverage."
		if(2 to 3)
			desc = "A billboard for the famous pre-war soft beverage, worn with age."
		if(4)
			name = "defaced Nuka-Cola billboard"
			desc = "A billboard for the famous pre-war soft beverage, defaced by an opposer of the NCR."

/obj/structure/showcase/sign/random/ritas
	name = "\improper Rita's Cafe billboard"
	desc = "A billboard advertising a pre-war cafe."
	icon_state = "ritas1"

/obj/structure/showcase/sign/random/ritas/New()
	..()
	icon_state = "ritas[types]"
	switch(types)
		if(1)
			desc = "A billboard advertising a pre-war cafe."
		if(2 to 3)
			desc = "A billboard advertising a pre-war cafe, worn with age."
		if(4)
			name = "defaced Rita's Cafe billboard"
			desc = "A billboard advertising a pre-war cafe, defaced by a supporter of Ceasar's Legion."
