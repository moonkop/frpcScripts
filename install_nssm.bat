@echo off
pushd %~dp0
set path=%~dp0
set bin=%path%service.bat

echo context dir:  %path%
echo binary:  %bin%

nssm install Frp %bin%
nssm set Frp Application %bin%
nssm set Frp AppDirectory %path%
nssm start Frp

pause