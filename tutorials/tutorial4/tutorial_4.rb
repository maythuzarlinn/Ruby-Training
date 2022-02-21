animal_array = Array.new(10)
puts "Please let us know 10 animals' type you love to keep at home. "

10.times do |i|
  puts "#{i+1}.Please enter the name of animal: "
  animal_name = gets.chomp()
  animal_array[i] = animal_name
end

puts "This is sorted animal_array:#{animal_array.sort.join(", ")}"
animal_array = animal_array.sort

puts "\n"   # add 1 line after every line"
puts "This is value count of each array in animal_array: "
puts animal_array.uniq.map { |x| "#{x}=>#{animal_array.count(x)}" }.join(", ")
puts "\n"   # add 1 line after every line"
require "set"

def removeDuplicates(animal_array)
  result = Set.new
  result.merge(animal_array)
  return result.to_a
end

puts "Removed duplicate vale in animal array: #{animal_array.uniq.join(", ")}"
puts "\n"   # add 1 line after every line"
puts "This is current animal_array:#{animal_array.join(", ")}"

def reverse(animal_array)
  reversed = []
  position = animal_array.length - 1
  while position >= 0
    reversed << animal_array[position]
    position = position - 1
  end
  return reversed
end

puts "\n"   # add 1 line after every line"
puts "This is reserve value of animal array: #{reverse(animal_array).join(", ")}"
