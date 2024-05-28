/obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/musket
	equip_cooldown = 3 SECONDS
	name = "\improper Mech Laser Musket"
	desc = "A weapon for combat exosuits. Shoots heavy lasers."
	icon_state = "mecha_laser"
	energy_drain = 30
	projectile = /obj/projectile/beam/laser/musket
	fire_sound = 'sound/weapons/lasercannonfire.ogg'
	mech_flags = EXOSUIT_MODULE_WORKING | EXOSUIT_MODULE_COMBAT //Should add an EXOSUIT_MODULE_LOCKER flag.

/obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/musket/prime
	equip_cooldown = 2 SECONDS
	name = "\improper Heroic Mech Laser Musket"
	desc = "A weapon for combat exosuits. Shoots heavy lasers."
	projectile = /obj/projectile/beam/laser/musket/prime
	
/obj/item/mecha_parts/mecha_equipment/weapon/energy/smooth
	equip_cooldown = 2 SECONDS
	name = "\improper Mech Smoothbore Disabler"
	desc = "A weapon for combat exosuits. Shoots a bunch of weak disabler beams."
	icon_state = "mecha_disabler"
	energy_drain = 30
	movedelay = 0
	projectile = /obj/projectile/beam/disabler/smoothbore
	variance = 10
	fire_sound = 'sound/weapons/taser2.ogg'

/obj/item/mecha_parts/mecha_equipment/weapon/energy/smooth/prime
	name = "\improper Mech Elite Smoothbore Disabler"
	desc = "A weapon for combat exosuits. Shoots a bunch of weak disabler beams."
	energy_drain = 60
	projectile = /obj/projectile/beam/disabler/smoothbore/prime
	variance = 0
	projectiles_per_shot = 2
	projectile_delay = 4

/obj/item/mecha_parts/mecha_equipment/drill/makeshift
	name = "Makeshift exosuit drill"
	desc = "Cobbled together from likely stolen parts, this drill is nowhere near as effective as the real deal."
	equip_cooldown = 40
	force = 10
	drill_delay = 15

/obj/item/mecha_parts/mecha_equipment/hydraulic_clamp/makeshift
	name = "makeshift clamp"
	desc = "Loose arrangement of cobbled together bits resembling a clamp."
	equip_cooldown = 25
	clamp_damage = 10
