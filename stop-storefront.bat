@echo off
title Encerrando projeto Storefront (DIO)
echo =========================================
echo Encerrando containers e limpando ambiente
echo =========================================
echo.

cd /d "%~dp0"

:: Para e remove os containers do projeto
echo Parando containers...
docker compose down

:: Limpa redes não utilizadas
echo Limpando redes antigas...
docker network prune -f

:: Limpa volumes não utilizados
echo Limpando volumes antigos...
docker volume prune -f

:: Mostra status final
echo.
echo Containers parados e ambiente limpo.
echo.
pause
