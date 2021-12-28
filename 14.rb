def next_term(n)
    return 1 if n == 1
    if n % 2 == 0 
        n / 2
    else
        3 * n + 1
    end
end

starting = 1
ending = 1000000 - 1
longest_count = 0
longest_number = 1

for i in starting..ending
    current = 1
    next_term = next_term(i)
    while next_term != 1
        current +=1
        next_term = next_term(next_term)
    end
    if current > longest_count
        longest_number = i 
        longest_count = current
    end
end
puts longest_number, longest_count