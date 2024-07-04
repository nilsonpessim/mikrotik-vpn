## MikroTik VPN

* Certificado OpenVPN:

```
/certificate
add name=certificate common-name=certVPN key-usage=key-cert-sign,crl-sign
sign certificate ca-crl-host=ip-address name=certVPN
```
