# Step 1

# Instalar el rol de Active Directory Certificate Services
Install-WindowsFeature ADCS-Cert-Authority -IncludeManagementTools

# Configurar la CA para Shakira
Install-AdcsCertificationAuthority -CAType StandaloneRootCA

# Mensaje de éxito
Write-Host "La CA 'Shakira' ha sido instalada correctamente."