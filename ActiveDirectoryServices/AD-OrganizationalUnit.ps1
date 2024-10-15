# Step 2

# Crear las unidades organizativas del Active Directory

# - Nivel 1     =============================================================
New-ADOrganizationalUnit -Name "Gerencia General" -Path "DC=horchata,DC=sv"

#   + Presidente
New-ADUser -Name "Benito Martinez" -UserPrincipalName "benito.martinez@horchata.sv" -Path "OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Meportobonito23" -AsPlainText -Force) -Enabled $true

#   - Nivel 2   =============================================================
New-ADOrganizationalUnit -Name "Departamento Comercial" -Path "OU=Gerencia General,DC=horchata,DC=sv"

#   - Compras   ================================
New-ADOrganizationalUnit -Name "Compras" -Path "OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv"

#   + Secretaria 
New-ADUser -Name "Shaki Mebarack" -UserPrincipalName "shaki.mebarack@horchata.sv" -Path "OU=Compras,OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Factura23" -AsPlainText -Force) -Enabled $true

#   + Cordinadora
New-ADUser -Name "Rosalia Tobela" -UserPrincipalName "rosalia.tobela@horchata.sv" -Path "OU=Compras,OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Motomami23" -AsPlainText -Force) -Enabled $true

#   - Ventas    ================================
New-ADOrganizationalUnit -Name "Ventas" -Path "OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv"

#   + Supervisor
New-ADUser -Name "Kennard Pineda" -UserPrincipalName "kennardpineda@horchata.sv" -Path "OU=Ventas,OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Password01" -AsPlainText -Force) -Enabled $true

#   + Vendedor
New-ADUser -Name "Marcelo Cruz" -UserPrincipalName "marcelocruz@horchata.sv" -Path "OU=Ventas,OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Password02" -AsPlainText -Force) -Enabled $true

#   - Diseño    ================================
New-ADOrganizationalUnit -Name "Diseño" -Path "OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv"

#   + Secretaria
New-ADUser -Name "Yanira Berrios" -UserPrincipalName "yanira.berrios@horchata.sv" -Path "OU=Diseño,OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Corazonbello" -AsPlainText -Force) -Enabled $true

#   + Diseñador
New-ADUser -Name "Mateo Elias" -UserPrincipalName "mateoelias@horchata.sv" -Path "OU=Diseño,OU=Departamento Comercial,OU=Gerencia General,DC=horchata,DC=sv" -AccountPassword (ConvertTo-SecureString "Password04" -AsPlainText -Force) -Enabled $true
