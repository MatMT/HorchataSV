#IPv4 Scope Configuration
Add-DhcpServerv4Scope -Name "Scopev4" -StartRange 172.16.0.50 -EndRange 172.16.0.100 -SubnetMask 255.255.255.0 -State Active

Set-DhcpServerv4OptionValue -OptionId 6 -Value "172.16.0.2" -Scopeld "172.16.0.0"

#IPv6 Scope Configuration
Add-DhcpServerv6Scope -Name "Scopev6" -Prefix 2001:db8:dea:b:: -State Active

Set-DhcpServerv6OptionValue -Prefix 2001:db8:dea:b:: -DnsServer 2001:db8:dea:b::2

Add-DhcpServerv6ExclusionRange -Prefix 2001:db8:dea:b:: -StartRange 2001:db8:dea:b::1 -EndRange 2001:db8:dea:b::99

Add-DhcpServerv6ExclusionRange -Prefix 2001:db8:dea:b:: -StartRange 2001:db8:dea:b::201 -EndRange 2001:db8:dea:b:ffff:ffff:ffff:ffff