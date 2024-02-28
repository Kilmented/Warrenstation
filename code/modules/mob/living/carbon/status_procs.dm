//Here are the procs used to modify status effects of a mob.
//The effects include: stun, knockdown, unconscious, sleeping, resting


/mob/living/carbon/IsParalyzed(include_stamcrit = TRUE)
	return ..() || (include_stamcrit && HAS_TRAIT_FROM(src, TRAIT_INCAPACITATED, STAMINA))

/mob/living/carbon/proc/enter_stamcrit()
	if(HAS_TRAIT_FROM(src, TRAIT_INCAPACITATED, STAMINA)) //Already in stamcrit
		return
	if(check_stun_immunity(CANKNOCKDOWN))
		return
//Warrenstation change: Adds collapse when you enter stamcrit for the first time. Applies a 4 second paralyze if you don't have baton resistance.
if(!HAS_TRAIT(src,TRAIT_BATON_RESISTANCE))
		src.emote("collapse")
//End of bubberstation change.
	to_chat(src, span_notice("You're too exhausted to keep going..."))
	add_traits(list(TRAIT_INCAPACITATED, TRAIT_HANDS_BLOCKED, TRAIT_FLOORED), STAMINA) 	//Warrenstation Change, removes TRAIT_IMMOBILIZED, but adds TRAIT_HANDS_BLOCKED. You can still move around in stamcrit. bit you can't use items.
	if(getStaminaLoss() < 140) // at one point this was 162 but I reduced it because it was a skyrat-ism - Jaeger
		adjustStaminaLoss(30, FALSE)

/mob/living/carbon/adjust_disgust(amount, max = DISGUST_LEVEL_MAXEDOUT)
	disgust = clamp(disgust + amount, 0, max)

/mob/living/carbon/set_disgust(amount)
	disgust = clamp(amount, 0, DISGUST_LEVEL_MAXEDOUT)


////////////////////////////////////////TRAUMAS/////////////////////////////////////////

/mob/living/carbon/proc/get_traumas()
	. = list()
	var/obj/item/organ/internal/brain/B = get_organ_slot(ORGAN_SLOT_BRAIN)
	if(B)
		. = B.traumas

/mob/living/carbon/proc/has_trauma_type(brain_trauma_type, resilience)
	var/obj/item/organ/internal/brain/B = get_organ_slot(ORGAN_SLOT_BRAIN)
	if(B)
		. = B.has_trauma_type(brain_trauma_type, resilience)

/mob/living/carbon/proc/gain_trauma(datum/brain_trauma/trauma, resilience, ...)
	var/obj/item/organ/internal/brain/B = get_organ_slot(ORGAN_SLOT_BRAIN)
	if(B)
		var/list/arguments = list()
		if(args.len > 2)
			arguments = args.Copy(3)
		. = B.brain_gain_trauma(trauma, resilience, arguments)

/mob/living/carbon/proc/gain_trauma_type(brain_trauma_type = /datum/brain_trauma, resilience)
	var/obj/item/organ/internal/brain/B = get_organ_slot(ORGAN_SLOT_BRAIN)
	if(B)
		. = B.gain_trauma_type(brain_trauma_type, resilience)

/mob/living/carbon/proc/cure_trauma_type(brain_trauma_type = /datum/brain_trauma, resilience)
	var/obj/item/organ/internal/brain/B = get_organ_slot(ORGAN_SLOT_BRAIN)
	if(B)
		. = B.cure_trauma_type(brain_trauma_type, resilience)

/mob/living/carbon/proc/cure_all_traumas(resilience)
	var/obj/item/organ/internal/brain/B = get_organ_slot(ORGAN_SLOT_BRAIN)
	if(B)
		. = B.cure_all_traumas(resilience)
