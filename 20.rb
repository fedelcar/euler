def fact(n)
    n == 1 ? 1 : n * fact(n - 1)
end

sum = 0
fact100 = fact(100).to_s
for i in 0..fact100.length - 1
    sum += fact100[i].to_i
end

puts sum