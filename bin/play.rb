#!/usr/bin/ruby
require 'rps.rb'

#rps = RockPaperScissors.new
print "Introduce tu jugada (rock, paper, scissors): "
STDOUT.flush
jugada = gets.chomp
RockPaperScissors.play(jugada)
#rps = nil
