#!/bin/bash
echo -n "Mi IP Publica es: " > /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
curl -s ifconfig.me | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
echo "" | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
echo -n "Mi usuario es:" | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
whoami | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
echo -n "El Hash de mi usuario es: " | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
sudo grep $(whoami) /etc/shadow | cut -d: -f2 | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
echo -n "La URL de mi repositorio es: " | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt
git remote get-url origin | tee -a /home/vagrant/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Avanzado.txt

