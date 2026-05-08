@echo off
title Calculadora
:inicio
cls
echo =========================================
echo             CALCULADORA BATCH
echo =========================================
echo.
echo [1] Adicao (+)
echo [2] Subtracao (-)
echo [3] Multiplicacao (*)
echo [4] Divisao (/)
echo [5] Sair
echo.
echo =========================================
set /p "opcao=Escolha uma opcao: "


    if %opcao% GEQ 1 if %opcao% LEQ 5 (
        goto Numeros 
    ) else (
        echo Voce digitou algo errado!
        pause
        goto inicio
    )


:Numeros


if "%opcao%"=="5" exit

echo.
set /p "n1=Digite o primeiro numero: "
set /p "n2=Digite o segundo numero: "


if "%opcao%"=="1" (
    set /a resultado=%n1% + %n2%
    set "op=+"
)
if "%opcao%"=="2" (
    set /a resultado=%n1% - %n2%
    set "op=-"
)
if "%opcao%"=="3" (
    set /a resultado=%n1% * %n2%
    set "op=*"
)
if "%opcao%"=="4" (
    if "%n2%"=="0" (
        echo.
        echo Erro: Divisao por zero nao permitida!
        pause
        goto inicio
    )
    set /a resultado=%n1% / %n2%
    set "op=/"
)


echo.
echo -------------------------
echo Resultado: %n1% %op% %n2% = %resultado%
echo -------------------------
echo.

pause
goto inicio