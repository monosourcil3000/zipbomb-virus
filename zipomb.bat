@echo off
:: Extract the ZIP file in the same folder as this batch file

:: Get the path of the batch file and set the working directory to the same location
set "currentDir=%~dp0"
cd /d "%currentDir%"

:: Find the first .zip file in the directory
for %%f in (*.zip) do (
    echo Death grows near %%f...
    powershell -command "Expand-Archive -Path '%%f' -DestinationPath '%currentDir%'"
)

echo say goodbye to your computer.
pause
