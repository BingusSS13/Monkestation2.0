GLOBAL_VAR_INIT(disable_ghost_tutorials, FALSE)

//GHOST TUTORIALS TODO LIST
//Add tutorial subtype of humans so I can detect everything they're doing
//Add the actual button to initiate a tutorial
//Add objects and markers to help with tutorials
//May need subtypes of certain items to hook them into the tutorial

/obj/effect/landmark/ghost_tutorial_chamber
	name = "Ghost Tutorial Chamber"
	var/occupied = FALSE

/obj/effect/landmark/ghost_tutorial_chamber/Initialize(mapload)
	. = ..()
	GLOB.ghost_tutorial_chambers += src

/obj/effect/landmark/ghost_tutorial_chamber/Destroy(mapload)
	. = ..()
	GLOB.ghost_tutorial_chambers -= src

/client/proc/flip_ghost_tutorials()
	set category = "Admin.Fun"
	set name = "Toggle Ghost Tutorials Spawning"
	set desc= "Toggles whether dead players can play tutorials."

	if(!check_rights(R_FUN))
		return
	GLOB.disable_ghost_tutorials = !GLOB.disable_ghost_tutorials
