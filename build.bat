@echo off
chcp 65001 >nul
set "TARGET=D:\gost-panel"

echo [1/2] Копирование файлов...
if not exist "%TARGET%" mkdir "%TARGET%"
copy /Y "config.json" "%TARGET%\" >nul
copy /Y "index.html" "%TARGET%\" >nul
copy /Y "icon.png" "%TARGET%\" >nul

echo [2/2] Сборка gost-panel.plugin...
if exist "gost-panel.plugin" del /f /q "gost-panel.plugin"
tar -c --format zip -f "gost-panel.plugin" config.json index.html icon.png

echo ГОТОВО
pause
