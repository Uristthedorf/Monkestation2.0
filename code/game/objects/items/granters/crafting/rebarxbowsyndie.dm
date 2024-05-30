/obj/item/book/granter/crafting_recipe/rebarxbowsyndie_ammo
	name = "SYNDICATE REBAR CROSSBOW OWNERS MANUAL"
	desc = "This book will self destruct upon being read a second time."
	crafting_recipe_types = list(
		/datum/crafting_recipe/rebarsyndie
	)
	remarks = list(
		"AIM FOR THE LEGS TO CRIPPLE YOUR FOES",
		"USE A ROD AND WIRECUTTERS TO MAKE BETTER AMMO",
		"BE AWARE OF THE SCOPE'S BLIND SPOTS",
		"READ THIS BOOK AGAIN TO DUST IT.",
	)

/obj/item/book/granter/crafting_recipe/rebarxbowsyndie_ammo/recoil(mob/living/user)
	to_chat(user, span_warning("The book turns to dust in your hands."))
	qdel(src)
