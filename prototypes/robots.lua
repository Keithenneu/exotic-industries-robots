ei_robots_lib = require("lib/lib-data")

--====================================================================================================
--ITEMS
--====================================================================================================

data:extend({
    {
        name = "ei_advanced-logistic-bot",
        type = "item",
        icon = ei_robots_item_path.."advanced-logistic-bot.png",
        icon_size = 64,
        subgroup = "logistic-network",
        order = "a[robot]-a[logistic-robot]-c",
        place_result = "ei_advanced-logistic-bot",
        stack_size = 50
    },
    {
        name = "ei_advanced-construction-bot",
        type = "item",
        icon = ei_robots_item_path.."advanced-construction-bot.png",
        icon_size = 64,
        subgroup = "logistic-network",
        order = "a[robot]-b[construction-robot]-c",
        place_result = "ei_advanced-construction-bot",
        stack_size = 50
    },
    {
        name = "ei_cargo-bot",
        type = "item",
        icon = ei_robots_item_path.."cargo-bot.png",
        icon_size = 64,
        subgroup = "logistic-network",
        order = "a[robot]-a[logistic-robot]-b",
        place_result = "ei_cargo-bot",
        stack_size = 50
    },
    {
        name = "ei_construction-bot",
        type = "item",
        icon = ei_robots_item_path.."construction-bot.png",
        icon_size = 64,
        subgroup = "logistic-network",
        order = "a[robot]-b[construction-robot]-b",
        place_result = "ei_construction-bot",
        stack_size = 50
    },
    {
        name = "ei_advanced-bot-engine",
        type = "item",
        icon = ei_robots_item_path.."advanced-engine.png",
        icon_size = 128,
        subgroup = "intermediate-product",
        order = "l[flying-robot-frame]-b",
        stack_size = 50
    },
    {
        name = "ei_advanced-port",
        type = "item",
        icon = ei_robots_item_path.."advanced-port.png",
        icon_size = 64,
        subgroup = "logistic-network",
        order = "d",
        place_result = "ei_advanced-port",
        stack_size = 10
    },
})

--====================================================================================================
--RECIPES
--====================================================================================================

