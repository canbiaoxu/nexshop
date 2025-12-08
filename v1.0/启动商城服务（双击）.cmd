@echo off

@REM 杀死占用80端口的程序
for /f "tokens=5" %%a in ('netstat -ano^|findstr ":80 .*LISTENING"') do taskkill /f /pid %%a>nul 2>&1

@REM 启动商城服务
start static\run.dist\run.exe
