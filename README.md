# mist
😶‍🌫️ Minecraft installations for the privacy-concious.

For Minecraft 1.20.1.

## Versions
### Branches
* `baseline`: The absolute optimized vanilla basic.
* `mainline`: Spiced with gameplay changes.

### Files
* `<branch>.zip`: The full pruned installation.
* `<branch>_dlc.zip`: Pre-generated DashLoader cache.
* `<branch>_quilt.zip`: The full pruned installation, but auto-repackaged to Quilt instead.

## Frequently Asked Questions
### Why HMCL?
Other launchers do **NOT** come with built-in support for offline (non-premium) accounts. Support for offline accounts is crucial for this project, as premium accounts can only be obtained via traceable means of transactions, extremely dangerous to those who may get themselves targeted.

This is also the reason we ship modified versions of certain mods, to remove their requirements of premium accounts. We also encourage developers of these mods to enroll alternative measures, catering the non-premium players as well, namely **HDSkins** for their pony skin support.

### Why Fabric?
Fabric is by far the de-facto mod loader to target, if resource efficiency and stability is a concern.

#### Why not Quilt?
TL;DR, Quilt broke compatibility with a lot of Fabric mods.

When trying to port from Fabric in Minecraft 1.18.1, Quilt crashed every single time, despite themselves claiming to "support Fabric mods OOTB". Attempts at porting to Quilt later proved to be unfruitful, as such no further attempts were made.

Mist can already run fine with Fabric, and if Quilt's claim of "supporting Fabric mods" to be believed (which we never even experienced once), Quilt users can port Mist to Quilt themselves. For now, moving to Quilt offers no real advantage, apart from the few non-essential mods that are exclusively available for Quilt.

We (will begin to) offer Quilt variants, but please do not expect Quilt will be the focus.

#### Why not Forge?
Forge is clunky, and so is NeoForge in 1.20.1, as they practically abandoned development on this version. Moreover, Forge is now (and should have already been) dead.

There is no incentive to release a Forge or NeoForge spin in the future either.
