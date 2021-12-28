def divisors_of(num)
    list = []
    l = Math.sqrt(num).ceil
    for i in 1..l
        if num % i == 0 
            list << i 
            list << num / i if i * i != num && i > 1
        end
    end
    list.sort
end

def is_amicable?(n)
    sum_of_divisors = divisors_of(n).reduce(:+)
    divisors_of(sum_of_divisors).reduce(:+) == n && n != sum_of_divisors
end

sum = 0
for i in 1..10000
    sum += i if is_amicable?(i)
end

puts sum