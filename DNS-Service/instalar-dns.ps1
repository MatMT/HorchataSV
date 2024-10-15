# Step 1

# Instalar el rol de DNS

# Instalar el rol de DNS con herramientas de administración
Install-WindowsFeature DNS -IncludeManagementTools

# Iniciar el servicio DNS
Start-Service DNS

# Configurar el servicio DNS para iniciarse automáticamente
Set-Service -Name DNS -StartupType Automatic
