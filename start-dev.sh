#!/usr/bin/env bash
set -e

# Garante que o Gradle Daemon NÃO herda JDWP pela variável global
unset JAVA_TOOL_OPTIONS

./gradlew --no-daemon bootRun \
  -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"
