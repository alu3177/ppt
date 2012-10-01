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

jugadas = [:piedra, :papel, :tijeras]

if (ARGV.count == 1)and(jugadas.include?(ARGV[0].downcase.to_sym))
	player = ARGV[0].to_sym
	puts player
else
	raise ArgumentError, "Debe proporcionar un parametro de los siguientes: piedra, papel o tijeras"
end
