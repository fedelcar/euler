def number_of_divisors_of(num)
    n = 1
    l = Math.sqrt(num).floor
    for i in 2..l
        n+=1 if num % i == 0 
    end
    (n-1)*2
end

def divisors_of(num)
    list = []
    l = Math.sqrt(num).ceil
    for i in 1..l
        if num % i == 0 
            list << i 
            list << num / i if i * i != num
        end
    end
    list.sort
end

def find_triangular_numbers(start)
    last = 0 
    for i in 1..10000000
        n = last + i 
        puts "time: #{Time.now - start} index: #{i} number: #{n} divisors# #{divisors_of(n).count} divisors: #{divisors_of(n)}" if i % 10000 == 0 
        puts n if number_of_divisors_of(n) > 500
        last = n
    end
end


start = Time.now
find_triangular_numbers(start)
