/datum/heretic_knowledge/ultimate/on_finished_recipe(mob/living/user, list/selected_atoms, turf/loc)
	. = ..()
	var/datum/antagonist/heretic/heretic_datum = IS_HERETIC(user)
	// there's literally a big unique announcement saying "HEY THIS PERSON'S AN ASCENDED HERETIC", no reason to not have them in the orbit menu
	heretic_datum.show_to_ghosts = TRUE
	heretic_datum.antagpanel_category = "Ascended Heretics"

	for(var/datum/antagonist/heretic/heretic in GLOB.antagonists) //Only one heretic is allowed to ascend.
		var/mob/living/heretic_body = heretic.owner?.current
		if(!heretic.ascended || !heretic.feast_of_owls)
			heretic_body.gib()
			return
		
		if(heretic.feast_of_owls)
			to_chat(heretic_body, span_warning("Selling your ambition to the owls has saved you from the wrath of the mansus."))
			return
