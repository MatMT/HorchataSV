# # app.ps1

# # Habilitar reinicio automático y continuar después del reinicio
# $script:RebootRequired = $false

# function Run-Script {
#     param (
#         [string]$ScriptPath,
#         [string]$ServiceName
#     )

#     Write-Host "Ejecutando configuración para $ServiceName..."

#     try {
#         # Ejecuta el script y captura errores si ocurre un fallo
#         . $ScriptPath
#         Write-Host "$ServiceName configurado correctamente. " -ForegroundColor Green
#     }
#     catch {
#         Write-Host "Error al configurar $ServiceName : $_" -ForegroundColor Red
#         exit 1
#     }
    
#     # Si el servicio requiere reiniciar el sistema, se establece el flag
#     if (Test-PendingReboot) {
#         $script:RebootRequired = $true
#         Write-Host "$ServiceName requiere reinicio." -ForegroundColor Yellow
#     }
# }

# # Función para verificar si un reinicio está pendiente
# function Test-PendingReboot {
#     # Verifica si hay claves en el registro que indiquen que un reinicio es necesario        
#     $PendingReboot = Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending' -ErrorAction SilentlyContinue

#     return $PendingReboot -ne $null
# }

# # Iniciar la ejecución de los scripts de configuración

# Run-Script ".\ActiveDirectory.ps1" "Active Directory"
# Run-Script ".\AD-UnidadOrganizativa.ps1" "Unidad Organizativa"

# # Si alguno de los servicios necesita reinicio
# if($script:RebootRequired) {
#     Write-Host "Reiniciando el sistema en 10 segundos... " -ForegroundColor Yellow
#     Start-Sleep -Seconds 10
#     Restart-Computer -Force
#     exit
# } else {
#     Write-Host "Todos los servicios fueron configurados correctamente sin necesidad de reiniciar." -ForegroundColor Green
# }

Write-Host "Hello :). By -Elidev" -ForegroundColor DarkCyan