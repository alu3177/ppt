#!/usr/bin/ruby
# encoding: utf-8

#
#	Fernando González López-Peñalver (alu3177)
#	alu0100256543@ull.edu.es
#
#	PRÁCTICA 2 LPP: Juego Piedra, Papel, Tijeras
#       Versión basada en la expuesta en RossetaCode
#

EMPATE = "                            Empate..."
WIN = "                         Has Ganado!"
LOOSE = "                        Otra vez será"
# Obtenemos el nombre de la máquina (strip elimina \n)
machine = `hostname`.strip 

# Posibles jugadas
jugadas = [:piedra, :papel, :tijeras]

# Hash con las combinaciones de X gana a Y (x => y)
gana = {
    :piedra => :tijeras,
    :papel => :piedra,
    :tijeras => :papel
}

# Manejo de parametros de entrada
if (ARGV.count == 1)and(jugadas.include?(ARGV[0].downcase.to_sym))
	player = ARGV[0].to_sym
else
	raise ArgumentError, "Debe proporcionar un parametro de los siguientes: piedra, papel o tijeras"
end

# Generamos una jugada de la máquina
oponente = jugadas.sample

puts "        ## JUGADOR ##                         ## #{$machine} ##"
puts "           #{player.to_s.capitalize}               VS               #{oponente.to_s.capitalize}"
puts ""

case player
    when oponente
        puts EMPATE
    when gana[oponente] # Buen grado de legibilidad
        puts LOOSE
    else
        puts WIN
end
