#!/usr/bin/env bash
set -euo pipefail

# Garante que o Gradle não quebre porque tá rodando no Docker
unset JAVA_TOOL_OPTIONS

# Garante que o gradlew está executável
chmod +x ./gradlew

# Força profile dev por padrão (pode ser sobrescrito pelo docker-compose)
PROFILE="${SPRING_PROFILES_ACTIVE:-dev}"

# Executa via bootRun (devtools e hot reload ativos)
./gradlew --no-daemon bootRun \
  -Dspring-boot.run.profiles="$PROFILE" \
  -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"
