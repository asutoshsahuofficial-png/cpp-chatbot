@echo off
setlocal
cd /d "%~dp0"

echo ===================================================
echo   Building Chatbot with Updated vcpkg Libraries
echo ===================================================

set PATH=C:\msys64\ucrt64\bin;%PATH%

where g++ >nul 2>nul
if errorlevel 1 (
    echo ERROR: g++ compiler not found in C:\msys64\ucrt64\bin
    echo Please make sure MSYS2 UCRT64 is installed.
    pause
    exit /b 1
)

echo Compiling chatbot.cpp...
g++ -std=c++17 -O2 -I"C:\msys64\ucrt64\include" -I. chatbot.cpp -o chatbot_updated.exe -L"C:\msys64\ucrt64\lib" -static-libgcc -static-libstdc++ -lcurl -lws2_32 -lwinpthread

if errorlevel 1 (
    echo.
    echo [ERROR] Build failed! Check the compiler errors above.
    pause
    exit /b 1
)

echo.
echo [SUCCESS] chatbot_updated.exe built successfully!
echo You can now launch it using run_updated.bat.
echo ===================================================
echo.
pause
endlocal
