data:extend(
    {
        --{
        --    type = "recipe",
        --    name = "assembling-machine-steam",
        --    enabled = true,
        --    ingredients = {
        --        {"pipe", 5},
        --        {"iron-gear-wheel", 5},
        --        {"iron-plate", 9}
        --    },
        --    result = "assembling-machine-steam"
        --},
        {
            type = "recipe",
            name = "burner-inserter",
            enabled = true,
            ingredients = {
                {"iron-plate", 1},
                {"iron-gear-wheel", 1},
                {"pipe", 1}
            },
            result = "burner-inserter"
        },
        {
            type = "recipe",
            name = "steam-lab",
            enabled = true,
            energy_required = 2,
            ingredients = {
                {"pipe", 10},
                {"iron-gear-wheel", 10},
                {"transport-belt", 4}
            },
            result = "steam-lab"
        },
        {
            type = "recipe",
            name = "burner-mining-drill",
            normal = {
                energy_required = 2,
                ingredients = {
                    {"iron-gear-wheel", 3},
                    {"pipe", 4},
                    {"iron-plate", 3}
                },
                result = "burner-mining-drill"
            },
            expensive = {
                energy_required = 4,
                ingredients = {
                    {"iron-gear-wheel", 6},
                    {"pipe", 8},
                    {"iron-plate", 6}
                },
                result = "burner-mining-drill"
            }
        }
    }
)