# Step 3

#IPv6 Scope Configuration
Add-DhcpServerv6Scope -Name "Scopev6" -Prefix 2001:db8:dea:b:: -State Active

# DNS Configuration
Set-DhcpServerv6OptionValue -DnsServer 2001:db8:dea:b::2 
# Set-DhcpServerv6OptionValue -Prefix 2001:db8:dea:b:: -DnsServer 2001:db8:dea:b::2

# Range Exclussion
Add-DhcpServerv6ExclusionRange -Prefix 2001:db8:dea:b:: -StartRange 2001:db8:dea:b::1 -EndRange 2001:db8:dea:b::99
Add-DhcpServerv6ExclusionRange -Prefix 2001:db8:dea:b:: -StartRange 2001:db8:dea:b::201 -EndRange 2001:db8:dea:b:ffff:ffff:ffff:ffff