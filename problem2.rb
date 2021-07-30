def domino(s)
domino_arr= []
domino_arr = s.split(",")
puts "---"
puts "Domino: "
print domino_arr
domino_len = 1
temp_len=1
for i in -1..(domino_arr.length - 2) do
   domino_arr[i][2] == domino_arr[i + 1][0] ? temp_len +=1 : temp_len = 1
   domino_len = temp_len if temp_len >= domino_len
end
return domino_len
end
puts "\nNumber of tiles in longest sequence = #{domino("1-1,3-5,5-2,2-3,2-4")}"
puts "\nNumber of tiles in longest sequence = #{domino("3-2,2-1,1-4,4-4,5-4,4-2,2-1")}"
puts "\nNumber of tiles in longest sequence = #{domino("5-5,5-5,4-4,5-5,5-5,5-5,5-5,5-5,5-5,5-5")}"
puts "\nNumber of tiles in longest sequence = #{domino("1-1,3-5,5-5,5-4,4-2,1-3")}"
puts "\nNumber of tiles in longest sequence = #{domino("1-2,2-2,3-3,3-4,4-5,1-1,1-2")}"
