#!/bin/sh

DIR=$(dirname $0)
CLASSPATH="$DIR/jetty-runner.jar"
WEBAPP="$DIR/www"

exec /usr/bin/java \
  -server -Djava.awt.headless=true \
  -cp "$CLASSPATH" \
  org.eclipse.jetty.ee10.runner.Runner \
  --host localhost \
  $@ \
  $WEBAPP
