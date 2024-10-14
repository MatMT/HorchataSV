# DHCP Windows Feature Installation
Install-WindowsFeature -Name DHCP -IncludeManagementTools

# Add DnsName and IP Address
Add-DhcpServerInDC -DnsName "horchata.sv" -IpAddress "172.16.0.2"