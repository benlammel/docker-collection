#!/bin/sh
## Licensed under the terms of http://www.apache.org/licenses/LICENSE-2.0

## env | sort
exec "$JAVA_HOME/bin/java" -Xmx2048m -Xms2048m -jar "/fuseki/fuseki-server.jar" "$@"
