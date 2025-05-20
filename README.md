# Vehicle Speed Limiter

This lightweight client-side script applies specific speed limits to configured vehicle models using **OxLib's caching system**.

---

## Features

- Limits top speed for selected vehicles only.
- Utilizes `lib.onCache('vehicle')` for efficient real-time updates.
- Automatically applies limits upon vehicle entry.
- Supports speed input in **MPH** (default) or **KM/H** via simple config adjustment.

---

## Configuration

Edit `config.lua`:

```lua
Config.useSpecificModels = true

Config.Models = {
    {modelHash = GetHashKey("adder"), maxSpeed = 100}, -- Speed in MPH
    -- Add more models as needed
}

-- Conversion factor for MPH to m/s (default). For KM/H use 3.6 instead.
Config.mphValue = 2.23694
```

---

## Client Logic

- When the player enters a vehicle, `lib.onCache('vehicle')` triggers.
- The script checks if the vehicle model is in `Config.Models`.
- If matched, it converts the configured MPH speed to **m/s** and applies it using `SetVehicleMaxSpeed`.

---

## Requirements

- [OxLib](https://github.com/overextended/ox_lib)

Make sure OxLib is started **before** this script in your `server.cfg`:

```bash
ensure ox_lib
ensure ev_vehiclelimiter
```

---

## Notes

- Vehicles **not listed** in `Config.Models` will retain default speed behavior.
- This script is **client-side only** and designed for lightweight integration.

---
