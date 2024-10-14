# Configurar zona directa IPv6

# Agregar registros AAAA (IPv6)
dnscmd /RecordAdd horchata.sv servidor AAAA 2001:DB8:DEA:B::2
dnscmd /RecordAdd horchata.sv servicio-web AAAA 2001:DB8:DEA:B::2
dnscmd /RecordAdd horchata.sv anfitrion AAAA 2001:DB8:DEA:B::4
dnscmd /RecordAdd horchata.sv pineda AAAA 2001:DB8:DEA:B::21
dnscmd /RecordAdd horchata.sv martin AAAA 2001:DB8:DEA:B::22
dnscmd /RecordAdd horchata.sv javi AAAA 2001:DB8:DEA:B::23
dnscmd /RecordAdd horchata.sv oscar AAAA 2001:DB8:DEA:B::24
