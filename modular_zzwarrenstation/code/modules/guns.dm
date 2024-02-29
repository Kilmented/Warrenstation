// Multiple flavors of GUN.
// Here's the types.
// /obj/item/gun/ballistic/automatic // basically comes down to "a semi and or automatic"
// /obj/item/gun/ballistic/rifle // basically comes down to "hit activate once to eject twice to cock between every shot"
// /obj/item/gun/ballistic/shotgun // basically comes down to "hit activate to cock and eject between every shot"
// /obj/item/gun/ballistic/revolver // basically comes down to "a semi but hit activate to drop the whole cylinder"
// That's all the relevant ones. Enjoy.
// Anyways, here's probably what you were looking for. The order is; Guns, magazines, and -at the very bottom- casings and then projectiles. Take care. - Jaeger

/obj/item/ammo_box/magazine/compactsmg // SMG, standard Common
	name = "10x30mm Common Security SMG magazine"
	icon_state = "smg9mm"
	base_icon_state = "smg9mm"
	ammo_type = /obj/item/ammo_casing/wscompact
	caliber = CALIBER_WSCOMPACT
	max_ammo = 30 // standard is whatever, short is divided by 1.5, extended is multiplied by 1.5
	w_class = WEIGHT_CLASS_SMALL

/obj/item/ammo_box/magazine/compactsmg/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[LAZYLEN(stored_ammo) ? "full" : "empty"]"

/obj/item/ammo_box/magazine/compactsmg/short // short Common
	name = "10x30mm Common Security short SMG magazine"
	max_ammo = 20
	w_class = WEIGHT_CLASS_TINY // one size shorter than default

/obj/item/ammo_box/magazine/compactsmg/hitscan // standard MilTek
	name = "10x30mm MilTek Security SMG magazine"
	ammo_type = /obj/item/ammo_casing/wscompact/hitscan

/obj/item/ammo_box/magazine/compactsmg/hitscan/short // short MilTek
	name = "10x30mm MilTek Security short SMG magazine"
	max_ammo = 20
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/compactsmg/projectile // standard RangR
	name = "10x30mm RangR Security SMG magazine"
	ammo_type = /obj/item/ammo_casing/wscompact/projectile

/obj/item/ammo_box/magazine/compactsmg/projectile/short // short RangR
	name = "10x30mm RangR Security short SMG magazine"
	max_ammo = 20
	w_class = WEIGHT_CLASS_TINY

// LINE SEPERATION FOR CASINGS

/obj/item/ammo_casing/wscompact
	name = "10x30mm Common Security Cartridge casing"
	desc = "A 10x30mm Common Security Cartridge casing."
	caliber = CALIBER_WSCOMPACT
	projectile_type = /obj/projectile/bullet/wscompact

/obj/item/ammo_casing/wscompact/hitscan
	name = "10x30mm MilTek Security Cartridge casing"
	desc = "A 10x30mm Common Security Cartridge casing."
	caliber = CALIBER_WSCOMPACT
	projectile_type = /obj/projectile/bullet/wscompact/hitscan

/obj/item/ammo_casing/wscompact/projectile
	name = "10x30mm RangR Security Cartridge casing"
	desc = "A 10x30mm Common Security Cartridge casing."
	caliber = CALIBER_WSCOMPACT
	projectile_type = /obj/projectile/bullet/wscompact/projectile

// LINE SEPERATION FOR PROJECTILES

/obj/projectile/bullet/wscompact
	name = "10x30mm Common Security bullet"
	damage = 15
	stamina = 16.5 // Required. 1.1x the base damage.
	embedding = list(embed_chance=25, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)

/obj/projectile/bullet/wscompact/hitscan
	name = "10x30mm MilTek Security bullet" // MilTek's gimmick is +hitscan +AP
	armour_penetration = 15 // +15 AP per size.
	hitscan = TRUE
	tracer_type = /obj/effect/projectile/tracer/sniper
	impact_type = /obj/effect/projectile/impact/sniper
	muzzle_type = /obj/effect/projectile/muzzle/sniper
	impact_effect_type = null
	hitscan_light_intensity = 3
	hitscan_light_range = 0.75
	hitscan_light_color_override = LIGHT_COLOR_DIM_YELLOW
	muzzle_flash_intensity = 5
	muzzle_flash_range = 1
	muzzle_flash_color_override = LIGHT_COLOR_DIM_YELLOW
	impact_light_intensity = 5
	impact_light_range = 1
	impact_light_color_override = LIGHT_COLOR_DIM_YELLOW
// Just copy everything from hitscan = true and below, it's p-much the one surefire way to keep things comfy.

/obj/projectile/bullet/wscompact/projectile
	name = "10x30mm RangR Security bullet" // RangR's gimmick is +5 damage + double the embed chance
	damage = 20 // add 5 damage, double the embed chance,
	stamina = 22 // Required. 1.1x the base damage.
	embedding = list(embed_chance=50, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)
