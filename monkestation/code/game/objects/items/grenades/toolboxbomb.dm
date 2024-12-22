//improvised explosives//

//Bomb disguised as toolbox.
/obj/item/grenade/toolbomb
	name = "toolbox"
	desc = "Danger. Very robust."
	w_class = WEIGHT_CLASS_BULKY
	icon = 'icons/obj/storage/toolbox.dmi'
	icon_state = "toolbox_default"
	icon_state_preview = "ied_preview"
	inhand_icon_state = "toolbox_default"
	lefthand_file = 'icons/mob/inhands/equipment/toolbox_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/toolbox_righthand.dmi'
	throw_speed = 2
	throw_range = 7
	flags_1 = CONDUCT_1
	active = FALSE
	det_time = 50
	display_timer = FALSE
	var/check_parts = FALSE
	var/range = 3
	var/list/times
	force = 12
	throwforce = 12
	demolition_mod = 1.25

	custom_materials = list(/datum/material/iron = SMALL_MATERIAL_AMOUNT*5)
	attack_verb_continuous = list("robusts")
	attack_verb_simple = list("robust")
	hitsound = 'sound/weapons/smash.ogg'
	drop_sound = 'sound/items/handling/toolbox_drop.ogg'
	pickup_sound = 'sound/items/handling/toolbox_pickup.ogg'
	material_flags = MATERIAL_EFFECTS | MATERIAL_COLOR
//	var/latches = "single_latch"
//	var/has_latches = TRUE
	wound_bonus = 5

	shrapnel_type = /obj/projectile/bullet/shrapnel
	shrapnel_radius = 8

/obj/item/grenade/toolbomb/Initialize(mapload)
	. = ..()
	if(check_parts) //since construction code calls this itself, no need to always call it. This does have the downside that adminspawned ones can potentially not have cans if they don't use the /spawned subtype.
		CheckParts()

/obj/item/grenade/toolbomb/spawned
	check_parts = TRUE

/obj/item/grenade/toolbomb/spawned/Initialize(mapload)
	new /obj/item/storage/toolbox(src)
	return ..()

/obj/item/grenade/toolbomb/CheckParts(list/parts_list)
	..()
	var/obj/item/storage/toolbox/box = locate() in contents
	if(!box)
		stack_trace("[src] generated without a toolbox!") //this shouldn't happen.
		qdel(src)
		return
	box.pixel_x = 0 //Reset the sprite's position to make it consistent with the rest of the IED
	box.pixel_y = 0
	var/mutable_appearance/can_underlay = new(box)
	can_underlay.layer = FLOAT_LAYER
	can_underlay.plane = FLOAT_PLANE
	underlays += can_underlay


/obj/item/grenade/toolbomb/attack_self(mob/user)
	if(!active)
		if(!botch_check(user))
			to_chat(user, span_warning("You light the [name]!"))
			cut_overlay("improvised_grenade_filled")
			arm_grenade(user, null, FALSE)

/obj/item/grenade/toolbomb/detonate(mob/living/lanced_by) //Blowing that can up
	. = ..()
	if(!.)
		return

	update_mob()
	explosion(src, devastation_range = -1, heavy_impact_range = 1, light_impact_range = 2, flame_range = 4) // small explosion, plus a very large fireball.
	qdel(src)

/obj/item/grenade/toolbomb/change_det_time()
	return //always be random.

/obj/item/grenade/toolbomb/examine(mob/user)
	. = ..()
	. += "You can't tell when it will explode!"

//IED cluster grenade
/obj/item/grenade/clusterbuster/ied
	name = "Revolution Special"
	payload = /obj/item/grenade/iedcasing/spawned
