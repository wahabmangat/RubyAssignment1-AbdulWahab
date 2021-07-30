puts "Enter n: "
n = gets.chomp!.to_i
puts"Enter k: "
k= gets.chomp!.to_i
puts "n= #{n}, k= #{k}"
safe_position = (k+1)%n
safe_position = n if safe_position == 0 
puts "Safe position = #{safe_position}"