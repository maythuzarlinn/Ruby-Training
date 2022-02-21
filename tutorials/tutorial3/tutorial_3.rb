puts "Welcome to Maye Calculator!!!"
con = "yes"
while con == "yes"
  puts "Please, enter a number to calculate: "
  num1 = gets.chomp().to_f
  puts "Please, enter operator to calculate (Eg. + , - ,*, /,% ): "
  op = gets.chomp()
  puts "Please,  enter another number to calculate: "
  num2 = gets.chomp().to_f
  
  if op == "+"
    puts (num1 + num2)
  elsif op == "-"
    puts (num1 - num2)
  elsif op == "*"
    puts (num1 * num2)
  elsif op == "/"
    puts (num1 / num2)
  elsif op == "%"
    puts (num1 % num2)
  else
    puts "Invalid operator"
  end
  puts "Would you like to calculate another operation?(Please enter yes if you want to continue : yes (or) no ) "
  con = gets.chomp()
end
puts "Thanks for using our calculator.We stopped the system."
