# Configurar zona inversa IPv4

# Crear la zona inversa para la subred 172.16.0.0/24
dnscmd /ZoneAdd 0.16.172.in-addr.arpa /Primary

# Agregar registros PTR para IPv4
dnscmd /RecordAdd 0.16.172.in-addr.arpa 2 PTR servidor.horchata.sv
dnscmd /RecordAdd 0.16.172.in-addr.arpa 4 PTR anfitrion.horchata.sv
dnscmd /RecordAdd 0.16.172.in-addr.arpa 21 PTR pineda.horchata.sv
dnscmd /RecordAdd 0.16.172.in-addr.arpa 22 PTR martin.horchata.sv
dnscmd /RecordAdd 0.16.172.in-addr.arpa 23 PTR javi.horchata.sv
dnscmd /RecordAdd 0.16.172.in-addr.arpa 24 PTR marcelo.horchata.sv
