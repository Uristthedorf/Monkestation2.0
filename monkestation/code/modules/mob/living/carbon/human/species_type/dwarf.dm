/datum/species/dwarf
	name = "\improper Dwarf"
	plural_form = "Dwarves"
	id = SPECIES_DWARF
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN
	sexes = TRUE
	mutantlungs = /obj/item/organ/internal/lungs/lavaland //In my headcanon, dwarves are humans who have adapted to living on dangerous frontier worlds.
	inherent_traits = list(
		TRAIT_DWARF,
		TRAIT_QUICK_BUILD,
		TRAIT_NIGHT_VISION,
		TRAIT_ALCOHOL_TOLERANCE,
	)
	inherent_biotypes = MOB_ORGANIC | MOB_HUMANOID
	payday_modifier = 0.75 //Are seen as less educated.

/mob/living/carbon/human/species/dwarf
    race = /datum/species/dwarf

/datum/species/dwarf/on_species_gain(mob/living/carbon/human/human_who_gained_species, datum/species/old_species, pref_load)
	. = ..()
	human_who_gained_species.mind.teach_crafting_recipe(/datum/crafting_recipe/pipegun_prime) //Dwarves are knowledgable about crafting.
	human_who_gained_species.mind.teach_crafting_recipe(/datum/crafting_recipe/laser_musket_prime)
	human_who_gained_species.mind.teach_crafting_recipe(/datum/crafting_recipe/smoothbore_disabler_prime)
	human_who_gained_species.mind.teach_crafting_recipe(/datum/crafting_recipe/trash_cannon)
	human_who_gained_species.mind.teach_crafting_recipe(/datum/crafting_recipe/trashball)

/datum/species/dwarf/get_species_description()
	return "A species of small green humanoids. Reknown for their stealth, they are also primarily known for their skill in tinkering and construction, which is on the level of dwarves."

/datum/species/dwarf/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		,list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "",
			SPECIES_PERK_NAME = "Short",
			SPECIES_PERK_DESC = "Short, haha.", //Dwarf trauma
		),
	)

	return to_add
