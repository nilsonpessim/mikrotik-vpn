@echo off

REM Nome da conexão VPN
set VPN_NAME=T3CHL4BS-L2TP

REM Endereço do servidor VPN
set VPN_SERVER=servidor.vpn.net

REM Nome de usuário e senha
set VPN_USER=user
set VPN_PASS=pass
set IPSEC=secret

REM Adiciona uma nova entrada VPN
powershell -command "Add-VpnConnection -Name '%VPN_NAME%' -ServerAddress '%VPN_SERVER%' -TunnelType L2tp -L2tpPsk '%IPSEC%' -AuthenticationMethod Pap -RememberCredential -Force"

REM Conecta à VPN
rasdial "%VPN_NAME%" %VPN_USER% %VPN_PASS%

echo VPN L2TP configurada e conectada!
pause
