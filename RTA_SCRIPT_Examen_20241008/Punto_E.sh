#!/bin/bash
#Agregué el "-n" para evitar el salto de linea cuando agregue la cantidad de memoria.
echo -n "MemTotal:              " > ~/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt
free -h | grep Mem | awk '{print $2}' | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt

echo "Chassi Information" | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt
#Usamos el SUDO porque estamos solicitando informacion de una carepta donde solo podemos obtener información con root
sudo dmidecode -t chassis | grep Manufacturer | tee -a ~/repogit/UTNFRA_SO_1P2C_2024_Sohrobigarat/RTA_ARCHIVOS_Examen_20241008/Filtro_Basico.txt

