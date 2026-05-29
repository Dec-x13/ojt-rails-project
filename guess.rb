# The computer picks a random number between 1 and 10
secret_number = rand(1..10)

puts "Welcome to the Guessing Game!"
puts "I'm thinking of a number between 1 and 10. Can you guess it?"

# We start a loop that will keep running until you get it right
loop do
  print "Enter your guess: "
  
  # gets gets what you type, and .to_i turns it into an Integer (a number)
  user_guess = gets.to_i

  # Check if the guess is right, too high, or too low
  if user_guess == secret_number
    puts "🎉 Wow, you got it! Great job!"
    break # This stops the loop and ends the game
  elsif user_guess > secret_number
    puts "Too high! Try a lower number."
  else
    puts "Too low! Try a higher number."
  end
end