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

def PiedraPapelTijeras(jugador, oponente)
    puts "        ## JUGADOR ##                         ## #{$machine} ##"
    puts "           #{jugador.to_s.capitalize}               VS               #{oponente.to_s.capitalize}"
    case jugador
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
end

def JugadaMaquina
    random = rand(599)
    case random
        when 0..199
            return :piedra
        when 200..399
            return :papel
        when 400..599
            return :tijeras
    end
end

PiedraPapelTijeras(:tijeras,JugadaMaquina())

