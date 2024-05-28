/datum/crafting_recipe/lance
	name = "Explosive Lance (Grenade)"
	result = /obj/item/spear/explosive
	reqs = list(
		/obj/item/spear = 1,
		/obj/item/grenade = 1
	)
	blacklist = list(/obj/item/spear/bonespear, /obj/item/spear/bamboospear)
	parts = list(
		/obj/item/spear = 1,
		/obj/item/grenade = 1
	)
	time = 1.5 SECONDS
	category = CAT_WEAPON_MELEE

/datum/crafting_recipe/lockermech
	name = "Locker Mech"
	result = /obj/vehicle/sealed/mecha/locker
	reqs = list(/obj/item/stack/cable_coil = 20,
				/obj/item/stack/sheet/iron = 10,
				/obj/item/storage/toolbox = 2, // For feet
				/obj/item/tank/internals = 1, // For air
				/obj/item/electronics/airlock = 1, //You are stealing the motors from airlocks
				/obj/item/extinguisher = 1, //For bastard pnumatics
				/obj/item/stack/sticky_tape = 5,
				/obj/item/flashlight = 1, //For the mech light
				/obj/item/stack/rods = 4, //to mount the equipment
				/obj/item/chair = 2) //For legs
	tool_paths = list(/obj/item/weldingtool, /obj/item/screwdriver, /obj/item/wirecutters)
	time = 20 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/lockermech/secure //I'm too smoothbrain to make an upgrade kit without a copy/paste job so I'm just making a separate recipe and no kit.
	name = "Secure Locker Mech"
	result = /obj/vehicle/sealed/mecha/locker/secure
	reqs = list(/obj/item/stack/cable_coil = 20,
				/obj/item/stack/sheet/plasteel = 10,
				/obj/item/storage/toolbox = 2, // For feet
				/obj/item/tank/internals = 1, // For air
				/obj/item/electronics/airlock = 1, //You are stealing the motors from airlocks
				/obj/item/extinguisher = 1, //For bastard pnumatics
				/obj/item/stack/sticky_tape = 5,
				/obj/item/flashlight = 1, //For the mech light
				/obj/item/stack/rods = 4, //to mount the equipment
				/obj/item/chair = 2) //For legs

/datum/crafting_recipe/lockermechdrill
	name = "Makeshift exosuit drill"
	result = /obj/item/mecha_parts/mecha_equipment/drill/makeshift
	reqs = list(/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/iron = 2,
				/obj/item/surgicaldrill = 1)
	tool_paths = list(/obj/item/screwdriver)
	time = 5 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/lockermechclamp
	name = "Makeshift exosuit clamp"
	result = /obj/item/mecha_parts/mecha_equipment/hydraulic_clamp/makeshift
	reqs = list(/obj/item/stack/cable_coil = 5,
				/obj/item/stack/sheet/iron = 2,
				/obj/item/wirecutters = 1) //Don't ask, its just for the grabby grabby thing
	tool_paths = list(/obj/item/screwdriver)
	time = 5 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/lockermusket
	name = "Makeshift exosuit laser"
	result = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/musket
	reqs = list(/obj/item/gun/energy/laser/musket = 1,
				/obj/item/stack/cable_coil = 5)
	tool_paths = list(/obj/item/screwdriver, /obj/item/wirecutters = 1)
	time = 5 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/lockermusketprime
	name = "Improved makeshift exosuit laser"
	result = /obj/item/mecha_parts/mecha_equipment/weapon/energy/laser/musket/prime
	reqs = list(/obj/item/gun/energy/laser/musket/prime = 1,
				/obj/item/stack/cable_coil = 5)
	tool_paths = list(/obj/item/screwdriver, /obj/item/wirecutters = 1)
	time = 5 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/lockerdisabler
	name = "Makeshift exosuit disabler"
	result = /obj/item/mecha_parts/mecha_equipment/weapon/energy/smooth
	reqs = list(/obj/item/gun/energy/disabler/smoothbore = 1,
				/obj/item/stack/cable_coil = 5)
	tool_paths = list(/obj/item/screwdriver, /obj/item/wirecutters = 1)
	time = 5 SECONDS
	category = CAT_ROBOT

/datum/crafting_recipe/lockerdisablerprime
	name = "Improved makeshift exosuit disabler"
	result = /obj/item/mecha_parts/mecha_equipment/weapon/energy/smooth/prime
	reqs = list(/obj/item/gun/energy/disabler/smoothbore/prime = 1,
				/obj/item/stack/cable_coil = 5)
	time = 5 SECONDS
	category = CAT_ROBOT
