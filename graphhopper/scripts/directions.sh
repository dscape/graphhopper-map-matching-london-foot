#!/bin/sh
java -jar matching-web/target/graphhopper-map-matching-web-1.0-SNAPSHOT.jar server config.yml > /dev/null 2>&1 &
sleep 10
cat | curl -XPOST -s -H "Content-Type: application/gpx+xml" -d @/dev/stdin "localhost:8989/match?vehicle=foot&type=json" && pkill -9 java