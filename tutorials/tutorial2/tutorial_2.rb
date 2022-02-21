require "date"
# ask user input with command prompt
puts("Please let us know your date of birth.Enter your DOB:")
# get user's age
birthYear = gets.chomp.to_i
# current year
currentYear = Time.now.year.to_i
# age calculation
age = currentYear - 1 - birthYear
# print age
puts("You are #{age}.")
# checking age : adult or child and printing result
age > 18 ? puts("#{age}, adult") : puts("#{age}, child")
