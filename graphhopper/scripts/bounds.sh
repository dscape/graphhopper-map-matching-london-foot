#!/bin/sh
cat | java -jar matching-web/target/graphhopper-map-matching-web-1.0-SNAPSHOT.jar getbounds /dev/stdin | head -n 1 | sed -n 's/bounds: \(.*\)/\1/p'