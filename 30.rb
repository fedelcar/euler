def is_sum_of_fifths(n)
    sum = 0
    for i in 0..n.to_s.length-1
        sum += n.to_s[i].to_i ** 5
    end
    sum == n
end

i = 2
sum = 0
while true
    i += 1
    if is_sum_of_fifths(i)
        sum = sum + i
        puts "#{i} sum: #{sum}"
    end
    puts i if i % 1000000 == 0
end