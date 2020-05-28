FROM maven:3.6.3-jdk-8 as build
WORKDIR /graphhopper
COPY graphhopper .
RUN mvn package -DskipTests
RUN java -jar matching-web/target/graphhopper-map-matching-web-1.0-SNAPSHOT.jar import map-data/greater-london-latest.osm.pbf --vehicle foot
