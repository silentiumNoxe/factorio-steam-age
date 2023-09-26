-- Open with tech electronics
data.raw["recipe"]["electronic-circuit"].normal.enabled = false
data.raw["recipe"]["electronic-circuit"].expensive.enabled = false
data.raw["recipe"]["copper-cable"].enabled = false
data.raw["recipe"]["small-electric-pole"].enabled = false
data.raw["recipe"]["steam-engine"].normal.enabled = false
data.raw["recipe"]["steam-engine"].expensive.enabled = false

-- Open after tech electronics
data.raw["recipe"]["electric-mining-drill"].normal.enabled = false
data.raw["recipe"]["electric-mining-drill"].expensive.enabled = false
data.raw["recipe"]["inserter"].enabled = false
data.raw["recipe"]["lab"].enabled = false

-- Open with tech logistics
data.raw["recipe"]["transport-belt"].enabled = false

-- Open with tech military
data.raw["recipe"]["light-armor"].enabled = false

-- Open after tech military && electronics
data.raw["recipe"]["radar"].enabled = false

data.raw["recipe"]["repair-pack"].ingredients = {
    { "iron-gear-wheel", 2 },
    { "iron-stick", 4 },
    { "copper-plate", 2 }
}

data.raw["recipe"]["logistic-science-pack"].ingredients = {
    { "transport-belt", 1 },
    { "burner-inserter", 1 }
}

data.raw["recipe"]["offshore-pump"].ingredients = {
    { "iron-plate", 6 },
    { "iron-gear-wheel", 4 }
}

-- todo: electric mining drill must require steel plate
-- todo: electric lab must require steel plate