-- retrun if exotic industries is not present
if not mods["exotic-industries"] then return end

ei_robots_lib = require("lib/lib-data")

--====================================================================================================
--ROBOT CHANGES
--====================================================================================================

-- additional tech prerequisits

table.insert(
    data.raw.technology["ei_construction-bots"].prerequisites,
    "ei_electronic-parts"
)


table.insert(
    data.raw.technology["ei_cargo-bots"].prerequisites,
    "ei_electronic-parts"
)

data.raw.recipe["ei_construction-bot"].ingredients = {
    {type="item", name="construction-robot", amount=1},
    {type="item", name="fast-inserter", amount=2},
    {type="item", name="ei_electronic-parts", amount=2}
}

data.raw.recipe["ei_cargo-bot"].ingredients = {
    {type="item", name="logistic-robot", amount=1},
    {type="item", name="iron-chest", amount=2},
    {type="item", name="ei_electronic-parts", amount=2}
}


data.raw.technology["ei_advanced-port"].prerequisites = {
    "ei_neodym-refining",
    "ei_nano-factory",
}

data.raw.technology["ei_advanced-bots"].prerequisites = {
    "ei_quantum-computer",
    "ei_nano-factory",
}

data.raw.recipe["ei_advanced-bot-engine"].ingredients = {
    {type="item", name="flying-robot-frame", amount=2},
    {type="item", name="ei_carbon-structure", amount=3},
    {type="item", name="ei_advanced-motor", amount=2},
    {type="item", name="ei_superior-data", amount=1},
    {type="fluid", name="lubricant", amount=50},
}

data.raw.recipe["ei_advanced-port"].ingredients = {
    {type="item", name="roboport", amount=4},
    {type="item", name="processing-unit", amount=25},
    {type="item", name="ei_advanced-motor", amount=15},
    {type="item", name="ei_magnet", amount=6},
}