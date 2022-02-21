# person parent class
class Person
  attr_accessor :name

  def initialize(name)
    @p_name = name
  end
# print_name method
  def print_name
    puts "Name : #{@p_name}"
  end
end
# student child class
class Student < Person
  attr_accessor :roll_no

  def initialize(name, roll_no)
    @p_name = name
    @stu_rn = roll_no
  end
# print_roll method
  def print_roll
    puts "Student roll number : #{@stu_rn}"
  end
end

puts "Please enter \"student\" if you are a student and if not ,enter \"person\" ?"
person_type = gets.chomp
if person_type == "person"
  puts "Enter the name"
  name = gets.chomp
  # creating object
  person = Person.new(name)
  # print perosn name
  person.print_name
elsif person_type == "student"
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