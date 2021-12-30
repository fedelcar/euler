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
    1 == divisors_of(n).size
end

def rotations(n)
    rotations = []
    for i in 0 ..n.to_s.size-1
        rotations << n.to_s.chars.rotate(i).join.to_i
    end
    rotations
end

def is_circular_prime(n)
    rotations = rotations(n)
    circular = true
    i = 0
    while circular && i < rotations.size
        circular = false unless is_prime(rotations[i]) 
        i += 1
    end
    circular
end

circular_primes = [2]

for i in 2..1000000
    next if circular_primes.include?(i)
    circular_primes << rotations(i) if is_circular_prime(i) 
    puts i if i % 1000 == 0
end

puts circular_primes.uniq.size
