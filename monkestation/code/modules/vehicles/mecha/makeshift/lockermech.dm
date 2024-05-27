/obj/vehicle/sealed/mecha/locker
	desc = "esc = "A locker with stolen wires, struts, electronics and airlock servos crudely assembled into something that resembles the functions of a mech."
	name = "\improper Locker Mech"
	icon_state = "odysseus"
	base_icon_state = "odysseus"
	allow_diagonal_movement = False
	movedelay = 2
	encumbrance_gap = 1
    wreckage = null
    enter_delay = 20
	exit_delay = 20
	max_temperature = 15000
	max_integrity = 200
    armor_type = /datum/armor/structure_closet //Uses same armor a closet uses.
	max_equip_by_category = list(
		MECHA_UTILITY = 2,
		MECHA_POWER = 1,
		MECHA_ARMOR = 0,
	)
	mech_type = EXOSUIT_MODULE_RIPLEY | EXOSUIT_MODULE_MAKESHIFT
	step_energy_drain = 6
    var/list/cargo
	var/cargo_capacity = 5

/obj/vehicle/sealed/mecha/locker/secure //Killdozer
    desc = "esc = "A locker with stolen wires, struts, electronics and airlock servos crudely assembled into something that resembles the functions of a mech."
	name = "\improper Secured Locker Mech"
    movedelay = 4
    max_temperature = 25000
    max_integrity = 250
    damage_deflection = 20
    armor_type = /datum/armor/closet_secure_closet //Uses same armor a secure closet uses.
