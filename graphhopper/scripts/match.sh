#!/bin/sh
cat | java -jar matching-web/target/graphhopper-map-matching-web-1.0-SNAPSHOT.jar match /dev/stdin > /dev/null; cat /dev/stdin.res.gpx