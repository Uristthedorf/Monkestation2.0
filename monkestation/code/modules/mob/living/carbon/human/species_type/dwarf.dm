/datum/species/dwarf
	name = "\improper Dwarf"
	plural_form = "Dwarves"
	id = SPECIES_DWARF
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_PRIDE | MIRROR_MAGIC | RACE_SWAP | ERT_SPAWN
	sexes = TRUE
	mutantlungs = /obj/item/organ/internal/lungs/lavaland
	inherent_traits = list(
		TRAIT_DWARF,
		TRAIT_QUICK_BUILD,
		TRAIT_NIGHT_VISION,
		TRAIT_ALCOHOL_TOLERANCE,
	)
	inherent_biotypes = MOB_ORGANIC | MOB_HUMANOID
	payday_modifier = 0.75 //Are seen as less educated.

/mob/living/carbon/human/species/dwarf
    race = /datum/species/

/datum/species/dwarf/get_species_description()
	return "A species of small green humanoids. Reknown for their stealth, they are also primarily known for their skill in tinkering and construction, which is on the level of dwarves."

/datum/species/dwarf/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "",
			SPECIES_PERK_NAME = "Maintenance Native",
			SPECIES_PERK_DESC = "As a creature of filth, you feel right at home in maintenance and can see better!", //Mood boost when in maint? How to do?
		),
		// list(
		// 	SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		// 	SPECIES_PERK_ICON = "fist-raised",
		// 	SPECIES_PERK_NAME = "Swift Hands",
		// 	SPECIES_PERK_DESC = "Your small fingers allow you to pick pockets quieter than most.",		//I DON'T KNOW HOW TO DO THIS >:c
		// ),
		,list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "",
			SPECIES_PERK_NAME = "Short",
			SPECIES_PERK_DESC = "Short, haha.", //Dwarf trauma
		),
		,list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "hand",
			SPECIES_PERK_NAME = "Small Hands",
			SPECIES_PERK_DESC = "Goblin's small hands allow them to construct machines faster.", //Quick Build trait
		),
	)

	return to_add
