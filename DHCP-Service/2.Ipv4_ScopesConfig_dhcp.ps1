# Step 2

#IPv4 Scope Configuration
Add-DhcpServerv4Scope -Name "Scopev4" -StartRange 172.16.0.50 -EndRange 172.16.0.100 -SubnetMask 255.255.255.0 -State Active

# DNS Configuration
Set-DhcpServerv4OptionValue -OptionId 6 -Value "172.16.0.2" -ScopeId "172.16.0.0"
