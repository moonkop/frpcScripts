pushd %~dp0
nssm stop frp 
nssm remove frp confirm
pause