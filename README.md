# UKSF_Controller

Context-aware controller support for ArmA 3 vehicles and drones.

## Goals

- Automatically enable controller handling when the local player enters a supported driving or UAV-control context.
- Automatically disable addon controller handling when that context ends.
- Keep keyboard and mouse controls available at all times.
- Use native ArmA vehicle input wherever possible rather than manipulating vehicle physics directly.
- Keep infantry controller input untouched by default.

## Planned contexts

- Car / wheeled vehicle driver
- Tracked vehicle driver
- Boat driver
- UGV driver
- UAV pilot
- UAV sensor / turret operator

## Initial milestone

The first implementation target is a vanilla car-driver prototype:

- automatic driver-seat detection
- controller presence detection
- analogue steering
- analogue throttle and brake/reverse
- handbrake
- immediate deactivation after leaving the driver seat
- uninterrupted keyboard and mouse input

## Namespace

Addon: `UKSF_Controller`

Script namespace: `UKSF_Controller_*`
