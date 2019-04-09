@echo off
@echo ================================================
@echo Welcome to ScpToolkit Fix ReStarter! v1.00
@echo       for Nefarius Software Solutions
@echo ================================================
@echo Simply place this BAT file anywhere you want
@echo and execute it to restart ScpToolkit - Ds3Service.
@echo Have Fun :)

@echo off

net stop Ds3Service
net start Ds3Service

pause