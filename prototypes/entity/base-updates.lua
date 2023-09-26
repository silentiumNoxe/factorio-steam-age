data.raw["inserter"]["burner-inserter"].energy_source = {
    type = "fluid",
    effectivity = 0.75,
    emissions_per_minute = 4,
    render_no_power_icon = true,
    fluid_box = {
        base_area = 1,
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
            { type = "input-output", position = { 1, 0 } },
            { type = "input-output", position = { -1, 0 } }
        },
        production_type = "input-output",
        filter = "steam",
        minimum_temperature = 100.0,
        secondary_draw_orders = { north = -1 }
    },
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 0
}

data.raw["mining-drill"]["burner-mining-drill"].collision_box = {{-1, -1}, {1, 1}}
data.raw["mining-drill"]["burner-mining-drill"].energy_source = {
    type = "fluid",
    emissions_per_minute = 4,
    render_no_power_icon = true,
    fluid_box = {
        base_area = 1,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
            { type = "input", position = {0.5, 1.2} },
        },
        production_type = "input",
        filter = "steam",
        minimum_temperature = 100.0,
        secondary_draw_orders = { north = -1 },
    },
    scale_fluid_usage = false,
    fluid_usage_per_tick = 0.5,
    maximum_temperature = 100,
    light_flicker = nil
}

data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 4
data.raw["generator"]["steam-engine"].scale_fluid_usage = false