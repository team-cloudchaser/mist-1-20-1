#!/bin/bash
# shx Standard Utility
#
# Customizable bundle emitter (upcoming)
#
# Clean up the previous builds
mkdir -p build
rm build/*.zip 2>/dev/null
echob "Creating root ZIP archives..."
zip -r0v build/baseline.zip \
	HMCL-3.5.5.jar
zip -r9v build/baseline.zip \
	LICENSE README.md gpuEnforce.sh toTheDir.sh .hmcl.json \
	.minecraft/launcher_profiles.json
cp build/baseline.zip build/mainline.zip
echob "Bundling the Baseline pack..."
zip -r0v build/baseline.zip \
	".minecraft/versions/1.20.1 Fabric Baseline/1.20.1 Fabric Baseline.jar" \
	".minecraft/versions/1.20.1 Fabric Baseline/mods" \
	".minecraft/versions/1.20.1 Fabric Baseline/resourcepacks" \
	".minecraft/versions/1.20.1 Fabric Baseline/shaderpacks"
zip -r9v build/baseline.zip \
	".minecraft/versions/1.20.1 Fabric Baseline/config" \
	".minecraft/versions/1.20.1 Fabric Baseline/1.20.1 Fabric Baseline.json" \
	".minecraft/versions/1.20.1 Fabric Baseline/options.txt"
echob "Bundling the Mainline pack..."
zip -r0v build/mainline.zip \
	".minecraft/versions/1.20.1 Fabric Mainline/1.20.1 Fabric Mainline.jar" \
	".minecraft/versions/1.20.1 Fabric Mainline/mods" \
	".minecraft/versions/1.20.1 Fabric Mainline/resourcepacks" \
	".minecraft/versions/1.20.1 Fabric Mainline/shaderpacks"
zip -r9v build/mainline.zip \
	".minecraft/versions/1.20.1 Fabric Mainline/config" \
	".minecraft/versions/1.20.1 Fabric Mainline/1.20.1 Fabric Mainline.json" \
	".minecraft/versions/1.20.1 Fabric Mainline/options.txt"