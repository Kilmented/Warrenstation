// Multiple flavors of GUN.
// Here's the types.
// /obj/item/gun/ballistic/automatic // basically comes down to "a semi and or automatic"
// /obj/item/gun/ballistic/rifle // basically comes down to "hit activate once to eject twice to cock between every shot"
// /obj/item/gun/ballistic/shotgun // basically comes down to "hit activate to cock and eject between every shot"
// /obj/item/gun/ballistic/revolver // basically comes down to "a semi but hit activate to drop the whole cylinder"
// That's all the relevant ones. Enjoy.
// Anyways, here's probably what you were looking for. The order is; Guns, magazines, and -at the very bottom- casings and then projectiles. Take care. - Jaeger

/obj/item/ammo_box/magazine/compactpistol
	name = "10 round 10x30mm Security pistol magazine"
	icon_state = "45-8"
	base_icon_state = "45"
	ammo_type = /obj/item/ammo_casing/wscompact
	caliber = CALIBER_WSCOMPACT
	max_ammo = 10
	multiple_sprites = AMMO_BOX_PER_BULLET
	multiple_sprite_use_base = TRUE
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/compactpistol/extended
	name = "15 round 10x30mm Security pistol magazine"
	icon_state = "45-8"
	base_icon_state = "45"
	max_ammo = 15
	w_class = WEIGHT_CLASS_SMALL

/obj/item/ammo_box/magazine/internal/compactrevolver
	name = "8 round 10x30mm Security cylinder"
	max_ammo = 8
	caliber = CALIBER_WSCOMPACT

/obj/item/ammo_box/magazine/compactsmg // SMG, standard Common
	name = "30 round 10x30mm Security SMG magazine"
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
	name = "20 round 10x30mm Security SMG magazine"
	max_ammo = 20
	w_class = WEIGHT_CLASS_TINY // one size shorter than default

/obj/item/ammo_box/magazine/internal/mediumrevolver
	name = "6 round 5.56x45mm Gothic cylinder"
	caliber = CALIBER_WSMEDIUM
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/mediumboltrifle
	name = "5 round 5.56x45mm Gothic internal magazine"
	caliber = CALIBER_WSMEDIUM
	max_ammo = 5 // can easily fit more but it's just the galactic standard for hunting

/obj/item/ammo_box/magazine/internal/mediumboltrifle/extended
	name = "15 round 5.56x45mm Gothic internal magazine"
	max_ammo = 15 // told you. this is often offworld militia issue

/obj/item/ammo_box/magazine/mediumcarbine
	name = "30 round 5.56x45mm Gothic carbine magazine"
	icon_state = ".223"
	ammo_type = /obj/item/ammo_casing/wsmedium
	caliber = CALIBER_WSMEDIUM
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY

/obj/item/ammo_box/magazine/mediumcarbine/short
	name = "20 round 5.56x45mm Gothic carbine magazine"
	icon_state = ".223"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	w_class = WEIGHT_CLASS_TINY

/obj/item/ammo_box/magazine/internal/longrevolver
	name = "4 round 8.6x70mm Magnum cylinder"
	caliber = CALIBER_WSLONG
	max_ammo = 4

/obj/item/ammo_box/magazine/internal/longboltrifle
	name = "5 round 8.6x70mm Magnum internal magazine"
	caliber = CALIBER_WSLONG
	max_ammo = 5

/obj/item/ammo_box/magazine/internal/longboltrifle/extended
	name = "10 round 8.6x70mm Magnum internal magazine"
	max_ammo = 8

/obj/item/ammo_box/magazine/longrifle
	name = "10 round 8.6x70mm Magnum internal magazine"
	icon_state = ".50mag"
	base_icon_state = ".50mag"
	ammo_type = /obj/item/ammo_casing/wslong
	max_ammo = 6
	caliber = CALIBER_WSLONG

/obj/item/ammo_box/magazine/longrifle/extended
	name = "10 round 8.6x70mm Magnum internal magazine"
	icon_state = ".50mag"
	base_icon_state = ".50mag"
	ammo_type = /obj/item/ammo_casing/wslong
	max_ammo = 8 // really not much more of an improvement but is parity with the internal version.

