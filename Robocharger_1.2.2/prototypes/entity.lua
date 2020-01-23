data:extend({
	{
		type = "roboport",
		name = "robocharger",
		icon = "__Robocharger__/graphics/icons/robot-charge-port.png",
		icon_size = 32,
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "robocharger"},
		max_health = 400,
		corpse = "medium-remnants",
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1, -1}, {1, 1}},
		drawing_box = {{-1, -3}, {1, 0.5}},
		dying_explosion = "medium-explosion",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			input_flow_limit = "10MW",
			buffer_capacity = "90MJ"
		},
		recharge_minimum = "20MJ",
		energy_usage = "20kW",
		-- per one charge slot
		charging_energy = "1.5MW",
		logistics_radius = 0,
		construction_radius = 0,
		charge_approach_distance = 3.5,
		robot_slots_count = 0,
		material_slots_count = 0,
		stationing_offset = {0, -2},
		charging_offsets =
		{			
			{1.133, -0.883},{0.433, -0.501},
			{-0.433, -0.501},{-1.133, -0.883},
			{-1.4, -1.5},{-1.133, -2.117},
			{-0.433, -2.499},{0.433, -2.499},
			{1.133, -2.117},{1.4, -1.5}
		},
		base =
		{
			filename = "__Robocharger__/graphics/entity/robot-charge-port.png",
			width = 98,
			height = 164,
			shift = {0, -1.2}
		},
		 base_patch =
		{
		  filename = "__Robocharger__/graphics/entity/robot-charge-port.png",
		  priority = "medium",
		  width = 1,
		  height = 1,
		  frame_count = 1,
		  shift = {0, 0}
		},
		base_animation =
		{
			filename = "__Robocharger__/graphics/entity/roboport-base-animation.png",
			priority = "medium",
			width = 42,
			height = 31,
			frame_count = 8,
			animation_speed = .25,
			shift = {-0.0625, -2.65}
		},
		door_animation_up =
		{
		  filename = "__Robocharger__/graphics/entity/robot-charge-port.png",
		  priority = "medium",
		  width = 1,
		  height = 1,
		  frame_count = 1,
		  shift = {0, 0}
		},
		door_animation_down =
		{
		  filename = "__Robocharger__/graphics/entity/robot-charge-port.png",
		  priority = "medium",
		  width = 1,
		  height = 1,
		  frame_count = 1,
		  shift = {0, 0}
		},
		recharging_animation =
		{
			filename = "__Robocharger__/graphics/entity/roboport-recharging.png",
			priority = "high",
			width = 37,
			height = 35,
			frame_count = 16,
			scale = 1.75,
			animation_speed = 0.85
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0 },
			max_sounds_per_type = 3,
			audible_distance_modifier = 0.5,
			probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
		},
		recharging_light = {intensity = 0.6, size = 5},
		request_to_open_door_timeout = 15,
		spawn_and_station_height = -0.1,
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
			width = 12,
			height = 12,
			priority = "extra-high-no-scale"
		},
		construction_radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
			width = 12,
			height = 12,
			priority = "extra-high-no-scale"
		},
		open_door_trigger_effect =
		{
			{
				type = "play-sound",
				sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0 }
			},
		},
		close_door_trigger_effect =
		{
			{
				type = "play-sound",
				sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0 }
			},
		},
	},

})