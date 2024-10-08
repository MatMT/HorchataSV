# Step 4

# Instalar el certificado en el almacén de certificados del servidor
Import-Certificate -FilePath "C:\Certs\webcert.cer" -CertStoreLocation Cert:\LocalMachine\My

Write-Host "Certificado instalado en el servidor."