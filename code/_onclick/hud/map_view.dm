/**
 * A screen object, which acts as a container for turfs and other things
 * you want to show on the map, which you usually attach to "vis_contents".
 */
/obj/screen/map_view
	name = "screen"

	layer = BLACKNESS_PLANE
	plane = BLACKNESS_PLANE

	del_on_map_removal = FALSE

	var/list/weakref/viewers = list()

/obj/screen/map_view/Destroy()
	for(var/weakref/client_ref in viewers)
		var/client/mob_client = client_ref.resolve()
		if(!mob_client)
			continue
		hide_from(mob_client)
	return ..()

/obj/screen/map_view/proc/generate_view(map_key)
	set_map(map_key)
	set_pos(1, 1)

/obj/screen/map_view/proc/display_to(mob/show_to)
	show_to?.client.register_map_obj(src)
	viewers |= weakref(show_to.client)

/obj/screen/map_view/proc/hide_from(mob/hide_from)
	hide_from?.client.clear_map(assigned_map)
	viewers -= weakref(hide_from.client)
