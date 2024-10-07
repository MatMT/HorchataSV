# ActiveDirectory.ps1 
# Instalar y configurar Active Directory para horchata.sv - By Elidev

# Instalar
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagmentTools

# Importar el módulo de despliegue de ADDS
Import-Module ADDSDeployment

# Promover el servidor a controlador de dominio
Install-ADDSForest `
    -CreateDnsDelegation:$false `
    -DatabasePath "C:\Windows\NTDS" `
    -DomainName "horchata.sv" `
    -DomainNetbiosName "HORCHATA" `
    -ForestMode "WinThreshold" `
    -NoRebootOnCompletion:$false `
    -SysvolPath "C:\Windows\SYSVOL" `
    -Force:$true

