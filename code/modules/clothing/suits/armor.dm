
/obj/item/clothing/suit/armor
	allowed = list(
		/obj/item/gun/energy,
		/obj/item/device/radio,
		/obj/item/device/flashlight,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/gun/projectile,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/melee/baton,
		/obj/item/handcuffs,
		/obj/item/gun/magnetic,
		/obj/item/grenade,
		/obj/item/gun/launcher/grenade,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/mask/gas
		)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	item_flags = ITEM_FLAG_THICKMATERIAL

	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/vest
	name = "armor"
	desc = "An armored vest that protects against some damage."
	icon_state = "onyxvest"
	//item_state = "armor"
	blood_overlay_type = "armorblood"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	heat_protection = UPPER_TORSO|LOWER_TORSO
	armor_type = /datum/armor/vest
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)

/datum/armor/vest
	bomb = 25
	bullet = 40
	energy = 15
	laser = 40
	melee = 40

/obj/item/clothing/suit/armor/vest/detective
	name = "detective armor"
	desc = "An armored vest with a detective's badge on it."
	icon_state = "detective-armor"

/obj/item/clothing/suit/armor/vest/warden
	name = "warden's jacket"
	desc = "An armoured jacket with silver rank pips and livery."
	icon_state = "warden_jacket"
	armor_type = /datum/armor/vest_warden
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS

/datum/armor/vest_warden
	bio = 10
	bomb = 40
	bullet = 50
	energy = 25
	laser = 50
	melee = 50

/obj/item/clothing/suit/armor/vest/warden_heavy
	name = "warden's armoured vest"
	desc = "An upgraded version of a regular bulletproof vest, featuring custom shoulder pads and silver rank livery."
	icon_state = "warden_heavy"
	armor_type = vest_wardenheavy
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS

/datum/armor/vest_wardenheavy
	bio = 10
	bomb = 40
	bullet = 55
	energy = 25
	laser = 55
	melee = 55

/obj/item/clothing/suit/armor/vest/hos_heavy
	name = "commander's armoured vest"
	desc = "A custom-made, expensive bulletproof vest with golden rank livery."
	icon_state = "hos_heavy"
	armor_type = /datum/armor/vest_hosheavy
	body_parts_covered = UPPER_TORSO|LOWER_TORSO

/datum/armor/vest_hosheavy
	bio = 20
	bomb = 55
	bullet = 65
	energy = 35
	laser = 65
	melee = 65

/obj/item/clothing/suit/armor/hos
	name = "armored coat"
	desc = "A greatcoat enhanced with a special alloy for some protection and style."
	icon_state = "hos"
	item_state = "hos"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor_type = /datum/armor/armor_hos
	flags_inv = HIDEJUMPSUIT
	siemens_coefficient = 0.6

/datum/armor/armor_hos
	bio = 20
	bomb = 55
	bullet = 65
	energy = 35
	laser = 65
	melee = 65

/obj/item/clothing/suit/armor/hos/jensen
	name = "armored trenchcoat"
	desc = "A trenchcoat augmented with a special alloy for some protection and style."
	icon_state = "hostrench"
	item_state = "hostrench"
	flags_inv = 0

/obj/item/clothing/suit/armor/vest/capcarapace
	name = "captain's carapace"
	desc = "An extremely expensive piece of exclusive, hand-crafted corporate armor. YOU are in charge!"
	icon_state = "capcarapace"
	armor_type = /datum/armor/vest_capcarapace
	allowed = list(
		/obj/item/gun,
		/obj/item/device/flashlight,
		/obj/item/device/radio,
		/obj/item/tank,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/melee/whip/chainofcommand,
		/obj/item/melee/baton,
		/obj/item/handcuffs,
		/obj/item/disk/nuclear,
		/obj/item/grenade,
		)
	siemens_coefficient = 0.5

/datum/armor/vest_capcarapace
	bio = 20
	bomb = 55
	bullet = 70
	energy = 35
	laser = 70
	melee = 85

//Non-hardsuit ERT armor.
//Commander
/obj/item/clothing/suit/armor/vest/ert
	name = "ERT commander armor"
	desc = "A set of armor worn by Nanotrasen's elite Emergency Response Teams. Has blue highlights."
	icon_state = "ertarmor_cmd"
	item_state = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor_type = /datum/armor/vest_ert

