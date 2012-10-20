#!/usr/bin/ruby
require 'rps.rb'
require 'test/unit'

class TestRockPaperScissors < Test::Unit::TestCase

	def correct_answer(x)
		return true if x == /Hay un empate/
		return true if x == /Ha ganado la maquina; (\w+) defeats(\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
		return true if x == /Muy bien, has ganado; (\w+) beats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
	end

	def test_play
		30.times do
			assert correct_answer(RockPaperScissors.play('scissors'))
		end

		30.times do
			assert correct_answer(RockPaperScissors.play('paper'))
		end

		30.times do
			assert correct_answer(RockPaperScissors.play('rock'))
		end
		
	end

	def test_wrong_play
		assert_raise (SintaxError) {RockPaperScissors.play('fire')}
	end

	def setup
		# se ejecuta antes de cada prueba
	end

	def teardown
		# se ejecuta despues de cada prueba
	end


	def test_variety
		answers = []
		20.times do
			answers.push RockPaperScissors.throws
		end
		assert(answers.uniq.length >= 3, "answers.uniq.length = #{answers.uniq.length} answers.length = #{answers.length}")
	end

end
