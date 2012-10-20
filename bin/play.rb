#!/usr/bin/ruby
require 'rps'

print "Introduce tu jugada (rock, paper, scissors): "
STDOUT.flush
jugada = gets.chomp
RockPaperScissors.play(jugada)
#rps = nil
