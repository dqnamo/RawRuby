#!/bin/ruby

require 'json'
require 'stringio'

# Complete the checkMagazine function below.
def checkMagazine(magazine, note)

    possible = "Yes"

    note.each do |word|
        if !(magazine.include?(word))
            possible = "No"
            break
        else
            magazine.delete_at(magazine.index(word))
        end
    end

    puts possible
end

mn = gets.rstrip.split

m = mn[0].to_i

n = mn[1].to_i

magazine = gets.rstrip.split(' ').map(&:to_s)

note = gets.rstrip.split(' ').map(&:to_s)

checkMagazine magazine, note
