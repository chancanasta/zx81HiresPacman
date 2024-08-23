@echo off
if "%1"=="" goto noParams
rem strip out .asm if it's there
set str=%1
set str=%str:.asm=%
echo.assembling %str%.asm
tasm -80 -b -s %str%.asm %str%.p
goto end

:noParams
echo You entered no params
echo:
echo Usage :
echo:
echo zxasm [asm file name]
echo:
:end
