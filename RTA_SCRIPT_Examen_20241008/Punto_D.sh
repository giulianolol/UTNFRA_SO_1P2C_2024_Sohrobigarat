#!/bin/bash
#A diferencia del punto anterior, acá no es necesario usar el SUDO ya que no estamos modificando la carpeta raíz (root)
mkdir -p /home/vagrant/Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},cliente/cartas_{1..100}}

#Se agrega un comando para verificar la correcta ejecución
tree /home/vagrant/Estructura_Asimetrica/ --noreport |pr -T -s'' -w 80 --column 4
