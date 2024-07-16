@echo off
REM Compile all the .cpp files and generate the executable
g++ "%~dp0\..\*.cpp" -o "%~dp0\..\a.exe"

REM Check if compilation was successful
IF NOT ERRORLEVEL 1 (
    REM Run the compiled executable in a new Command Prompt window
    start cmd /k "%~dp0\..\a.exe"
) ELSE (
    REM Display an error message if compilation fails
    echo Compilation failed.
)

REM Pause the terminal to view any error messages
pause
