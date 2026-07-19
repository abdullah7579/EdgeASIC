@echo off
:loop
git add .
git commit -m "Automated backup sync: %date% %time%"
git push origin main
timeout /t 300
goto loop