ECHO OFF
ECHO.
ECHO *************************************
ECHO * Auto installer for Windows 7/8/XP *
ECHO *************************************
ECHO.

REM GamePacksPath="C:\Users\%username%\AppData\Roaming\.minecraft\texturepacks"
SET GamePacksPath="%APPDATA%\.minecraft\texturepacks"
SET ModPacksPath="%~dp0*"

ECHO GamePacksPath = %GamePacksPath%
ECHO ModPacksPath = %ModPacksPath%
ECHO.
ECHO In GamePacksPath
DIR /s /a %GamePacksPath%

SET /p input1=Do you wish to install? [Y,N]?
IF /I "%input1%"=="y" (
	XCOPY %ModPacksPath% %GamePacksPath% /S /E /W
	IF EXIST "%GamePacksPath%\CMD_Install.bat" (
		DEL "%GamePacksPath%\CMD_Install.bat"
		)
	)

PAUSE