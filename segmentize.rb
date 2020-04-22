#!/usr/bin/env ruby

# Takes in a text on stdin and outputs unique 3-letter
# segments on stdout, one per line.

def segments word
  (0..word.length-3).map do |i|
    word[i...i+3]
  end
end

STDIN.each_line.map(&:chomp).flat_map { |line|
  line.split(/[^a-z]+/)
}.flat_map(&method(:segments))
  .uniq
  .sort
  .each(&method(:puts))
