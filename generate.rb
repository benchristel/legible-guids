#!/usr/bin/env ruby

# Takes a list of syllables on STDIN
SYLLABLES = STDIN.each_line.map(&:chomp)

require 'securerandom'

def main
  20.times do
    puts generate
  end
end

def generate
  "#{word 3}-#{word 2}-#{word 2}"
end

def syl
  pick(SYLLABLES)
end

def word syllables
  syllables.times.map { pick(SYLLABLES) }.join('')
end

def pick(array)
  array[(random * array.length).floor]
end

def random
  SecureRandom.random_number
end

main
