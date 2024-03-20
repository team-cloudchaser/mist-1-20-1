#!/bin/bash
patch="data/dehydration/hydration_items"
cd ".minecraft/versions/1.20.1 Fabric Mainline/mods"
zip -r9 "dehydration-1.3.5.jar" "${patch}/vanilla_items.json"
zip -r9 "Unicopia-1.3.3+1.20.1.jar" "${patch}/unicopia_food.json"
zip -r9 "midas-hunger-2.2.1+1.20.jar" "${patch}/midas_food.json"
zip -r9 "culinaire-3.0.0.jar" "${patch}/culinaire_food.json"
zip -r9 "promenade-4.1.1.jar" "${patch}/promenade_food.json"
zip -r9 "farmers-delight-fabric-1.4.3.jar" "${patch}/delight_food.json"
zip -r9 "ubes-delight-0.1.5b.jar" "${patch}/ube_delight_food.json"
zip -r9 "letsdo-vinery-1.4.7-fabric.jar" "${patch}/vinery_food.json"
zip -r9 "letsdo-nethervinery-fabric-2.0.2.jar" "${patch}/nether_vinery_food.json"
exit