@echo off
title Iniciando projeto Storefront (DIO)
echo =========================================
echo Iniciando Docker e containers do projeto
echo =========================================
echo.

:: Verifica se o Docker Desktop esta rodando
tasklist /FI "IMAGENAME eq Docker Desktop.exe" 2>NUL | find /I /N "Docker Desktop.exe">NUL
if "%ERRORLEVEL%"=="1" (
    echo Docker Desktop nao esta em execucao.
    echo Iniciando Docker Desktop...
    start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
    echo Aguardando inicializacao do Docker...
    timeout /t 25 >nul
)

cd /d "%~dp0"

:: Sobe os containers
echo Subindo containers...
docker compose up -d

:: Aguarda alguns segundos para inicializacao
timeout /t 10 >nul

:: Exibe status
echo.
echo Containers ativos:
docker ps

echo.
echo Aplicacao Storefront disponivel em:
echo   http://localhost:8081/storefront/swagger-ui.html
echo   http://localhost:8081/storefront/products
echo   RabbitMQ: http://localhost:15672 (admin / admin)
echo.
pause
