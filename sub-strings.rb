def substrings(text, dictionary)
  # hash to store results
  result = Hash.new(0)

  # convert the input to lowercase
  lowered_text = text.downcase

  # loop through words
  dictionary.each do |word|
    match_count = lowered_text.scan(word).length

    result[word] = match_count if match_count > 0
  end

  result
end

# --- Testing the Code ---
dictionary = %w[below down go going horn how howdy it i low own part partner sit]

puts 'Test 1: Single Word'
puts substrings('below', dictionary)
# Expected: {"below"=>1, "low"=>1}

puts "\nTest 2: Multiple Words and Punctuation"
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Expected: {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
