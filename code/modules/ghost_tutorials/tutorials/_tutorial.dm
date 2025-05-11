/datum/tutorial
	var/obj/effect/landmark/ghost_tutorial_chamber/chamber //The chamber this tutorial is running in.

	var/client/user //The user of this tutorial.
	var/mob/living/carbon/human/user_mob //The mob created for this user.

	var/template_path //The type path of the template this tutorial uses.

	var/list/steps = list() //List of step datum paths.
	var/datum/tutorial_step/step //current step datum
	var/current_step = 1 //What step are we on?

	var/list/tutorial_objects = list() //List of atoms this tutorial has created, please add any items your tutorial has created to this list.

/datum/tutorial/proc/init_step()
	step = new steps[current_step]()
	step.tutorial = src
	step.init_step()

/datum/tutorial/proc/init_tutorial()
	if(!template_path)
		stack_trace("Tutorial datum [src.type] does not have a template path defined.")
		return FALSE

	var/datum/map_template/tutorial/template = new template_path()

	template.load(chamber.loc)
	tutorial_objects += template.created_atoms

	init_step()

/datum/tutorial/proc/exit_tutorial()
	QDEL_LIST(tutorial_objects)
	qdel(user_mob)

/datum/tutorial/proc/next_step()
	if(step)
		step.cleanup()
		qdel(step)
	if(current_step < length(steps))
		current_step += 1
		init_step()
	else
		//TODO : add logic for ending tutorial

/datum/tutorial_step
	var/datum/tutorial/tutorial //The parent tutorial of this step.

/datum/tutorial_step/proc/init_step()
	//initialize the step

/datum/tutorial_step/proc/process_input(list/input)
	//process whatever the player does

/datum/tutorial_step/proc/cleanup()
	//clean up anything your step does here
