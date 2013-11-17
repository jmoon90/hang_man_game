word = "array"
puts word
answer = ["_", "_", "_", "_", "_"]
guess = gets.chomp

if word.include?(guess)
  i = 0

  word.count(guess).times do 
  word.index(guess, i) 
  puts i
  i += 1
  answer[i] = guess
  end
  puts answer
else
  puts "no words"
end
