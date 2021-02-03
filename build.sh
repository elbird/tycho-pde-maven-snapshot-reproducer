#!/bin/sh
# First install the snapshot depency
mvn -f snapshot-dep/pom.xml clean install
# Then run the tycho build
mvn -f tycho-build/pom.xml clean verify
