#!/usr/bin/ruby
# Piedra, papel, tijeras
# Lenguajes y paradigmas de la programación

class RockPaperScissors
	
	@@defeat = {:rock => :scissors, :paper => :rock, :scissors => :paper}
	@@throws = @@defeat.keys

	#class << self

		def play(player_throw)

			player_throw = player_throw.to_sym
			raise SyntaxError, "Se esperaba uno de los siguientes '#{@@throws.join(', ')}'" unless @@throws.include?player_throw
			computer_throw = @@throws[rand(@@throws.size)]
			

			if (player_throw == computer_throw)
				puts "Hay un empate.\n Jugada del computador: #{computer_throw}\n Jugada tuya: #{player_throw}"
			elsif (player_throw == @@defeat[computer_throw])
				puts "Ha ganado la maquina: #{computer_throw} gana a #{player_throw}"
			else
				puts "Muy bien, has ganado: #{player_throw} gana a #{computer_throw}"
			end # end - if

		end # end - play
	#end # end - classmethod
end # end - class
