# Step 3

# Import the Active Directory module
Import-Module ActiveDirectory

# Get all Organizational Units
$OUs = Get-ADOrganizationalUnit -Filter *

# Display all OUs
Write-Output "Organizational Units:"
foreach ($OU in $OUs) {
    Write-Output $OU.DistinguishedName
}

# Get all users
$Users = Get-ADUser -Filter *

# Display all users
Write-Output "`nUsers:"
foreach ($User in $Users) {
    Write-Output $User.SamAccountName
}