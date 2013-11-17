word = "array"
puts word

guess = gets.chomp

if word.include?(guess)
  puts word.index(guess)
else
  puts "no words"
end