data:extend({
    {
        name = "ei_advanced-logistic-bot",
        type = "recipe",
        category = "crafting",
        energy_required = 4,
        ingredients =
        {
            {type="item", name="logistic-robot", amount=2},
            {type="item", name="processing-unit", amount=4},
            {type="item", name="ei_advanced-bot-engine", amount=4},
        },
        results = {{type="item", name="ei_advanced-logistic-bot", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_advanced-logistic-bot",
    },
    {
        name = "ei_advanced-construction-bot",
        type = "recipe",
        category = "crafting",
        energy_required = 4,
        ingredients =
        {
            {type="item", name="construction-robot", amount=2},
            {type="item", name="processing-unit", amount=4},
            {type="item", name="ei_advanced-bot-engine", amount=4},
        },
        results = {{type="item", name="ei_advanced-construction-bot", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_advanced-construction-bot",
    },
    {
        name = "ei_cargo-bot",
        type = "recipe",
        category = "crafting",
        energy_required = 4,
        ingredients =
        {
            {type="item", name="logistic-robot", amount=1},
            {type="item", name="iron-chest", amount=2},
            {type="item", name="advanced-circuit", amount=2},
        },
        results = {{type="item", name="ei_cargo-bot", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_cargo-bot",
    },
    {
        name = "ei_construction-bot",
        type = "recipe",
        category = "crafting",
        energy_required = 4,
        ingredients =
        {
            {type="item", name="construction-robot", amount=1},
            {type="item", name="fast-inserter", amount=2},
            {type="item", name="advanced-circuit", amount=2},
        },
        results = {{type="item", name="ei_construction-bot", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_construction-bot",
    },
    {
        name = "ei_advanced-bot-engine",
        type = "recipe",
        category = "crafting-with-fluid",
        energy_required = 20,
        ingredients =
        {
            {type="item", name="flying-robot-frame", amount=2},
            {type="item", name="battery", amount=4},
            {type="item", name="electric-engine-unit", amount=6},
            {type="fluid", name="lubricant", amount=50},
        },
        results = {{type="item", name="ei_advanced-bot-engine", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_advanced-bot-engine",
    },
    {
        name = "ei_advanced-port",
        type = "recipe",
        category = "crafting",
        energy_required = 10,
        ingredients =
        {
            {type="item", name="roboport", amount=4},
            {type="item", name="steel-plate", amount=40},
            {type="item", name="processing-unit", amount=20},
            {type="item", name="electric-engine-unit", amount=10},
        },
        results = {{type="item", name="ei_advanced-port", amount=1}},
        enabled = false,
        always_show_made_in = true,
        main_product = "ei_advanced-port",
    },
})

--====================================================================================================
--TECHS
--====================================================================================================

data:extend({
    {
        name = "ei_advanced-bots",
        type = "technology",
        icon = ei_robots_tech_path.."advanced-bots.png",
        icon_size = 128,
        prerequisites = {"space-science-pack"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_advanced-logistic-bot"
            },
            {
                type = "unlock-recipe",
                recipe = "ei_advanced-construction-bot"
            },
            {
                type = "unlock-recipe",
                recipe = "ei_advanced-bot-engine"
            },
        },
        unit = {
            count = 600,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 60
        },
        age = "quantum-age",
    },
    {
        name = "ei_cargo-bots",
        type = "technology",
        icon = ei_robots_tech_path.."cargo-bots.png",
        icon_size = 256,
        prerequisites = {"logistic-robotics"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_cargo-bot"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30
        },
        age = "electricity-age",
    },
    {
        name = "ei_construction-bots",
        type = "technology",
        icon = ei_robots_tech_path.."construction-bots.png",
        icon_size = 256,
        prerequisites = {"construction-robotics"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_construction-bot"
            },
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
            },
            time = 30
        },
        age = "electricity-age",
    },
    {
        name = "ei_advanced-port",
        type = "technology",
        icon = ei_robots_tech_path.."advanced-port.png",
        icon_size = 256,
        prerequisites = {"space-science-pack"},
        effects = {
            {
                type = "unlock-recipe",
                recipe = "ei_advanced-port"
            },
        },
        unit = {
            count = 600,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"utility-science-pack", 1},
                {"space-science-pack", 1},
                {"production-science-pack", 1},
            },
            time = 60
        },
        age = "quantum-age",
    },
})

--====================================================================================================
--ROBOT ADDITIONS
--====================================================================================================

data:extend({
    {
        name = "ei_advanced-logistic-bot",
        type = "logistic-robot",
        icon = ei_robots_item_path.."advanced-logistic-bot.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        max_health = 1400,
        corpse = "big-remnants",
        collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        minable = {
            mining_time = 1,
            result = "ei_advanced-logistic-bot",
        },
        max_payload_size = 5,
		speed = 0.24,
		transfer_distance = 0.5,
		max_energy = "20MJ",
		energy_per_tick = "0.14kJ",
		speed_multiplier_when_out_of_energy = 0.2,
		energy_per_move = "10kJ",
		min_to_charge = 0.2,
		max_to_charge = 0.9,
		cargo_centered = {0.0, 0.2},
        idle =
		{
			filename = ei_robots_entity_path.."advanced-logistic-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
		idle_with_cargo =
		{
			filename = ei_robots_entity_path.."advanced-logistic-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
        in_motion =
		{
			filename = ei_robots_entity_path.."advanced-logistic-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
		in_motion_with_cargo =
		{
			filename = ei_robots_entity_path.."advanced-logistic-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
        shadow_idle =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			y = 29,
			draw_as_shadow = true,
		},
		shadow_in_motion =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		shadow_idle_with_cargo =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
        },
        shadow_in_motion_with_cargo =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
        },
	},
	{
        name = "ei_advanced-construction-bot",
        type = "construction-robot",
        icon = ei_robots_item_path.."advanced-construction-bot.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        max_health = 1400,
        corpse = "big-remnants",
        collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        minable = {
            mining_time = 1,
            result = "ei_advanced-construction-bot",
		},
		working_light = {intensity = 0.8, size = 3},
        max_payload_size = 3,
		speed = 0.16,
		transfer_distance = 0.5,
		max_energy = "5MJ",
		energy_per_tick = "0.14kJ",
		speed_multiplier_when_out_of_energy = 0.2,
		energy_per_move = "6kJ",
		min_to_charge = 0.2,
		max_to_charge = 0.9,
		cargo_centered = {0.0, 0.2},
		construction_vector = {0.30, 0.22},
        idle =
		{
			filename = ei_robots_entity_path.."advanced-construction-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
        in_motion =
		{
			filename = ei_robots_entity_path.."advanced-construction-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128,
			height = 128,
			scale = 0.5,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
        shadow_idle =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			y = 29,
			draw_as_shadow = true,
		},
		shadow_in_motion =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		working =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		shadow_working =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		smoke =
		{
			filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
			width = 39,
			height = 32,
			frame_count = 19,
			line_length = 19,
			shift = {0.078125, -0.15625},
			animation_speed = 0.3,
		},
	},
    {
        name = "ei_cargo-bot",
        type = "logistic-robot",
        icon = ei_robots_item_path.."cargo-bot.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        max_health = 1400,
        corpse = "big-remnants",
        collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        minable = {
            mining_time = 1,
            result = "ei_cargo-bot",
        },
        max_payload_size = 32,
		speed = 0.015,
		transfer_distance = 0.5,
		max_energy = "2MJ",
		energy_per_tick = "0.1kJ",
		speed_multiplier_when_out_of_energy = 0.2,
		energy_per_move = "1kJ",
		min_to_charge = 0.2,
		max_to_charge = 0.9,
		cargo_centered = {0.0, 0.2},
        idle =
		{
			filename = ei_robots_entity_path.."cargo-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128*2,
			height = 128*2,
			scale = 0.25,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
		idle_with_cargo =
		{
			filename = ei_robots_entity_path.."cargo-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128*2,
			height = 128*2,
			scale = 0.25,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
        in_motion =
		{
			filename = ei_robots_entity_path.."cargo-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128*2,
			height = 128*2,
			scale = 0.25,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
		in_motion_with_cargo =
		{
			filename = ei_robots_entity_path.."cargo-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128*2,
			height = 128*2,
			scale = 0.25,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
        shadow_idle =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			y = 29,
			draw_as_shadow = true,
		},
		shadow_in_motion =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		shadow_idle_with_cargo =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
        },
        shadow_in_motion_with_cargo =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
        },
	},
	{
        name = "ei_construction-bot",
        type = "construction-robot",
        icon = ei_robots_item_path.."construction-bot.png",
        icon_size = 64,
        flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
        max_health = 1400,
        corpse = "big-remnants",
        collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
        minable = {
            mining_time = 1,
            result = "ei_construction-bot",
		},
		working_light = {intensity = 0.8, size = 3},
        max_payload_size = 5,
		speed = 0.1,
		transfer_distance = 0.5,
		max_energy = "0.5MJ",
		energy_per_tick = "0.14kJ",
		speed_multiplier_when_out_of_energy = 0.2,
		energy_per_move = "10kJ",
		min_to_charge = 0.2,
		max_to_charge = 0.9,
		cargo_centered = {0.0, 0.2},
		construction_vector = {0.30, 0.22},
        idle =
		{
			filename = ei_robots_entity_path.."construction-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128*2,
			height = 128*2,
			scale = 0.25,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
        in_motion =
		{
			filename = ei_robots_entity_path.."construction-bot_animation.png",
			priority = "high",
			line_length = 16,
			width = 128*2,
			height = 128*2,
			scale = 0.25,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,				
        },
        shadow_idle =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			y = 29,
			draw_as_shadow = true,
		},
		shadow_in_motion =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		working =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		shadow_working =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			direction_count = 16,
			draw_as_shadow = true,
		},
		smoke =
		{
			filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
			width = 39,
			height = 32,
			frame_count = 19,
			line_length = 19,
			shift = {0.078125, -0.15625},
			animation_speed = 0.3,
		},
	},
    {
        name = "ei_advanced-port",
        type = "roboport",
        icon = ei_robots_item_path.."advanced-port.png",
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        max_health = 1000,
        corpse = "big-remnants",
        collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
        selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
        map_color = data.raw["roboport"]["roboport"].map_color,
        minable = {
            mining_time = 1,
            result = "ei_advanced-port",
        },
        energy_source = {
            type = "electric",
            buffer_capacity = "400MJ",
            usage_priority = "secondary-input",
            input_flow_limit = "160MW",
        },
        energy_usage = "4MW",
        charge_approach_distance = 5,
        charging_energy = "4MW",
        recharge_minimum = "1MW",
        -- charging_station_count = 6, 
        construction_radius = 70,
        logistics_radius = 70,
        material_slots_count = 10,
        robot_slots_count = 10,
        request_to_open_door_timeout = 15,
        spawn_and_station_height = 0,
        stationing_offset = {0, -0.5},
        charging_offsets = {
            {-1.5, -0.5},
            {1.5, -0.5},
            {-1, 1.3-0.5},
            {1, 1.3-0.5},
            {-1, -1.3-0.5},
            {1, -1.3-0.5},
        },
        robots_shrink_when_entering_and_exiting = true,
        recharge_minimum = "4MW",

        base = {
            filename = ei_robots_entity_path.."advanced-port.png",
            width = 512,
            height = 512,
            scale = 0.35,
        },
        base_patch = {
            filename = ei_robots_entity_path.."advanced-port.png",
            width = 512,
            height = 512,
            scale = 0.35,
        },
        base_animation = {
            filename = ei_robots_entity_path.."/64x64_empty.png",
            width = 64,
            height = 64,
            shift = {0, 0},
            size = 1,
            frame_count = 1,
            animation_speed = 1,
        },
        door_animation_up = {
            filename = ei_robots_entity_path.."advanced-port_animation.png",
            width = 512,
            height = 512,
            scale = 0.35,
            line_length = 5,
            --lines_per_file = 1,
            animation_speed = 0.5,
            frame_count = 5,
        },
        door_animation_down = {
            filename = ei_robots_entity_path.."advanced-port_animation.png",
            width = 512,
            height = 512,
            scale = 0.35,
            line_length = 5,
            --lines_per_file = 1,
            animation_speed = 0.5,
            frame_count = 5,
        },
        recharging_animation = {
            filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
			priority = "high",
			width = 37,
			height = 35,
			frame_count = 16,
			scale = 1.5,
			animation_speed = 0.5
        },

        circuit_wire_connection_point = {
            wire = {
                copper = {0, 0},
                green = {0, 0},
                red = {0, 0}
            },
            shadow = {
                copper = {0, 0},
                green = {0, 0},
                red = {0, 0}
            }
        },
		circuit_connector_sprites = {
            led_red = {
                filename = ei_robots_entity_path.."/64x64_empty.png",
                width = 64,
                height = 64,
                shift = {0, 0},
                intensity = 0.3,
                size = 1
            },
            led_green = {
                filename = ei_robots_entity_path.."/64x64_empty.png",
                width = 64,
                height = 64,
                shift = {0, 0},
                intensity = 0.3,
                size = 1
            },
            led_blue = {
                filename = ei_robots_entity_path.."/64x64_empty.png",
                width = 64,
                height = 64,
                shift = {0, 0},
                intensity = 0.3,
                size = 1
            },
            led_light = {
                filename = ei_robots_entity_path.."/64x64_empty.png",
                width = 64,
                height = 64,
                shift = {0, 0},
                intensity = 0.3,
                size = 1,
                blend_mode = "additive",
            },
        },
		circuit_wire_max_distance = 20,
    },
})