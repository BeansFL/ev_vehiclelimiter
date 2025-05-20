-- Use lib.onCache to apply speed limit adjustments when the player's vehicle changes
lib.onCache('vehicle', function(vehicle)
    if not vehicle or vehicle == 0 then
        print("You are not in a vehicle.") -- Notify the player they are not in a vehicle
        return
    end

    local modelHash = GetEntityModel(vehicle)

    local speedLimitFound = false
    for _, v in ipairs(Config.Models) do
        if modelHash == v.modelHash then
            -- Convert the speed from mph to m/s for setting the vehicle's max speed
            local convertedSpeed = v.maxSpeed / Config.mphValue
            SetVehicleMaxSpeed(vehicle, convertedSpeed)
            print(string.format("Speed limit for model hash %s set to %d mph (%.2f m/s).", modelHash, v.maxSpeed, convertedSpeed)) -- Notify of speed limit application
            speedLimitFound = true
            break
        end
    end

    if not speedLimitFound then
        print(string.format("Vehicle model hash %s is not configured for a speed limitation.", modelHash)) -- Notify if the vehicle model hash is not in the Config.Models list
    end
end)
