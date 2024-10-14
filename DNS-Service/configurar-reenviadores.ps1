# Configurar reenviadores para consultas externas

# Configurar los reenviadores a los servidores DNS públicos de Google
dnscmd /ResetForwarders 8.8.8.8 8.8.4.4

# Nota: Para verificar la configuración, use nslookup desde otra máquina en la red
# Ejemplo:
# nslookup servidor.horchata.sv
# nslookup 172.16.0.2
