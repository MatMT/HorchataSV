# Step 3

# Import the Active Directory module
Import-Module ActiveDirectory

# Get all Organizational Units
$OUs = Get-ADOrganizationalUnit -Filter *

# Display all OUs
Write-Host "====== Organizational Units ======" -ForegroundColor Cyan
foreach ($OU in $OUs) {
    Write-Host $OU.DistinguishedName -ForegroundColor Yellow
}

# Get all users
$Users = Get-ADUser -Filter *

# Display all users
Write-Host "`n====== Users ======" -ForegroundColor Cyan
foreach ($User in $Users) {
    Write-Host $User.SamAccountName -ForegroundColor Yellow
}