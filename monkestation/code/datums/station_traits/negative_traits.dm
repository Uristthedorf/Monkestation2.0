/datum/station_trait/clown_bridge
	name = "Clown Bridge Access"
	trait_type = STATION_TRAIT_NEGATIVE
	weight = 2
	show_in_report = TRUE
	report_message = "The Clown Planet has discovered a weakness in the ID scanners of specific airlocks."
	trait_to_give = STATION_TRAIT_CLOWN_BRIDGE

/datum/station_trait/overflow_job_bureaucracy/proc/set_overflow_job_override(datum/source)
	SIGNAL_HANDLER
	var/datum/job/picked_job
	var/list/possible_jobs = SSjob.joinable_occupations.Copy()
	while(length(possible_jobs) && !picked_job?.allow_overflow)
		picked_job = pick_n_take(possible_jobs)
	if(!picked_job)
		CRASH("Failed to find valid job to pick for overflow!")
	chosen_job_name = lowertext(picked_job.title) // like Chief Engineers vs like chief engineers
	SSjob.set_overflow_role(picked_job.type)

/datum/station_trait/uncommonlanguage
	name = "Foreign Department"
	trait_type = STATION_TRAIT_NEGATIVE
	show_in_report = TRUE
	trait_flags = STATION_TRAIT_ABSTRACT

	var/department_to_apply_to
	var/department_name = "department"

/datum/station_trait/uncommonlanguage/New()
	. = ..()
	blacklist += subtypesof(/datum/station_trait/uncommonlanguage) - type //All but ourselves
	report_message = "Due to staffing shortages, we have hired foreigners to fill in for the [department_name] department and assistants."
	RegisterSignal(SSdcs, COMSIG_GLOB_JOB_AFTER_SPAWN, PROC_REF(on_job_after_spawn))


/datum/station_trait/uncommonlanguage/proc/on_job_after_spawn(datum/source, datum/job/job, mob/living/spawned, client/player_client)
	SIGNAL_HANDLER

	if(!((job.departments_bitflags & department_to_apply_to) || (job.title = JOB_ASSISTANT)))
		return

	spawned.grant_language(/datum/language/uncommon, TRUE, TRUE, LANGUAGE_MIND)
	spawned.remove_language(/datum/language/common, TRUE, TRUE)


/datum/station_trait/uncommonlanguage/service
	name = "Foreign Service"
	trait_flags = NONE
	weight = 2
	department_to_apply_to = DEPARTMENT_BITFLAG_SERVICE
	department_name = "Service"

/datum/station_trait/uncommonlanguage/cargo
	name = "Foreign Cargo"
	trait_flags = NONE
	weight = 2
	department_to_apply_to = DEPARTMENT_BITFLAG_CARGO
	department_name = "Cargo"

/datum/station_trait/uncommonlanguage/engineering
	name = "Foreign Engineering"
	trait_flags = NONE
	weight = 2
	department_to_apply_to = DEPARTMENT_BITFLAG_ENGINEERING
	department_name = "Engineering"

///datum/station_trait/uncommonlanguage/command
//	name = "Foreign Command"
//	trait_flags = NONE
//	weight = 1
//	department_to_apply_to = DEPARTMENT_BITFLAG_COMMAND
//	department_name = "Command"

/datum/station_trait/uncommonlanguage/science
	name = "Foreign Science"
	trait_flags = NONE
	weight = 2
	department_to_apply_to = DEPARTMENT_BITFLAG_SCIENCE
	department_name = "Science"

/datum/station_trait/uncommonlanguage/security
	name = "Foreign Security"
	trait_flags = NONE
	weight = 1
	department_to_apply_to = DEPARTMENT_BITFLAG_SECURITY
	department_name = "Security"

/datum/station_trait/uncommonlanguage/medical
	name = "Foreign Medical"
	trait_flags = NONE
	weight = 2
	department_to_apply_to = DEPARTMENT_BITFLAG_MEDICAL
	department_name = "Medical"
