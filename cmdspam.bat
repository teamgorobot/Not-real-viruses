@echo off
set stopfile=%temp%\cmd_stop.flag
del "%stopfile%" 2>nul

:loop
if exist "%stopfile%" goto end
start cmd /k call "%~f0" child
timeout /t 2 >nul
goto loop

:child
echo Child window started.
echo Close this window to stop all spawning.
pause >nul
echo stopped>"%stopfile%"
exit

:end
echo Spawning stopped.
