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

def is_prime(n)
    return false if n == 1 || n == 0
    return true if n == 2
    1 == divisors_of(n).size
end

def truncs(n)
    truncs = []
    for i in 1..n.to_s.length
        truncs << n.to_s[0..n.to_s.length - i].to_i
        truncs <<  n.to_s[i..n.to_s.length - 1].to_i
    end
    truncs.delete(0)
    truncs
end

def is_truncatable_prime(n)
    truncatable_prime = true
    i = 0
    truncs = truncs(n)
    while truncatable_prime && i < truncs.size
        truncatable_prime = false unless is_prime(truncs[i])
        i += 1
    end
    truncatable_prime
end

c = 0
s = 0
i = 12
truncatable_primes = []

while c < 11
    if is_truncatable_prime(i)
        c += 1
        s += i
        truncatable_primes << i
        puts i 
    end
    i += 1
end

puts s