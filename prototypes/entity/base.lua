local hit_effects = require("prototypes.entity.hit-effects")
local sounds = require("prototypes.entity.sounds")

data:extend({
    {
        type = "lab",
        name = "steam-lab",
        icon = "__steam-age__/graphics/icons/steam-lab.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = { "placeable-player", "player-creation" },
        minable = { mining_time = 0.2, result = "steam-lab" },
        max_health = 150,
        corpse = "lab-remnants",
        dying_explosion = "lab-explosion",
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        damaged_trigger_effect = hit_effects.entity(),
        on_animation = {
            layers = {
                {
                    filename = "__steam-age__/graphics/entity/lab/lab.png",
                    width = 98,
                    height = 87,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 1.5),
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab.png",
                        width = 194,
                        height = 174,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__steam-age__/graphics/entity/lab/lab-integration.png",
                    width = 122,
                    height = 81,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(0, 15.5),
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab-integration.png",
                        width = 242,
                        height = 162,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 15.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__steam-age__/graphics/entity/lab/lab-light.png",
                    blend_mode = "additive",
                    draw_as_light = true,
                    width = 106,
                    height = 100,
                    frame_count = 33,
                    line_length = 11,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(-1, 1),
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab-light.png",
                        blend_mode = "additive",
                        draw_as_light = true,
                        width = 216,
                        height = 194,
                        frame_count = 33,
                        line_length = 11,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(0, 0),
                        scale = 0.5
                    }
                },
                {
                    filename = "__steam-age__/graphics/entity/lab/lab-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    line_length = 1,
                    repeat_count = 33,
                    animation_speed = 1 / 3,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        line_length = 1,
                        repeat_count = 33,
                        animation_speed = 1 / 3,
                        shift = util.by_pixel(13, 11),
                        scale = 0.5,
                        draw_as_shadow = true
                    }
                }
            }
        },
        off_animation = {
            layers = {
                {
                    filename = "__steam-age__/graphics/entity/lab/lab.png",
                    width = 98,
                    height = 87,
                    frame_count = 1,
                    shift = util.by_pixel(0, 1.5),
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab.png",
                        width = 194,
                        height = 174,
                        frame_count = 1,
                        shift = util.by_pixel(0, 1.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__steam-age__/graphics/entity/lab/lab-integration.png",
                    width = 122,
                    height = 81,
                    frame_count = 1,
                    shift = util.by_pixel(0, 15.5),
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab-integration.png",
                        width = 242,
                        height = 162,
                        frame_count = 1,
                        shift = util.by_pixel(0, 15.5),
                        scale = 0.5
                    }
                },
                {
                    filename = "__steam-age__/graphics/entity/lab/lab-shadow.png",
                    width = 122,
                    height = 68,
                    frame_count = 1,
                    shift = util.by_pixel(13, 11),
                    draw_as_shadow = true,
                    hr_version = {
                        filename = "__steam-age__/graphics/entity/lab/hr-lab-shadow.png",
                        width = 242,
                        height = 136,
                        frame_count = 1,
                        shift = util.by_pixel(13, 11),
                        draw_as_shadow = true,
                        scale = 0.5
                    }
                }
            }
        },
        working_sound = {
            sound = {
                filename = "__steam-age__/sound/lab.ogg",
                volume = 0.7
            },
            audible_distance_modifier = 0.7,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        vehicle_impact_sound = sounds.generic_impact,
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        energy_source = {
            type = "fluid",
            effectivity = 0.5,
            emissions_per_minute = 4,
            render_no_power_icon = true,
            fluid_box = {
                base_area = 1,
                pipe_covers = pipecoverspictures(),
                pipe_connections = {
                    { type = "input", position = { 2, 0 } },
                    { type = "input", position = { -2, 0 } },
                    { type = "input", position = { 0, 2 } },
                    { type = "input", position = { 0, -2 } }
                },
                production_type = "input",
                filter = "steam",
                minimum_temperature = 100.0,
                secondary_draw_orders = { north = -1 }
            },
            fluid_usage_per_tick = 2,
            maximum_temperature = 0
        },
        energy_usage = "30kW",
        researching_speed = 0.5,
        inputs = {
            "automation-science-pack",
            "logistic-science-pack",
            "military-science-pack",
            "chemical-science-pack",
            "production-science-pack",
            "utility-science-pack",
            "space-science-pack"
        },
        module_specification = {}
    }
})