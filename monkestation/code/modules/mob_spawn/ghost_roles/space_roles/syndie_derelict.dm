// Syndicate Derelict Station spawns - ported from yog

/obj/effect/mob_spawn/ghost_role/human/syndicate_derelict_engineer
	name = "syndicate engineer sleeper"
	desc = "A humming cryo pod. You can barely recognise a syndicate uniform underneath the built up ice. The machine is attempting to wake up its occupant. It may be best that you aren't around when it succeeds."
	icon = 'icons/obj/machines/sleeper.dmi'
	icon_state = "sleeper_s"
	mob_species = /datum/species/human
	you_are_text = "You're an engineer working for the Syndicate, assigned to repair a derelict research station."
	flavour_text = "During your briefing, you're told that an old syndicate research post has gone missing without notice. No theories have been brought to its fate, and it's unlikely to know the cause of its destruction. Your job will be to restore this post to optimal levels."
	important_text = "Do not abandon the derelict or mess with the main station under any circumstances."
	outfit = /datum/outfit/syndicate_derelict_engi
	spawner_job_path = /datum/job/lavaland_syndicate/space

/datum/outfit/syndicate_derelict_engi
	name = "Syndicate Derelict Engineer"
	uniform = /obj/item/clothing/under/syndicate
	head = /obj/item/clothing/head/helmet/space/syndicate/black/engie
	back = /obj/item/storage/backpack/duffelbag/syndie
	suit = /obj/item/clothing/suit/space/syndicate/black/engie
	suit_store = /obj/item/tank/internals/oxygen/red
	belt = /obj/item/storage/belt/utility/chief/full
	mask = /obj/item/clothing/mask/gas/syndicate
	shoes = /obj/item/clothing/shoes/magboots/syndie
	gloves = /obj/item/clothing/gloves/combat
	glasses = /obj/item/clothing/glasses/meson/engine
	ears = /obj/item/radio/headset/syndicate
	id = /obj/item/card/id/advanced/chameleon
	l_pocket = /obj/item/flashlight
	r_pocket = /obj/item/knife/combat/survival
	implants = list(/obj/item/implant/weapons_auth)
	box = /obj/item/storage/box/survival/syndie

/datum/outfit/syndicate_derelict_engi/post_equip(mob/living/carbon/human/H)
	H.faction |= ROLE_SYNDICATE
