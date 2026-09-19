@echo off
title HandCreate Camera
cd /d "%~dp0"
echo.
echo  Open this URL after server starts:
echo    http://localhost:3000/HandCreate.html
echo.
echo  Click "Start Creating" then ALLOW camera.
echo  Keep this window open.
echo.
start "" "http://localhost:3000/HandCreate.html"
where python >nul 2>nul && python -m http.server 3000 && goto :eof
where py >nul 2>nul && py -m http.server 3000 && goto :eof
where npx >nul 2>nul && npx --yes serve -l 3000 . && goto :eof
echo Install Python from python.org (Add to PATH), then run this again.
pause
