def guess_input
  print "Guess a single letter (a-z) or the entire word: "  
  @guess = gets.chomp
end

def ending_message
  if @guess == @guess_word
    puts
    puts "Congradulations you\'ve guessed the word!" 
    exit
  else
    puts
    puts "You guess the wrong word. You lose."
    exit
  end
end

def guess_word
  random_word = ["array"]
  @guess_word = random_word.sample
  @guess_left = 10 
end

def game_loop
  while @guess_left != 1  
    if @guess.size > 1
      ending_message
    else
      if @guess_word.include?(@guess) 
          i = @guess_word.index(@guess)
        @guess_word.count(@guess).times do 
          value = @guess_word.index(@guess, i) 
          @answer[value] = @guess
          i += 1 
        end
        if @answer.join('') == @guess_word
          puts
          puts "Congradulations you\'ve guessed the word!" 
          exit
        end
        puts
        puts "Found #{@guess_word.count(@guess)} occurence(s) of the character #{@guess}"
        puts
      else
        puts
        puts "Sorry, no letters found"
        puts
        @guess_left -= 1
      end
    end
    puts "Word: #{@answer}"
    puts "Guesses remaining: #{@guess_left}"
    guess_input 
  end
end

def create_hidden_format_of_answer
  @letter_count = @guess_word.split("").count
  @hidden = []
  @hidden << ("_" * @letter_count) 

  @answer = []
    @letter_count.times do 
    @answer << "_"
  end
end


puts "Welcome to Hangman!"

  guess_word
  create_hidden_format_of_answer

  puts "Word: #{@answer}(#{@letter_count.size}): " 
  puts "Guesses remaining: #{@guess_left}"
  
  guess_input 
  game_loop 
