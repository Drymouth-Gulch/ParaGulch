var/global/datum/controller/process/sun/sun

/datum/controller/process/sun
	//var/list/solars	= list()		// for debugging purposes, references solars list at the constructor
	//var/start_x_col = 1 //next x column to calculate sunlight for (makes it look gradual, and helps with process queuing
	//var/fin_x_col = 3
	//var/xgroup = 3 //how many x columns to do each time
	var/sunz = 1 //z coord where times of day are changing
	var/current_time_of_day = "Day"
	var/is_working = 0
	var/is_apply_sunlight = 0
	var/change_rate = 18000
	var/global_sun_light = 10
	var/next_change = 0
	var/max_sun = 10
	var/min_sun = 0.3
	var/curx
	var/dif = 0
	var/angle
	var/dx
	var/dy
	var/rate
	var/list/solars	= list()








/datum/controller/process/sun/setup()
	name = "sun"
	schedule_interval = 1 // every 6 seconds
	log_startup_progress("Sun ticker starting up.")
	max_sun = config.max_sunlight
	min_sun = config.min_sunlight
	change_rate = config.time_of_day_rate
	next_change = change_rate + world.time
	//angle = 180			// the station position to the sun is randomised at round start
	//rate = rand(50,200)/100			// 50% - 200% of standard rotation
	//if(prob(50))					// same chance to rotate clockwise than counter-clockwise
	//	rate = -rate


/datum/controller/process/sun/doWork()
	fire()
	//calc_position()
	//update_solar_machinery()
	//update_sunlight()

DECLARE_GLOBAL_CONTROLLER(sun, sun)

/datum/controller/process/sun/proc/fire()
	if(!config.sun_enabled)
		return
		//<<1.NEED FOR WORK?>>
	if(is_working)
		///////////////////////
		/////////////////////
		//<<2.WORK HARD>>//
		/////////////////
		//<<2.1 Setting up new level of  sun light at the turf>>//
		if(curx <= 0)
			curx = world.maxx
			is_apply_sunlight = 0
		//<<2.3 Updating y line of turfes>>//
		if(is_apply_sunlight)
			for(var/turf/t in block(locate(curx,1,sunz), locate(curx,world.maxy,sunz)))
				if(istype(t, /turf/ground))
					var/turf/ground/temp = t
					if(!temp.open_space)
						continue
					temp.sun_light = global_sun_light
					//temp.redraw_lighting()
					temp.update_sunlight()
			curx--
			return
		//<<2.3 Checking finish>>//
		if(global_sun_light == min_sun || global_sun_light == max_sun)

			if(dif == 1)
				current_time_of_day = "Day"
			else
				current_time_of_day = "Night"
			is_working = 0
			return

		global_sun_light += dif
		if(global_sun_light < min_sun)
			global_sun_light = min_sun
		if(global_sun_light > max_sun)
			global_sun_light = max_sun
		is_apply_sunlight = 1
	/////////simple waiting//////
	else if (world.time > next_change)//Waiting for work
		if(current_time_of_day == "Day")
			current_time_of_day= "Evening"
			dif = -1
		else if(current_time_of_day == "Night")
			current_time_of_day = "Morning"
			dif = 1
			global_sun_light = 0
		is_working = 1
		global_sun_light += dif
		is_apply_sunlight = 1
		next_change = world.time + change_rate
		curx = world.maxx




/*

// calculate the sun's position given the time of day
// at the standard rate (100%) the angle is increase/decreased by 6 degrees every minute.
// a full rotation thus take a game hour in that case
/datum/controller/process/sun/proc/calc_position()
	angle = (360 + angle + rate) % 360	 // increase/decrease the angle to the sun, adjusted by the rate //used to .6

	// now calculate and cache the (dx,dy) increments for line drawing
	var/s = sin(angle)
	var/c = cos(angle)

	// Either "abs(s) < abs(c)" or "abs(s) >= abs(c)"
	// In both cases, the greater is greater than 0, so, no "if 0" check is needed for the divisions

	if(abs(s) < abs(c))
		dx = s / abs(c)
		dy = c / abs(c)
	else
		dx = s / abs(s)
		dy = c / abs(s)

//now tell the solar control computers to update their status and linked devices
/datum/controller/process/sun/proc/update_solar_machinery()
	for(last_object in solars)
		var/obj/machinery/power/solar_control/SC = last_object
		if(istype(SC) && isnull(SC.gcDestroyed))
			if(!SC.powernet)
				solars -= SC
				continue
			try
				SC.update()
			catch(var/exception/e)
				catchException(e, SC)
			SCHECK
		else
			catchBadType(SC)
			solars -= SC















			/*

/datum/controller/process/sun/proc/update_sunlight()
	message_admins("Running Update Sun")
	global_sun_light = abs(sin(round(angle/15)*15)) * max_sunshine
	message_admins("Calculated sunshine as [global_sun_light]")
	for(var/turf/t in block(locate(start_x_col,1,sunz), locate(fin_x_col,world.maxy,sunz)))
		//message_admins("Running on turf: [t]")
		if(istype(t, /turf/ground))
			//message_admins("Found Desert")
			var/turf/ground/temp = t
			if(!temp.open_space)
				continue
			temp.sun_light = global_sun_light
			temp.update_sunlight()
	start_x_col = fin_x_col
	if(start_x_col > world.maxx)
		start_x_col = 1
	fin_x_col = start_x_col + xgroup
	return



	*/
	*/