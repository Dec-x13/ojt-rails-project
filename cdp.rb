def process_ctf_data
  #Dataset
  challenges = [
    {name: "Base64 Decoding", category: "Cryptography", points: 50, solved: true },
    {name: "SQL Injection", category: "Web", points: 150, solved: false },
    {name: "Wireshark Pcap Analysis", category: "Forensics", points: 200, solved:true },
    {name: "Buffer Overload", category: "Pwn", points: 300, solved: false },
    {name: "Hidden Hex", category: "Steganography", points: 100, solved: true }
  ]

  puts "--- CTF Challenge Dashboard ---\n\n"

  #1. SELECT: filter for array
  solved_challenges = challenges.select { |challenge| challenge[:solved] }

  # 2. MAP: Transform to filtered array to just names
  solved_names = solved_challenges.map{ |challenge| challenge[:name] }

  puts "Solved Challenges"
  solved_names.each { |name| puts "- #{name}" }

  # 3. REDUCE: Calculate the total score of solved ctf's
  total_score = solved_challenges.reduce(0) do |sum, challenge|
    sum + challenge[:points]
  end

  puts "\nTotal Score: #{total_score} points"

  # 4. PREDICATE METHODS (any?, all?, none?)
  puts "\n--- Progress Check ---"

  # any? Check if any challenges over 200 points left unsolved
  unsolved = challenges.reject { |challenge| challenge[:solved] }
  high_value_remaining = unsolved.any? { |challenge| challenge[:points] > 200 }
  puts "High-value targets remaining? #{high_value_remaining}"

  # all? Check if all cryptography challenges are solved
  crypto_challenges = challenges.select { |c| c[:category] == "Cryptography" }
  crypto_master = crypto_challenges.all? { |c| c[:solved] }
  puts "Cryptography category complete? #{crypto_master}"

  # none? Ensure no 0 points
  valid_points = challenges.none? { |challenge| challenge[:points] == 0 }
  puts "All challenges have valid point values? #{valid_points}"
end

process_ctf_data