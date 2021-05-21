@ECHO OFF

:choice
set /P c=Do you want to download/update Takipack?[Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere

echo "Installing Airfishy's Pack"
powershell Compress-Archive -Path .\* -DestinationPath "taki.zip"
move "taki.zip" "%appdata%\.minecraft\resourcepacks"
echo "Success!"
pause
exit


:somewhere_else

echo "Canceled"
exit

