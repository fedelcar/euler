s = 0
File.foreach("13-in.txt") do |line|
    s += line.to_i
end

puts s