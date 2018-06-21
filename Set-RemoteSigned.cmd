@echo off
echo Effective Execution Policy before
powershell -noprofile -command "get-executionpolicy"
pause
echo
echo Changing Execution Policy
powershell -noprofile -executionpolicy bypass -command "&{start-process powershell -argumentlist 'set-executionpolicy remotesigned' -verb runas}"
pause
echo
echo Effective Execution Policy after
powershell -noprofile -command "get-executionpolicy"
pause