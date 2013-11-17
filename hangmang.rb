#! /usr/bin/env ruby

puts "Welcome to Hangman!"

  random_word = ["hello", "count", "user", "launch", "academy"]
  guess_word = random_word.sample
  guess_left = 10 

  letter_count = guess_word.split("").count
  hidden = "_" * letter_count 

  print "Word: #{hidden}(#{letter_count.size})" 
  puts " - Guesses remaining: #{guess_left}"
  print "Guess a single letter (a-z) or the entire word: "  
  puts words = gets.chomp

  while guess_left != 0  
  print "Word: #{hidden}(#{letter_count.size})" 
    if words.size > 1
      if words == guess_word
        puts "guess the word and you got it wrong."
        exit
      else
        puts "You guess the wrong word. You lose."
        exit
      end
    else
      if guess_word.include?(words) 
        puts "There is a guess"
      else
        puts "Sorry, no letters found"
      end
    end
    guess_left -= 1
    puts "Guesses remaining: #{guess_left}"
    print "Guess a single letter (a-z) or the entire word: "  
    puts words = gets.chomp
  end



