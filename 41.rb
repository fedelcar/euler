def divisors_of(num)
    list = []
    l = Math.sqrt(num).ceil
    for i in 1..l
        if num % i == 0 
            list << i 
            list << num / i if i * i != num && i > 1 
        end
        break if list.size > 1
    end
    list.uniq.sort
end

def is_prime(num)
    divisors_of(num).size == 1
end

def is_pandigital(n)
    '123456789'[0..n.to_s.length - 1] == n.to_s.chars.sort.join()
end

l = 0
(1..987654321).step(2).each do |i|
    if is_pandigital(i) && is_prime(i)
        l = i 
        puts "largest: #{l}"
    end
end

puts l

