#! /usr/bin/env ruby

puts "Program goes here..."

def gamemaster
  random_word = ["hello", "count", "user", "launch", "academy"]
  range = random_word.size 
  random_word[rand(range)]
end

def show_progress
  

end

puts gamemaster
