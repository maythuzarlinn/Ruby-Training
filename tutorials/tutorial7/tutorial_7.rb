# person parent class
class Person
  attr_accessor :name

  def initialize(name)
    @user_name = name
  end

  # print_name method
  def print_name
    puts "Name : #{@user_name}"
  end
end

# student child class
class Student < Person
  attr_accessor :roll_no

  def initialize(name, roll_no)
    @user_name = name
    @student_roll_number = roll_no
  end

  # print_roll method
  def print_roll
    puts "Student roll number : #{@student_roll_number}"
  end
end

puts "Please enter \"student\" if you are a student and if not ,enter \"person\" ?"
user_type = gets.chomp
if user_type == "person"
  puts "Enter the name"
  name = gets.chomp
  # creating object
  person = Person.new(name)
  # print perosn name
  person.print_name
elsif user_type == "student"
  puts "Enter the name.(Eg. Kyaw Kyaw)"
  name = gets.chomp
  puts "Enter the roll_number.(Eg. 1)"
  roll_no = gets.chomp
  # creating object
  student = Student.new(name, roll_no)
  # print student name and roll
  student.print_name
  student.print_roll
else
  puts "Invalid type of person.Please enter again the correct type."
end
