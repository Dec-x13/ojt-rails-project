def caesar_cipher(text, shift)
  # break the string into array of characters
  text.chars.map do |char|
    # check if character is an uppercase letter
    if char.ord.between?(65, 90)
      ((char.ord - 65 + shift) % 26 + 65).chr

    # check if character is an lowercase letter
    elsif char.ord.between?(97, 122)
      ((char.ord - 97 + shift) % 26 + 97).chr

    # if not a letter
    else
      char
    end

    # stitch everything back up
  end.join
end

puts caesar_cipher('What a string!', 5)
