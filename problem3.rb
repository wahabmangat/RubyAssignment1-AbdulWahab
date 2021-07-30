def isValid?(str)
alphabet_count = Hash.new(0)
str.split("").uniq.each do |chr| 
    alphabet_count[chr] = str.count(chr)
end
puts "Alphabet count hash: "
puts alphabet_count
if alphabet_count.values.all? { |e| e == alphabet_count.values[0] } 
    return true 
end
str.split("").each do |val|
alphabet_count[val] -= 1
if alphabet_count.values.all? { |e| e == alphabet_count.values[0] } 
    return true 
end
alphabet_count[val] += 1
end
return false
end
str = "11" #random initial value
lowercase = ('a'..'z') #to check if each character is small alphabet
until str.length >1 && str.length< (10**5) && str.chars.all? { |e| lowercase.include?(e) } #to check the constraints
puts "Enter string (Eg: abc): "
str = gets.chomp!
end
if isValid?(str)
    puts "YES"
else
    puts "NO"
end


