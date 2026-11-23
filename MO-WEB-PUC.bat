@echo off
chcp 65001 >nul
title PUC Office Equipment - Local Server
cd /d "%~dp0"
echo ========================================================
echo   PUC OFFICE EQUIPMENT - KHOI CHAY WEBSITE TREN MAY
echo ========================================================
echo.
where python >nul 2>nul
if %errorlevel%==0 (
    echo Dang mo may chu noi bo tai http://localhost:3000 ...
    echo (KHONG tat cua so nay khi dang xem web)
    start "" "http://localhost:3000/index.html"
    python -m http.server 3000
) else (
    echo Khong tim thay Python, dang mo truc tiep index.html ...
    start "" "index.html"
)