/datum/armor/vest_ert
	bomb = 20
	bullet = 65
	energy = 40
	laser = 65
	melee = 65

//Security
/obj/item/clothing/suit/armor/vest/ert/security
	name = "ERT security armor"
	desc = "A set of armor worn by NanoTrasen's elite Emergency Response Teams. Has red highlights."
	icon_state = "ertarmor_sec"

//Engineer
/obj/item/clothing/suit/armor/vest/ert/engineer
	name = "ERT engineering armor"
	desc = "A set of armor worn by NanoTrasen's elite Emergency Response Teams. Has orange highlights."
	icon_state = "ertarmor_eng"

//Medical
/obj/item/clothing/suit/armor/vest/ert/medical
	name = "ERT medical armor"
	desc = "A set of armor worn by NanoTrasen's elite Emergency Response Teams. Has red and white highlights."
	icon_state = "ertarmor_med"

//Modular specialty armor
/obj/item/clothing/suit/armor/riot
	name = "riot vest"
	desc = "An armored vest with heavy padding to protect against melee attacks."
	icon = 'icons/obj/clothing/modular_armor.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand.dmi'
		)
	icon_state = "riot_vest"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor_type = /datum/armor/armor_riot
	siemens_coefficient = 0.5
	starting_accessories = list(/obj/item/clothing/accessory/armguards/riot, /obj/item/clothing/accessory/legguards/riot)

/datum/armor/armor_riot
	bomb = 25
	bullet = 25
	energy = 15
	laser = 35
	melee = 80

/obj/item/clothing/suit/armor/bulletproof
	name = "ballistic vest"
	desc = "An armored vest with heavy plates to protect against ballistic projectiles."
	icon = 'icons/obj/clothing/modular_armor.dmi'
	icon_state = "ballistic"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor_type = /datum/armor/armor_bulletproof
	siemens_coefficient = 0.7
	starting_accessories = list(/obj/item/clothing/accessory/armguards/ballistic, /obj/item/clothing/accessory/legguards/ballistic)

/datum/armor/armor_bulletproof
	bomb = 25
	bullet = 85
	energy = 15
	laser = 35
	melee = 85

/obj/item/clothing/suit/armor/bulletproof/vest //because apparently some map uses this somewhere and I'm too lazy to go looking for and replacing it.
	starting_accessories = null

/obj/item/clothing/suit/armor/laserproof
	name = "ablative vest"
	desc = "An armored vest with advanced shielding to protect against energy weapons."
	icon = 'icons/obj/clothing/modular_armor.dmi'
	icon_state = "ablative"
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L)
	restricted_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA, ACCESSORY_SLOT_ARMOR_A, ACCESSORY_SLOT_ARMOR_L)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor_type = /datum/armor/armor_laserproof
	siemens_coefficient = 0
	starting_accessories = list(/obj/item/clothing/accessory/armguards/ablative, /obj/item/clothing/accessory/legguards/ablative)

/datum/armor/armor_laserproof
	bullet = 35
	energy = 60
	laser = 85
	melee = 25

/obj/item/clothing/suit/armor/laserproof/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(istype(damage_source, /obj/item/projectile/energy) || istype(damage_source, /obj/item/projectile/beam))
		var/obj/item/projectile/P = damage_source

		var/reflectchance = 40 - round(damage/3)
		if(!(def_zone in list(BP_CHEST, BP_GROIN))) //not changing this so arm and leg shots reflect, gives some incentive to not aim center-mass
			reflectchance /= 2
		if(P.starting && prob(reflectchance))
			visible_message("<span class='danger'>\The [user]'s [src.name] reflects [attack_text]!</span>")

			// Find a turf near or on the original location to bounce to
			var/new_x = P.starting.x + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/new_y = P.starting.y + pick(0, 0, 0, 0, 0, -1, 1, -2, 2)
			var/turf/curloc = get_turf(user)

			// redirect the projectile
			P.redirect(new_x, new_y, curloc, user)

			return PROJECTILE_CONTINUE // complete projectile permutation

