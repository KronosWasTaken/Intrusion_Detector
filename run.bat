@echo off
cd /d "%~dp0"
start cmd /k "cd Master && python interface.py"
timeout /t 5
start cmd /k "cd Client && go run main.go" 