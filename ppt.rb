#!/usr/bin/ruby
# encoding: utf-8

#
#	Fernando González López-Peñalver (alu3177)
#	alu0100256543@ull.edu.es
#
#	PRÁCTICA 2 LPP: Juego Piedra, Papel, Tijeras
#           Versión implementada con las sentencias de control CASE y WHEN
#

EMPATE = "                            Empate..."
WIN = "                         Has Ganado!"
LOOSE = "                        Otra vez será"
machine = `hostname`.strip # Obtenemos el nombre de la máquina (strip elimina \n)

jugadas = [:piedra, :papel, :tijeras]

if (ARGV.count == 1)and(jugadas.include?(ARGV[0].downcase.to_sym))
	player = ARGV[0].to_sym
else
	raise ArgumentError, "Debe proporcionar un parametro de los siguientes: piedra, papel o tijeras"
end

oponente = jugadas.sample; # Generamos una jugada de la máquina
puts "        ## JUGADOR ##                         ## #{$machine} ##"
puts "           #{player.to_s.capitalize}               VS               #{oponente.to_s.capitalize}"
puts ""
case player
    when :piedra
        case oponente
            when :piedra
                puts EMPATE
            when :papel
                puts LOOSE
            when :tijeras
                puts WIN
        end
    when :papel
        case oponente
            when :piedra
                puts WIN
            when :papel
                puts EMPATE
            when :tijeras
                puts LOOSE
        end
    when :tijeras
        case oponente
            when :piedra
                puts LOOSE
            when :papel
                puts WIN
            when :tijeras
                puts EMPATE
        end
end


