#Encapsulated game inside a custom method
def play_guessing_game
  settings = {
    min: 1,
    max: 20,
    max_attempts: 5
  }

  secret_number = rand(settings[:min]..settings[:max])

  #Guess History Array
  guess_history = []
  attempts_left = settings[:max_attempts]

  puts "Welcome to the Guessing Game v2!"
  puts "I'm thinking of a number between #{settings[:min]} and #{settings[:max]}."
  puts "You have #{settings[:max_attempts]} attempts to guess. Good luck!}"

  loop do
    print "\nEnter your guess (#{attempts_left} attenots left): "
    user_guess = gets.to_i

    #add the guess to the end of array
    guess_history.push(user_guess)
    attempts_left -= 1

    #checker
    if user_guess == secret_number
      puts "Wow, you got it in #{guess_history.length} tries! Great job!"
      break
    elsif attempts_left == 0
      puts "Game over! You ran out of attempts. The number was #{secret_number}."
      break
    elsif user_guess > secret_number
      puts "Too high! Try a lower number"
    else
      puts "Too low! Try a higher number"
    end
  end

  #Iteration for summary
  puts "\n--- Game Summary ---"
  puts "Your guesses were:"

  guess_history.each_with_index do |guess, index|
    puts "Attempts #{index + 1}: #{guess}"
  end
end

#Calling the method
play_guessing_game