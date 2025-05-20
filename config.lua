Config = {}
Config.useSpecificModels = true

Config.Models = {
    {modelHash = GetHashKey("adder"), maxSpeed = 100},  -- Example: Hash for "adder"
    -- Add more models as needed
}

-- Conversion factor for mph to m/s; do not modify if you wanna keep the speed in mph, use 3.6 for km/h
Config.mphValue = 2.23694
