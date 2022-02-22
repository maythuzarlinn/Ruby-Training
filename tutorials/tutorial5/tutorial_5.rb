require "date"
current_day = Date.today
day_name = current_day.strftime("%A")

6.times do |i|
  last_days = current_day - i
  last_days_name = last_days.strftime("%A")
  puts "Today is #{last_days} ( #{last_days_name} )" if i == 0
  i == 1 ? (puts "1. Yesterday is #{last_days} ( #{last_days_name} )") :
    (puts "#{i}. Last #{i} day is #{last_days} ( #{last_days_name} )") unless i == 0
end
