#! /usr/bin/env ruby

puts "Welcome to Hangman!"

  random_word = ["array"]
  guess_word = random_word.sample
  guess_left = 10 

  letter_count = guess_word.split("").count
  hidden = []
  hidden << ("_" * letter_count) 

  answer = []
    letter_count.times do 
    answer << "_"
  end

  print "Word: #{answer}(#{letter_count.size}): " 
  puts " - Guesses remaining: #{guess_left}"
  print "Guess a single letter (a-z) or the entire word: "  
  puts guess = gets.chomp

  while guess_left != 0  
  print "Word: #{answer}(#{letter_count.size})" 
    if guess.size > 1
      if guess == guess_word
        puts "guess the word and you got it wrong."
        exit
      else
        puts "You guess the wrong word. You lose."
        exit
      end
    else
      if guess_word.include?(guess) 
          i = guess_word.index(guess)
        guess_word.count(guess).times do 
          value = guess_word.index(guess, i) 
          answer[value] = guess
          i += 1 
        end
        puts answer
        if answer.join('') == guess_word
          "Congradulations" 
          exit
        end

      else
        puts "Sorry, no letters found"
      end
    end
    guess_left -= 1
    puts "Word: #{answer}"
    puts "Guesses remaining: #{guess_left}"
    print "Guess a single letter (a-z) or the entire word: "  
    puts guess = gets.chomp
  end



