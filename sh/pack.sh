#!/bin/bash
# shx Standard Utility
#
# Customizable bundle emitter (upcoming)
#
# Clean up the previous builds
mkdir -p build
rm build/*.zip 2>/dev/null
echob "Creating ZIP archives..."
zip -r0v build/baseline.zip \
	HMCL-3.5.5.jar
zip -r9v build/baseline.zip \
	LICENSE README.md gpuEnforce.sh toTheDir.sh \
	.minecraft/launcher_profiles.json
cp build/baseline.zip build/mainline.zip