/obj/item/ammo_box/magazine/internal/shotgun
	name = "5 round 12 Gauge tube"
	max_ammo = 5
	caliber = CALIBER_WSSHOTGUN

/obj/item/ammo_box/magazine/internal/shotgun/six
	name = "6 round 12 Gauge tube"
	max_ammo = 6

/obj/item/ammo_box/magazine/internal/shotgun/eight
	name = "8 round 12 Gauge tube"
	max_ammo = 8

/obj/item/ammo_box/magazine/internal/shotgun/two
	name = "2 round 12 Gauge breech"
	max_ammo = 2

/obj/item/ammo_box/magazine/internal/shotgun/one
	name = "1 round 12 Gauge breech"
	max_ammo = 1

/obj/item/ammo_box/magazine/internal/grenade
	name = "1 round 40x46mm Grenade Launcher breech"
	max_ammo = 1
	caliber = CALIBER_WSGRENADE

/obj/item/ammo_box/magazine/internal/grenade/eight
	name = "8 round 40x46mm Grenade Launcher cylinder"
	max_ammo = 8

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

/obj/item/ammo_casing/wsmedium
	name = "5.56x45mm Common Cartridge casing"
	desc = "A 5.56x45mm Common Cartridge casing."
	caliber = CALIBER_WSMEDIUM
	projectile_type = /obj/projectile/bullet/wsmedium

/obj/item/ammo_casing/wsmedium/hitscan
	name = "5.56x45mm MilTek Cartridge casing"
	desc = "A 5.56x45mm MilTek Cartridge casing."
	caliber = CALIBER_WSMEDIUM
	projectile_type = /obj/projectile/bullet/wsmedium/hitscan

/obj/item/ammo_casing/wsmedium/projectile
	name = "5.56x45mm RangR Cartridge casing"
	desc = "A 5.56x45mm RangR Cartridge casing."
	caliber = CALIBER_WSMEDIUM
	projectile_type = /obj/projectile/bullet/wsmedium/projectile

/obj/item/ammo_casing/wslong
	name = "8.6x70mm Common Magnum Cartridge casing"
	desc = "A 8.6x70mm Common Magnum Cartridge casing."
	caliber = CALIBER_WSLONG
	projectile_type = /obj/projectile/bullet/wslong

/obj/item/ammo_casing/wslong/hitscan
	name = "8.6x70mm MilTek Magnum Cartridge casing"
	desc = "A 8.6x70mm MilTek Magnum Cartridge casing."
	caliber = CALIBER_WSLONG
	projectile_type = /obj/projectile/bullet/wslong/hitscan

/obj/item/ammo_casing/wslong/projectile
	name = "8.6x70mm RangR Magnum Cartridge casing"
	desc = "A 8.6x70mm RangR Magnum Cartridge casing."
	caliber = CALIBER_WSLONG
	projectile_type = /obj/projectile/bullet/wslong/projectile

/obj/item/ammo_casing/wsshotgun
	name = "12 gauge Common Buckshot Cartridge"
	desc = "A 12 Gauge Common Buckshot cartridge."
	icon_state = "rshell"
	projectile_type = /obj/projectile/bullet/wsshotgun
	pellets = 4
	variance = 20
	custom_materials = list(/datum/material/iron=SHEET_MATERIAL_AMOUNT*2)

/obj/item/ammo_casing/wsshotgun/rubber
	name = "12 gauge Common Rubbershot Cartridge"
	desc = "A 12 Gauge Common Rubbershot cartridge."
	icon_state = "rshell"
	projectile_type = /obj/projectile/bullet/wsshotgun/rubber
	pellets = 4
	variance = 20
	harmful = FALSE

/obj/item/ammo_casing/wsshotgun/hitscan
	name = "12 gauge MilTek Slug Cartridge"
	desc = "A 12 Gauge MilTek Slug cartridge."
	icon_state = "rshell"
	projectile_type = /obj/projectile/bullet/wsshotgun/hitscan
	pellets = 1
	variance = 0

