def fact(n)
    return 1 if n == 0 || n == 1
    return 2 if n == 2
    n * fact(n - 1)
end

def is_curious(n)
    n == n.to_s.chars.map { |n| fact(n.to_i)}.reduce(:+)
end

sum = 0 
i = 2
while true
    i += 1
    if is_curious(i)
        sum += i
        puts "sum: #{sum}, last curious number: #{i}"
    end
end
puts sum