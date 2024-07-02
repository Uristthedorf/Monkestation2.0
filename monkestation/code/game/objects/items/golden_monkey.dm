/obj/item/goldenmonkey
	name = "golden monkey"
	desc = "An ancient relic of immesurable value..."
	w_class = WEIGHT_CLASS_BULKY
	icon = 'monkestation/icons/obj/plushes.dmi' // NEEDS SPRITE.
	icon_state = "ook" // NEEDS SPRITE.
	resistance_flags = FIRE_PROOF | ACID_PROOF
	///The current holder of the greentext.
	var/mob/living/new_holder
	///The callback at the end of a round to check if the greentext has been completed.
	var/datum/callback/roundend_callback
	var/prize = 1000

/obj/item/goldenmonkey/Initialize(mapload)
	. = ..()
	src.AddComponent(/datum/component/particle_spewer/sparkle)
	SSpoints_of_interest.make_point_of_interest(src)
	roundend_callback = CALLBACK(src, PROC_REF(check_winner))
	SSticker.OnRoundend(roundend_callback)

/obj/item/goldenmonkey/equipped(mob/user, slot, initial = FALSE)
	. = ..()
	to_chat(user, span_gold("This must be worth a fortune... You must escape with it!"))
	new_holder = user

/obj/item/goldenmonkey/dropped(mob/user, silent = FALSE)
	to_chat(last_holder, span_warning("Your riches!"))
	new_holder = null
	return ..()

/obj/item/greentext/Destroy(force)
	LAZYREMOVE(SSticker.round_end_events, roundend_callback)
	QDEL_NULL(roundend_callback) //This ought to free the callback datum, and prevent us from harddeling

/obj/item/goldenmonkey/proc/check_winner()
	if(!new_holder)
		return
	if(!is_centcom_level(new_holder.z)) //you're winner!
		return

	new_holder.client.prefs.adjust_metacoins(new_holder.ckey, prize, "Sold Golden Monkey.", donator_multipler = FALSE)
	to_chat(new_holder, "<font color='gold'>Riches are yours!</font>")
	new_holder.mind.add_antag_datum(/datum/antagonist/greentext)
	new_holder.log_message("Secured a monkey!!!", LOG_ATTACK, color = "gold")
	resistance_flags |= ON_FIRE
	
	qdel(src)

/obj/item/goldenmonkey/proc/reward()
	new_holder.client.prefs.adjust_metacoins(new_holder.ckey, prize, "Sold Golden Monkey.", donator_multipler = FALSE)

/obj/item/goldenmonkey/cursed
	name = "cursed monkey idol"
	desc = "An ancient relic of immesurable value, you sense an evil energy coming from it..."
	icon_state = "ook" // NEEDS SPRITE.
	AddComponent(/datum/component/curse_of_hunger) //Could there be a more interesting way to make it cursed?

/obj/item/goldenmonkey/cursed/reward()
	new_holder.client.client_token_holder.adjust_antag_tokens(LOW_THREAT, 1)