/obj/item/ammo_casing/wsshotgun/projectile
	name = "12 gauge RangR Flechette Cartridge"
	desc = "A 12 Gauge RangR Flechette Cartridge."
	icon_state = "rshell"
	projectile_type = /obj/projectile/bullet/wsshotgun/projectile
	pellets = 3
	variance = 10

/obj/item/ammo_casing/wsgrenade/common
	name = "40x46mm Common Grenade Launcher HE Cartridge"
	desc = "A cased high explosive grenade that self activates upon being fired out of a launcher."
	caliber = CALIBER_WSGRENADE
	icon_state = "40mmHE"
	projectile_type = /obj/projectile/bullet/wsgrenade/common

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
	impact_light_color_override = LIGHT_COLOR_DIM_YELLOW // Just copy everything from hitscan = true and below, it's p-much the one surefire way to keep things comfy.

/obj/projectile/bullet/wscompact/projectile
	name = "10x30mm RangR Security bullet" // RangR's gimmick is +5 damage + double the embed chance
	damage = 20 // add 5 damage, double the embed chance,
	stamina = 22 // Required. 1.1x the base damage.
	embedding = list(embed_chance=50, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)

/obj/projectile/bullet/wsmedium
	name = "5.56x45mm Common Security bullet"
	damage = 30
	stamina = 33 // Required. 1.1x the base damage.
	embedding = list(embed_chance=30, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)

/obj/projectile/bullet/wsmedium/hitscan
	name = "5.56x45mm MilTek bullet" // MilTek's gimmick is +hitscan +AP
	armour_penetration = 30 // +15 AP per size.
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

/obj/projectile/bullet/wsmedium/projectile
	name = "5.56x45mm RangR bullet"
	damage = 35
	stamina = 38.5
	embedding = list(embed_chance=60, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)

/obj/projectile/bullet/wslong
	name = "8.6x70mm Common Magnum bullet"
	damage = 45
	stamina = 49.5
	embedding = list(embed_chance=35, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)

/obj/projectile/bullet/wslong/hitscan
	name = "8.6x70mm MilTek Magnum bullet" // MilTek's gimmick is +hitscan +AP
	armour_penetration = 45 // +15 AP per size.
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

/obj/projectile/bullet/wslong/projectile
	name = "8.6x70mm RangR Magnum bullet"
	damage = 50
	stamina = 55
	embedding = list(embed_chance=70, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)

/obj/projectile/bullet/wsshotgun
	name = "12 Gauge Common Buckshot pellet"
	damage = 10
	stamina = 11
	wound_bonus = 5
	bare_wound_bonus = 5
	wound_falloff_tile = -2.5 // low damage + additional dropoff will already curb wounding potential anything past point blank
	embedding = null

/obj/projectile/bullet/wsshotgun/rubber
	name = "12 Gauge Common Rubbershot ball"
	damage = 0
	stamina = 20
	speed = 1.5
	sharpness = NONE
	embedding = null
	wound_bonus = 0
	bare_wound_bonus = 0

/obj/projectile/bullet/wsshotgun/hitscan
	name = "12 Gauge MilTek Slug"
	damage = 45
	stamina = 49.5
	wound_bonus = 5
	bare_wound_bonus = 10
	embedding = list(embed_chance=30, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)
	wound_falloff_tile = 0

/obj/projectile/bullet/wsshotgun/projectile
	name = "12 Gauge RangR Flechette"
	damage = 20
	stamina = 22
	wound_bonus = 5
	bare_wound_bonus = 20
	weak_against_armour = TRUE
	embedding = list(embed_chance=50, fall_chance=3, jostle_chance=4, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=5, jostle_pain_mult=6, rip_time=10)
	wound_falloff_tile = 0

/obj/projectile/bullet/wsgrenade/common
	name ="40x46mm Common Grenade Launcher HE Cartridge charge"
	desc = "HOLY SHIT!"
	icon_state= "bolter"
	damage = 80
	embedding = null
	shrapnel_type = null

/obj/projectile/bullet/wsgrenade/common/on_hit(atom/target, blocked = 0, pierce_hit)
	..()
	explosion(target, devastation_range = -1, light_impact_range = 2, flame_range = 3, flash_range = 1, adminlog = FALSE, explosion_cause = src)
	return BULLET_ACT_HIT
