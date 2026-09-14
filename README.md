# UKSF_Controller

Context-aware controller support for ArmA 3 vehicles and drones.

## Goals

- Automatically enable useful controller inputs only in supported vehicle/UAV contexts.
- Keep infantry controller input untouched by default.
- Keep keyboard and mouse controls available at all times.
- Use native ArmA vehicle input rather than manipulating vehicle physics directly.

## Planned contexts

- Car / wheeled vehicle driver
- Tracked vehicle driver
- Boat driver
- UGV driver
- UAV pilot
- UAV sensor / turret operator

## v0.1 car prototype

The first test build uses an ArmA controller scheme containing only car-driving actions:

| Controller | ArmA action |
| --- | --- |
| RT | Car Forward |
| LT | Car Back / brake / reverse |
| Left stick X | Car Left/Right Analog |
| A | Car Handbrake |

Because the scheme only contains vehicle actions, the same controls should do nothing to infantry movement while keyboard and mouse remain available normally.

### Context state

The addon tracks:

- `DISABLED`
- `CAR_DRIVER`
- `TRACKED_DRIVER`
- `BOAT_DRIVER`

Runtime variables:

- `UKSF_Controller_mode`
- `UKSF_Controller_connected`
- `UKSF_Controller_active`

`UKSF_Controller_active` is true only when an XInput controller is detected and the player is in a supported driver context.

## Building

Pack the repository root as `UKSF_Controller.pbo`. The included `$PBOPREFIX$` sets the PBO prefix to `UKSF_Controller`.

Example mod layout:

```text
@UKSF_Controller/
└── addons/
    └── UKSF_Controller.pbo
```

## First test

1. Load `@UKSF_Controller` with an Xbox/XInput controller connected.
2. In ArmA 3 controller settings, select the `UKSF Controller` scheme for the XInput controller. This should only need to be configured once per profile.
3. Start a mission with a vanilla wheeled vehicle such as an Offroad or Hunter.
4. While on foot, verify the left stick, triggers and A button do not move or control the infantry character.
5. Enter the driver's seat.
6. Verify RT accelerates, LT brakes/reverses, left stick steers proportionally and A applies the handbrake.
7. While driving, verify normal keyboard and mouse controls still work.
8. Get out and verify the controller no longer controls the player.

If needed, inspect `UKSF_Controller_mode`, `UKSF_Controller_connected` and `UKSF_Controller_active` from the debug console while testing.

## Namespace

Addon: `UKSF_Controller`

Script namespace: `UKSF_Controller_*`
