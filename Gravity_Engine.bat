@echo off

set "source_dir=C:/Users/Craig/projects/C++/Gravity_Engine/"
set "build_dir=C:/Users/Craig/projects/C++/Gravity_Engine/out/build"

if not exist "%build_dir%" mkdir "%build_dir%"

cd "%build_dir%"

@echo on
cmake "%source_dir%"
@echo off

REM Check if the CMake configuration was successful
if %errorlevel% neq 0 (
    echo "Error: CMake configuration failed."
    pause
    exit /b 1
)

mingw32-make

REM Check if the build was successful
if %errorlevel% neq 0 (
    echo "Error: Build failed."
    pause
    exit /b 1
)


REM Run the generated executable
Gravity_Engine.exe

echo "Build and execution completed successfully."
pause