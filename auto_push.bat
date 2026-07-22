@echo off
:loop
echo --------------------------------------------------
echo Running automated backup sync to personal repository...
echo --------------------------------------------------

:: Stage all local RTL, testbenches, and documentation updates
git add .

:: Commit with a timestamp
git commit -m "Automated backup sync: %date% %time%"

:: Push ONLY to your personal main branch
git push origin main

echo.
echo Sync completed safely. Waiting 5 minutes for next loop...
timeout /t 300 /nobreak
goto loop