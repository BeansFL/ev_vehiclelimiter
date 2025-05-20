# Vehicle Speed Limiter (OxLib)

This script applies specific speed limits to configured vehicle models using **OxLib's caching system**.

## Features

- Limits top speed for specific vehicle models.
- Uses `lib.onCache('vehicle')` from OxLib for efficient vehicle detection.
- Speed limits are applied automatically when entering a vehicle.
- Supports speed input in MPH (default), but can be adjusted for KM/H.


## ⚙️ Configuration

Located in `config.lua`:

```lua
Config.useSpecificModels = true

Config.Models = {
    {modelHash = GetHashKey("adder"), maxSpeed = 100},  -- Speed in MPH
    -- Add more vehicle hashes and speed limits
}

-- Conversion factor for MPH to m/s
Config.mphValue = 2.23694  -- For KM/H, use 3.6


## Client Logic
Script checks when the player enters a vehicle (lib.onCache).

If the vehicle model is listed in Config.Models, it converts the MPH to m/s and applies the limit using SetVehicleMaxSpeed.

## Requirements
OxLib

Ensure it's started before this script in your server.cfg:

```
ensure ox_lib
ensure ev_vehiclelimiter
```

## Notes
Vehicles not listed in Config.Models will not be limited.
