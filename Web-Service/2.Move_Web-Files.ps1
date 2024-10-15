# Step 2

# Ruta de origen y destino
$sourcePath = "C:\Users\Administrador\GitHub\HorchataSV\Web-Service\wwwroot"
$destinationPath = "C:\inetpub\wwwroot"

# Verificar si la carpeta de destino existe
if (-Not (Test-Path -Path $destinationPath)) {
    # Crear la carpeta inetpub\wwwroot si no existe
    New-Item -Path $destinationPath -ItemType Directory
    Write-Host "La carpeta $destinationPath ha sido creada."
} else {
    Write-Host "La carpeta $destinationPath ya existe."
}

# Mover los archivos del origen al destino
Get-ChildItem -Path $sourcePath -Recurse | ForEach-Object {
    $destFile = Join-Path -Path $destinationPath -ChildPath $_.Name
    Copy-Item -Path $_.FullName -Destination $destFile -Force
}

Write-Host "Los archivos han sido movidos a $destinationPath."
