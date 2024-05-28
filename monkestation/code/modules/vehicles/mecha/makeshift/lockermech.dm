/obj/vehicle/sealed/mecha/locker
	desc = "A locker with stolen wires, struts, electronics and airlock servos crudely assembled into something that resembles the functions of a mech."
	name = "\improper Locker Mech"
	icon = 'monkestation/icons/mech/lockermech.dmi'
	icon_state = "lockermech"
	base_icon_state = "lockermech"
	allow_diagonal_movement = FALSE
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
	equip_by_category = list(
		MECHA_L_ARM = null,
		MECHA_R_ARM = null,
		MECHA_UTILITY = list(/obj/item/mecha_parts/mecha_equipment/ejector),
		MECHA_POWER = list(),
		MECHA_ARMOR = list(),
	)
	mech_type = EXOSUIT_MODULE_LOCKER
	step_energy_drain = 6
	var/list/cargo
	var/cargo_capacity = 5

/obj/vehicle/sealed/mecha/locker/secure //Killdozer
	desc = "A locker with stolen wires, struts, electronics and airlock servos crudely assembled into something that resembles the functions of a mech."
	name = "\improper Secured Locker Mech"
	movedelay = 4
	enter_delay = 30
	exit_delay = 30
	max_temperature = 25000
	max_integrity = 250
	damage_deflection = 20
	step_energy_drain = 8
	armor_type = /datum/armor/closet_secure_closet //Uses same armor a secure closet uses.
