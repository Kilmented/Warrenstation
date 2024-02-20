/*
*	LOADOUT ITEM DATUMS FOR THE BELT SLOT
*/

/// Belt Slot Items (Moves overrided items to backpack)
GLOBAL_LIST_INIT(loadout_belts, generate_loadout_items(/datum/loadout_item/belts))

/datum/loadout_item/belts
	category = LOADOUT_ITEM_BELT

/datum/loadout_item/belts/pre_equip_item(datum/outfit/outfit, datum/outfit/outfit_important_for_life, mob/living/carbon/human/equipper, visuals_only = FALSE)  // don't bother storing in backpack, can't fit
	if(initial(outfit_important_for_life.belt))
		return TRUE

/datum/loadout_item/belts/insert_path_into_outfit(datum/outfit/outfit, mob/living/carbon/human/equipper, visuals_only = FALSE, override_items = LOADOUT_OVERRIDE_BACKPACK)
	if(override_items == LOADOUT_OVERRIDE_BACKPACK && !visuals_only)
		if(outfit.belt)
			LAZYADD(outfit.backpack_contents, outfit.belt)
		outfit.belt = item_path
	else
		outfit.belt = item_path

/datum/loadout_item/belts/trinket_belt
	name = "Trinket Belt"
	item_path = /obj/item/storage/belt/fannypack/occult

/datum/loadout_item/belts/lantern
	name = "Lantern"
	item_path = /obj/item/flashlight/lantern

/datum/loadout_item/belts/candle_box
	name = "Candle Box"
	item_path = /obj/item/storage/fancy/candle_box
