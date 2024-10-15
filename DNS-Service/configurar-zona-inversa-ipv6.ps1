# Step 6

# Configurar zona inversa IPv6

# Crear la zona inversa para la red IPv6 2001:DB8:DEA:B::/64
dnscmd /ZoneAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa /Primary

# Agregar registros PTR para IPv6
dnscmd /RecordAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa 2 PTR servidor.horchata.sv
dnscmd /RecordAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa 4 PTR anfitrion.horchata.sv
dnscmd /RecordAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa 21 PTR pineda.horchata.sv
dnscmd /RecordAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa 22 PTR martin.horchata.sv
dnscmd /RecordAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa 23 PTR javi.horchata.sv
dnscmd /RecordAdd B.EA.D.D.B.0.1.0.0.2.ip6.arpa 24 PTR marcelo.horchata.sv
