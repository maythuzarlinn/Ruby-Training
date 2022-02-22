puts "Welcome to Maye'Notes.Please enter file title to create new note:"
title = gets.chomp()
puts "Write what you want to save in your note:"
notes = gets.chomp()

puts "Would you like to save this note as your file?(Please enter save if you want to save: save (or) cancel ) "
decision = gets.chomp()
if decision == "save"
  File.open("#{title}.txt", "w") do |file|
    file.write("Title :" + title + "\n")
    file.write("Note - " + notes)
    puts "\n"
    file.close
    puts "File has been saved under RUBY_TRAINING \\ tutorials \\ tutorial6 \\ : \"#{title}.txt\""
    puts "\n"
  end
else
  puts "\"#{title}.txt\" didn't save and data is gone."
  puts "\n"
end

list_of_files = Dir.glob("*.txt")
puts "These are the files you can read: "
puts "#{list_of_files.join(", ")}"
puts "\n"
answer = "yes"
while answer == "yes"
  begin
    puts "Enter the file name to open"
    file_name = gets.chomp()
    readfile = File.open(file_name, "r")
  rescue Errno::ENOENT
    puts "There is no such file name."
    puts "\n"
  else
    puts readfile.read
  end
  puts "\n"
  puts "Enter 'yes' to continue to read the file.And enter 'no' to stop the system."
  answer = gets.chomp()
end
puts "Thanks for using our system.We stopped the system."
