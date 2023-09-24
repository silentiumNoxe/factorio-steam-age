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
    },
    {
        type = "unlock-recipe",
        recipe = "copper-cable"
    },
    {
        type = "unlock-recipe",
        recipe = "small-electric-pole"
    },
    {
        type = "unlock-recipe",
        recipe = "steam-engine"
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

data.raw["technology"]["automation"].prerequisites = {"electronics"}
data.raw["technology"]["optics"].prerequisites = {"electronics"}
data.raw["technology"]["logistic-science-pack"].prerequisites = {"logistics"} --[[require tech with electronic inserter]]
data.raw["technology"]["gun-turret"].prerequisites = {"military"}
data.raw["technology"]["stone-wall"].prerequisites = {"military"}

-- todo: long-handed-inserter should be enabled with electric inserter
