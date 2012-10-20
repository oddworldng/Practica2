#!/usr/bin/ruby
require 'rps'

rps = RockPaperScissors.new
print "Introduce tu jugada (rock, paper, scissors): "
STDOUT.flush
jugada = gets.chomp
rps.play jugada
rps = nil
