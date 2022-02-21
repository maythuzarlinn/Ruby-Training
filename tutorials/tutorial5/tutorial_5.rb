require "date"
current_day = Date.today
day_name = current_day.strftime("%A")

last_1_day = current_day - 1
last_1_day_name = last_1_day.strftime("%A")

last_2_day = current_day - 2
last_2_day_name = last_2_day.strftime("%A")

last_3_day = current_day - 3
last_3_day_name = last_3_day.strftime("%A")

last_4_day = current_day - 4
last_4_day_name = last_4_day.strftime("%A")

last_5_day = current_day - 5
last_5_day_name = last_5_day.strftime("%A")

puts "Today is        #{current_day} ( #{day_name} )"
puts "1.Yesterday is  #{last_1_day} ( #{last_1_day_name} )"
puts "2.Last 2 day is #{last_2_day} ( #{last_2_day_name} )"
puts "3.Last 3 day is #{last_3_day} ( #{last_3_day_name} )"
puts "4.Last 4 day is #{last_4_day} ( #{last_4_day_name} )"
puts "5.Last 5 day is #{last_5_day} ( #{last_5_day_name} )"
