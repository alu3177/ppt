#!/usr/bin/ruby

#
#	Fernando González López-Peñalver (alu3177)
#	alu0100256543@ull.edu.es
#
#	PRÁCTICA 2 LPP: Juego Piedra, Papel, Tijeras
#

EMPATE = "      Empate"
WIN = "      ¡Has Ganado!"
LOOSE = "      Otra vez será"
$machine = `hostname`.strip # Obtenemos el nombre de la máquina (strip elimina \n)

