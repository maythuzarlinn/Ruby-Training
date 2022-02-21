require "date"
# ask user input with command prompt
puts("Please let us know your date of birth.Enter your DOB:")
# get user's age
birth_year = gets.chomp.to_i
# current year
current_year = Time.now.year.to_i
# age-calculation
age = current_year - 1 - birth_year
# print age
puts("You are #{age}.")
# checking age : adult or child and printing result
age > 18 ? puts("#{age}, adult") : puts("#{age}, child")
