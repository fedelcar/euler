def divisors_of(num)
    list = []
    l = Math.sqrt(num).ceil
    for i in 1..l
        if num % i == 0 
            list << i 
            list << num / i if i * i != num && i > 1 
        end
    end
    list.uniq.sort
end

def is_abundant?(n)
    divisors_of(n).reduce(:+) > n
end

abundants = []
for i in 12..35000
    abundants << i if is_abundant?(i)
end

sum_of_abundants = []
for i in 0..abundants.length - 0
    for x in i..abundants.length - 1
        n1 = abundants[i]
        n2 = abundants[x]
        sum_of_abundants << n1 + n2
    end
end
sum_of_abundants.uniq!

sum = 0 
non_sum_of_abundants = []
for i in 1..30000
    non_sum_of_abundants << i unless sum_of_abundants.include?(i)
    puts i if i % 100 == 0 
end
puts non_sum_of_abundants.reduce(:+)