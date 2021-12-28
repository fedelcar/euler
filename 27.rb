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

def is_prime?(num)
    divisors_of(num).size == 1
end

def consecutive_primes(a,b)
    index = 0
    prime_streak = true
    while prime_streak
        number = index ** 2 + a * index + b
        if number > 0 && is_prime?(number) 
            index += 1
        else
            prime_streak = false
        end
    end
    return index
end

longest = 0

for cur_a in -1000..1000
    for cur_b in -1000..1000
        c = consecutive_primes(cur_a, cur_b)
        if c > longest
            longest = c 
            a = cur_a
            b = cur_b
        end
    end
end

puts "a:#{a} b:#{b} a*b:#{a * b}" 
