/**
 * A generic background object. It is also implicitly used to allocate a
 * rectangle on the map, which will be used for auto-scaling the map.
 */
/obj/screen/background
	name = "background"
	icon = 'icons/hud/screen_map.dmi'
	icon_state = "clear"

	layer = BLACKNESS_PLANE
	plane = BLACKNESS_PLANE

/**
 * Sets assigned_map of this screen object, throws `CRASH` if empty
 * 'map_name' was given.
 */
/obj/screen/proc/set_map(map_name)
	if(!map_name)
		CRASH("Can't assign [src]'s 'assigned_map': no 'map_name' was given.")
	assigned_map = map_name

/**
 * Sets screen_loc of this screen object, in form of point coordinates,
 * with optional pixel offset (px, py).
 *
 * If applicable, "assigned_map" has to be assigned before this proc call.
 */
/obj/screen/proc/set_pos(x, y, px = 0, py = 0)
	if(assigned_map)
		screen_loc = "[assigned_map]:[x]:[px],[y]:[py]"
	else
		screen_loc = "[x]:[px],[y]:[py]"

/**
 * Sets screen_loc to fill a rectangular area of the map.
 *
 * If applicable, "assigned_map" has to be assigned before this proc call.
 */
/obj/screen/proc/fill_rect(x1, y1, x2, y2)
	if(assigned_map)
		screen_loc = "[assigned_map]:[x1]:[y1] to [x2]:[y2]"
	else
		screen_loc = "[x1]:[y1] to [x2]:[y2]"

/**
 * Registers screen obj with the client, which makes it visible on the
 * assigned map, and becomes a part of the assigned map's lifecycle.
 */
/client/proc/register_map_obj(obj/screen/screen_obj)
	if(!screen_obj.assigned_map)
		CRASH("Can't register [screen_obj] without 'assigned_map' property.")
	if(!screen_maps[screen_obj.assigned_map])
		screen_maps[screen_obj.assigned_map] = list()
	var/list/screen_map = screen_maps[screen_obj.assigned_map]
	screen_map |= screen_obj
	screen |= screen_obj

/**
 * Clears the map of registered screen objects.
 */
/client/proc/clear_map(map_name)
	if(!map_name || !screen_maps[map_name])
		return FALSE
	for(var/obj/screen/screen_obj in screen_maps[map_name])
		screen_maps[map_name] -= screen_obj
		screen -= screen_obj
		if(screen_obj.del_on_map_removal)
			qdel(screen_obj)
	screen_maps -= map_name

/**
 * Clears all the maps of registered screen objects.
 */
/client/proc/clear_all_maps()
	for(var/map_name in screen_maps)
		clear_map(map_name)
