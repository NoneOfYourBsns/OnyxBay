/datum/preferences
	var/flavor_text_human
	var/flavor_text_silicon

/datum/category_item/player_setup_item/general/flavor
	name = "Flavor"
	sort_order = 6

/datum/category_item/player_setup_item/general/flavor/proc/read_legacy_flavor(datum/pref_record_reader/R, prefix = "", list/flavor_keys = list())
	if(!length(flavor_keys))
		return ""

	var/migrated_flavor = ""
	for(var/flavor_key in flavor_keys)
		var/flavor_text = R.read("[prefix][flavor_key]")
		if(isnull(flavor_text))
			continue
		migrated_flavor += "[flavor_text]\n"

	return migrated_flavor

/datum/category_item/player_setup_item/general/flavor/proc/migrate_legacy_flavor(datum/pref_record_reader/R)
	if(R.read("flavor_migrated"))
		return FALSE

	var/list/human_flavor_keys = list("general", "head", "face", "eyes", "torso", "arms", "hands", "legs", "feet")
	pref.flavor_text_human = read_legacy_flavor(R, "flavor_texts_", human_flavor_keys)

	var/list/silicon_flavor_keys = GLOB.robot_module_types | "Default"
	pref.flavor_text_silicon = read_legacy_flavor(R, "flavour_texts_robot_", silicon_flavor_keys)

	return TRUE

/datum/category_item/player_setup_item/general/flavor/load_character(datum/pref_record_reader/R)
	if(migrate_legacy_flavor(R))
		return

	pref.flavor_text_human = R.read("flavor_text_human")
	pref.flavor_text_silicon = R.read("flavor_text_silicon")

/datum/category_item/player_setup_item/general/flavor/save_character(datum/pref_record_writer/W)
	W.write("flavor_migrated", TRUE)
	W.write("flavor_text_human", pref.flavor_text_human)
	W.write("flavor_text_silicon", pref.flavor_text_silicon)

/datum/category_item/player_setup_item/general/flavor/sanitize_character()
	if(!pref.flavor_text_human)
		pref.flavor_text_human = ""
	if(!pref.flavor_text_silicon)
		pref.flavor_text_silicon = ""

/datum/category_item/player_setup_item/general/flavor/content(mob/user)
	. += "<b>Flavor:</b><br>"
	. += "<a href='?src=\ref[src];flavor_text=1'>Set Flavor Text</a><br/>"
	. += "<a href='?src=\ref[src];flavor_text_silicon=1'>Set Robot Flavor Text</a><br/>"

/datum/category_item/player_setup_item/general/flavor/OnTopic(href,list/href_list, mob/user)
	if(href_list["flavor_text"])
		var/new_flavor = sanitize(input(usr, "Set the flavor text for your character.", "Flavor Text", html_decode(pref.flavor_text_human)) as message, extra = 0)
		pref.flavor_text_human = new_flavor
		return TOPIC_HANDLED
	if(href_list["flavor_text_silicon"])
		var/new_flavor = sanitize(input(usr, "Set the flavor text for your robot.", "Flavor Text", html_decode(pref.flavor_text_silicon)) as message, extra = 0)
		pref.flavor_text_silicon = new_flavor
		return TOPIC_HANDLED
	return ..()