//Reactive armor
//When the wearer gets hit, this armor will teleport the user a short distance away (to safety or to more danger, no one knows. That's the fun of it!)
/obj/item/clothing/suit/armor/reactive
	name = "reactive teleport armor"
	desc = "Someone separated our Research Director from their own head!"
	var/active = 0.0
	icon_state = "reactiveoff"
	item_state = "reactiveoff"
	blood_overlay_type = "armorblood"

/obj/item/clothing/suit/armor/reactive/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 1

/obj/item/clothing/suit/armor/reactive/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(prob(50))
		user.visible_message("<span class='danger'>The reactive teleport system flings [user] clear of the attack!</span>")
		var/list/turfs = new /list()
		for(var/turf/T in orange(6, user))
			if(istype(T,/turf/space)) continue
			if(T.density) continue
			if(T.x>world.maxx-6 || T.x<6)	continue
			if(T.y>world.maxy-6 || T.y<6)	continue
			turfs += T
		if(!turfs.len) turfs += pick(/turf in orange(6))
		var/turf/picked = pick(turfs)
		if(!isturf(picked)) return

		var/datum/effect/effect/system/spark_spread/spark_system = new /datum/effect/effect/system/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, SFX_SPARK, 50, 1)

		user.loc = picked
		return PROJECTILE_FORCE_MISS
	return 0

/obj/item/clothing/suit/armor/reactive/attack_self(mob/user as mob)
	src.active = !( src.active )
	if(src.active)
		to_chat(user, "<span class='notice'>The reactive armor is now active.</span>")
		src.icon_state = "reactive"
		src.item_state = "reactive"
	else
		to_chat(user, "<span class='notice'>The reactive armor is now inactive.</span>")
		src.icon_state = "reactiveoff"
		src.item_state = "reactiveoff"
		src.add_fingerprint(user)
	return

/obj/item/clothing/suit/armor/reactive/emp_act(severity)
	active = 0
	src.icon_state = "reactiveoff"
	src.item_state = "reactiveoff"
	..()

//All of the armor below is mostly unused
/obj/item/clothing/suit/armor/swat // Adminspawn armor for total annihilation
	name = "\improper SWAT armor"
	desc = "An extremely armored suit often used by highly trained SWAT Members."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = ITEM_SIZE_HUGE//bulky item
	gas_transfer_coefficient = 0.90
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)
	siemens_coefficient = 0
	armor_type = /datum/armor/armor_swat

/datum/armor/armor_swat
	bomb = 90
	bullet = 90
	energy = 55
	laser = 90
	melee = 90

/obj/item/clothing/suit/armor/swat/officer
	name = "officer jacket"
	desc = "An armored jacket used in special operations."
	icon_state = "detective"
	//item_state = "det_suit"
	blood_overlay_type = "coatblood"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)
	armor_type = /datum/armor/armor_officer
	flags_inv = 0

/datum/armor/armor_officer
	bomb = 25
	bullet = 75
	energy = 10
	laser = 42
	melee = 42

/obj/item/clothing/suit/armor/heavy // A more balanced version of SWAT armor
	name = "heavy armor"
	desc = "A heavily armored suit that protects against moderate damage."
	icon_state = "heavy"
	item_state = "swat_suit"
	w_class = ITEM_SIZE_HUGE//bulky item
	gas_transfer_coefficient = 0.90
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	siemens_coefficient = 0
	armor_type = /datum/armor/armor_heavy

/datum/armor/armor_heavy
	bomb = 50
	bullet = 76
	energy = 50
	laser = 75
	melee = 75

/obj/item/clothing/suit/armor/heavy/New()
	..()
	slowdown_per_slot[slot_wear_suit] = 3

/obj/item/clothing/suit/armor/tdome
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT

/obj/item/clothing/suit/armor/tdome/red
	name = "thunderdome suit (red)"
	desc = "Reddish armor."
	icon_state = "tdred"
	item_state = "tdred"
	siemens_coefficient = 1

/obj/item/clothing/suit/armor/tdome/green
	name = "thunderdome suit (green)"
	desc = "Pukish armor."
	icon_state = "tdgreen"
	item_state = "tdgreen"
	siemens_coefficient = 1
