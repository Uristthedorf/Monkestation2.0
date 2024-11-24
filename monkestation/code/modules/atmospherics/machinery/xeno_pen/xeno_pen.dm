/obj/machinery/atmospherics/components/unary/outlet_injector/on/xenopen
	name = "hardened xeno failsafe"
	desc = "A reinforced air injector hardened enough to withstand whatever a xenomorph could do to it."
	damage_deflection = 30
	resistance_flags = FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor_type = /datum/armor/xeno_resistant

/obj/machinery/sparker/xenopen
	name = "hardened mounted igniter"
	damage_deflection = 30
	resistance_flags = FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor_type = /datum/armor/xeno_resistant

/datum/armor/xeno_resistant
	melee = 80
	bullet = 50
	laser = 10
	energy = 10
	fire = 100
	acid = 100