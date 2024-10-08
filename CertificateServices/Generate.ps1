# Step 2

# Archivo de configuración para la solicitud de certificado
$csrConfig = @"
[NewRequest]
Subject = "CN=www.horchata.sv"
KeySpec = 1
KeyLength = 2048
Exportable = TRUE
MachineKeySet = TRUE
ProviderName = "Microsoft RSA SChannel Cryptographic Provider"
ProviderType = 24
RequestType = PKCS10
KeyUsage = 0xa0
[EnhancedKeyUsageExtension]
OID = 1.3.6.1.5.5.7.3.1 ; Server Authentication
"@

# Guardar el archivo de configuración
$csrConfig | Out-File -FilePath "C:\Certs\webcert.inf"

# Generar la solicitud de certificado
certreq -new C:\Certs\webcert.inf C:\Certs\webcert.req

Write-Host "CSR generado en C:\Certs\webcert.req"