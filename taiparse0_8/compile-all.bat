@echo off
rem  SUBJ:  Batch file for compiling code in analyzer.
rem  CR:    01/24/06 AM.
rem  CALL:  compile-all


if "%1" == "" goto ok

:bad
echo.
echo Usage: compile-all
echo        Compiles analyzer projects.
goto exit

:ok

compile-relu
if errorlevel 4 goto lowmemory
if errorlevel 2 goto abort

compile-rel
if errorlevel 4 goto lowmemory
if errorlevel 2 goto abort

rem VisualText user may not have access to those below.
rem remove them if so.

compile-devu
if errorlevel 4 goto lowmemory
if errorlevel 2 goto abort

compile-dev
if errorlevel 4 goto lowmemory
if errorlevel 2 goto abort

goto exit

:lowmemory
echo.
echo Error in compile-all.
echo Some projects may not have compiled.
goto exit

:abort
echo.
echo Backup aborted.
goto exit

:exit
