@echo off
IF %COMP% == LAPTOP GOTO start
IF %COMP% == HOME GOTO home

:start
C:\Python33\Scripts\ipython3 notebook
goto end

:home
C:\Python33b\Scripts\ipython3 notebook

:end
echo CIAO


