@echo off

REM Nome da conexão VPN
set VPN_NAME=T3CHL4BS-PPTP

REM Endereço do servidor VPN
set VPN_SERVER=servidor.vpn.net

REM Nome de usuário e senha
set VPN_USER=user
set VPN_PASS=pass

REM Adiciona uma nova entrada VPN PPTP
powershell -command "Add-VpnConnection -Name '%VPN_NAME%' -ServerAddress '%VPN_SERVER%' -TunnelType Pptp -RememberCredential -Force"

REM Conecta à VPN
rasdial "%VPN_NAME%" %VPN_USER% %VPN_PASS%

echo VPN PPTP configurada e conectada!
pause
