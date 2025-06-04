#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

DEFAULT_JVM_OPTS=""
APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")
PRG="$0"

while [ -h "$PRG" ]; do
  ls=$(ls -ld "$PRG")
  link=$(expr "$ls" : '.*-> \(.*\)$')
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=$(dirname "$PRG")/"$link"
  fi
done

PRG_DIR=$(dirname "$PRG")
GRADLE_HOME=$PRG_DIR/gradle

exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS -classpath "$GRADLE_HOME/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
