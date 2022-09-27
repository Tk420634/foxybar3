/mob/living/simple_animal/hostile/megafauna/behemoth
	name = "supermutant behemoth"
	desc = "A super mutant who has grown to an incredible size, it's skin is pulled tight! This one wields two lamposts that have had car doors tied to the ends creating deadly axes."
	icon = 'icons/fallout/mobs/behemoth.dmi'
	icon_state = "behemoth_axe"
	icon_living = "behemoth_axe"
	icon_dead = "behemoth_dead"

	health = 2000 //used to be 3000
	maxHealth = 2000 //used to be 3000
	guaranteed_butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/slab = 10, /obj/item/stack/sheet/bone = 6)
	loot = list(/obj/item/card/id/dogtag/enclave/noncombatant, /obj/item/stack/f13Cash/random/med) //THIS IS FOR DUNGEON ACCESS STUFF: CHANGE IF NEEDED
	armour_penetration = 0.5 //0.7 was too high in testing, since if it managed to zerg speed you into a wall; this would immediately kill you afterwards. Regardless.
	melee_damage_lower = 50
	melee_damage_upper = 70
	vision_range = 9
	aggro_vision_range = 18
	speed = 8
	move_to_delay = 8
	melee_queue_distance = 20 // as far as possible really, need this because of charging
	ranged = TRUE
	stat_attack = CONSCIOUS
	pixel_x = -16
	wander = FALSE
	movement_type = GROUND
	blood_volume = BLOOD_VOLUME_NORMAL
	deathmessage = "falls, shaking the ground around it."
	deathsound = 'sound/effects/gravhit.ogg'
	attack_verb_continuous = "slams"
	attack_verb_simple = "slams"
	attack_sound = 'sound/magic/demon_attack1.ogg'
	weather_immunities = list("snow")
	speak_emote = list("roars")
	attack_action_types = list(/datum/action/innate/megafauna_attack/heavy_stomp,
							   /datum/action/innate/megafauna_attack/disorienting_scream)
	/// Saves the turf the megafauna was created at (spawns exit portal here)
	var/turf/starting
	/// Range for behemoth stomping when it moves
	var/stomp_range = 0 //ALLOW THEM TO APPROACH BEFORE PHASE 2 FFS OMAIGAWD
	/// Stores directions the mob is moving, then calls that a move has fully ended when these directions are removed in moved
	var/stored_move_dirs = 0
	/// If the behemoth is allowed to move
	var/can_move = TRUE
	var/stomp_cooldown = 150 // WOW WHO WOULD HAVE THOUGHT?

/datum/action/innate/megafauna_attack/heavy_stomp
	name = "Heavy Stomp"
	icon_icon = 'icons/mob/actions/actions_items.dmi'
	button_icon_state = "sniper_zoom"
	chosen_message = span_colossus("You are now stomping the ground around you.")
	chosen_attack_num = 1

/datum/action/innate/megafauna_attack/disorienting_scream
	name = "Disorienting Scream"
	icon_icon = 'icons/turf/walls/wall.dmi'
	button_icon_state = "wall"
	chosen_message = span_colossus("You are now screeching, disorienting targets around you.")
	chosen_attack_num = 3

/mob/living/simple_animal/hostile/megafauna/behemoth/Initialize()
	. = ..()
	starting = get_turf(src)

/mob/living/simple_animal/hostile/megafauna/behemoth/OpenFire()
	SetRecoveryTime(0, 100)
	if(health <= maxHealth*0.5)
		stomp_range = 1 //Please do not make a 4x4 death zone that goes through walls whenever it walks... Which it does... Very quickly.
		speed = 2
		move_to_delay = 2
	else
		stomp_range = initial(stomp_range)
		speed = initial(speed)
		move_to_delay = initial(move_to_delay)

	if(client)
		switch(chosen_attack)
			if(1)
				if(world.time >= stomp_cooldown)
					stomp_cooldown = world.time + 170 // 170 ticks between each stomp
					heavy_stomp()
				else
					return
			if(2)
				disorienting_scream()
		return

	chosen_attack = rand(1, 2)
	switch(chosen_attack)
		if(1)
			if(world.time >= stomp_cooldown)
				stomp_cooldown = world.time + 170 // 170 ticks between each stomp
				heavy_stomp()
			else
				return
		if(2)
			disorienting_scream()

/mob/living/simple_animal/hostile/megafauna/behemoth/Move(atom/newloc, direct)
	if(!can_move)
		return
	stored_move_dirs |= direct
	return ..()

/mob/living/simple_animal/hostile/megafauna/behemoth/Moved(atom/oldloc, direct)
	. = ..()
	stored_move_dirs &= ~direct
	if(!stored_move_dirs)
		INVOKE_ASYNC(src, .proc/ground_slam, stomp_range, 1, FALSE)

/// Slams the ground around the behemoth throwing back enemies caught nearby
/mob/living/simple_animal/hostile/megafauna/behemoth/proc/ground_slam(range, delay, do_damage)
	var/turf/orgin = get_turf(src)
	var/list/all_turfs = RANGE_TURFS(range, orgin)
	for(var/i = 0 to range)
		for(var/turf/T in all_turfs)
			if(get_dist(orgin, T) > i)
				continue
			playsound(T,'sound/effects/bamf.ogg', 600, TRUE, 10)
			new /obj/effect/temp_visual/small_smoke/halfsecond(T)
			for(var/mob/living/L in T)
				var/obj/item/bodypart/affecting = L.get_bodypart(BODY_ZONE_CHEST)
				var/armor_block = L.run_armor_check(affecting, "melee")
				if(L == src || L.throwing)
					continue
				to_chat(L, span_userdanger("[src]'s ground slam shockwave sends you flying!"))
				var/turf/thrownat = get_ranged_target_turf_direct(src, L, 8, rand(-10, 10))
				L.throw_at(thrownat, 4, 1, src, TRUE)		//, force = MOVE_FORCE_OVERPOWERING, gentle = TRUE)
				if(do_damage)
					L.apply_damage(30, BRUTE, BODY_ZONE_CHEST, armor_block, wound_bonus = CANT_WOUND) //If you're going to stealthbuff something, remove my code comment from it. Thank you. Do NOT raise this above 30 without reducing its attack damage, or normal players will get 1 shot.
				shake_camera(L, 2, 1)
			all_turfs -= T
		sleep(delay)


/// Larger but slower ground stomp
/mob/living/simple_animal/hostile/megafauna/behemoth/proc/heavy_stomp()
	can_move = FALSE
	ground_slam(5, 2, TRUE)
	SetRecoveryTime(0, 0)
	can_move = TRUE


/// Shakes all nearby enemies screens and animates the behemoth shaking up and down
/mob/living/simple_animal/hostile/megafauna/behemoth/proc/disorienting_scream()
	can_move = FALSE
	playsound(src, 'sound/magic/demon_dies.ogg', 600, FALSE, 10)
	animate(src, pixel_z = rand(5, 15), time = 1, loop = 6)
	animate(pixel_z = 0, time = 1)
	for(var/mob/living/L in get_hearers_in_view(7, src) - src)
		shake_camera(L, 30, 1)
		to_chat(L, span_danger("The behemoth screams loudly!"))
	SetRecoveryTime(30, 0)
	SLEEP_CHECK_DEATH(12)
	can_move = TRUE
	return
