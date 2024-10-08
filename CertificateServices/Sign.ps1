# Step 3

# Firma del certificado con la CA Shakira
certreq -submit -attrib "CertificateTemplate:WebServer" C:\Certs\webcert.req C:\Certs\webcert.cer

Write-Host "Certificado firmado por Shakira disponible en C:\Certs\webcer.cer"