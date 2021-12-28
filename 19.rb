require 'date'

start_date = Date.new(1901,1,1)
end_date = Date.new(2000,12,31)
count = 0

((start_date + 5)..end_date).step(7).each do |day|
    count +=1 if day.day == 1
end

puts count