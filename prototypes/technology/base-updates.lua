data.raw["technology"]["military"].effects = {
    {
        type = "unlock-recipe",
        recipe = "submachine-gun"
    },
    {
        type = "unlock-recipe",
        recipe = "shotgun"
    },
    {
        type = "unlock-recipe",
        recipe = "shotgun-shell"
    },
    {
        type = "unlock-recipe",
        recipe = "light-armor"
    }
}

data.raw["technology"]["electronics"].prerequisites = {}
data.raw["technology"]["electronics"].effects = {
    {
        type = "unlock-recipe",
        recipe = "electronic-circuit"
    }
}

data.raw["technology"]["logistics"].effects = {
    {
        type = "unlock-recipe",
        recipe = "underground-belt"
    },
    {
        type = "unlock-recipe",
        recipe = "splitter"
    },
    {
        type = "unlock-recipe",
        recipe = "transport-belt"
    }
}

data.raw["technology"]["automation"].prerequisites = {"electronics", "steam-power"}
data.raw["technology"]["automation"].effects = {{type = "unlock-recipe", recipe = "assembling-machine-1"}}
data.raw["technology"]["automation"].unit.ingredients = {
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1}
}

data.raw["technology"]["automation-2"].prerequisites = {"automation", "steel-processing"}
data.raw["technology"]["optics"].prerequisites = {"electronics", "steam-power"}
data.raw["technology"]["logistic-science-pack"].prerequisites = {"logistics"}
data.raw["technology"]["gun-turret"].prerequisites = {"military"}
data.raw["technology"]["stone-wall"].prerequisites = {"military"}
data.raw["technology"]["fast-inserter"].prerequisites = {"inserter"}

data:extend({
    {
        type = "technology",
        name = "steam-power",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__steam-age__/graphics/technology/steam-power.png",
        prerequisites = {"electronics", "logistic-science-pack"},
        effects = {
            { type = "unlock-recipe", recipe = "copper-cable" },
            { type = "unlock-recipe", recipe = "small-electric-pole" },
            { type = "unlock-recipe", recipe = "steam-engine" }
        },
        unit = {
            count = 50,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 20
        },
        order = "a-b-d"
    },
    {
        type = "technology",
        name = "inserter",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__steam-age__/graphics/technology/inserter.png",
        prerequisites = {"electronics", "steam-power"},
        effects = {
            { type = "unlock-recipe", recipe = "inserter" },
            { type = "unlock-recipe", recipe = "long-handed-inserter" }
        },
        unit = {
            count = 30,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 20
        },
        order = "a-b-e"
    },
    {
        type = "technology",
        name = "radar",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__steam-age__/graphics/technology/radar.png",
        prerequisites = {"steam-power", "military"},
        effects = {
            { type = "unlock-recipe", recipe = "radar" }
        },
        unit = {
            count = 25,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 10
        },
        order = "e-b-a"
    },
    {
        type = "technology",
        name = "electric-drill",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__steam-age__/graphics/technology/electric-drill.png",
        prerequisites = {"steam-power", "steel-processing"},
        effects = {
            { type = "unlock-recipe", recipe = "electric-mining-drill" }
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 20
        },
        order = "a-c-a"
    },
    {
        type = "technology",
        name = "electric-lab",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__steam-age__/graphics/technology/electric-lab.png",
        prerequisites = {"automation-2"},
        effects = {
            { type = "unlock-recipe", recipe = "lab" }
        },
        unit = {
            count = 100,
            ingredients = {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1}
            },
            time = 20
        },
        order = "a-c-b"
    }
})

data.raw["technology"]["research-speed-1"].prerequisites = {"electric-lab"}