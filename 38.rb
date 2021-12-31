def is_pandigital(n)
    '123456789' == n.chars.sort.join
end

largest = 0
i = 0
while true
    i += 1
    c = 1
    n = ""
    while n.size < 9
        n += (i * c).to_s
        c += 1
    end
    if is_pandigital(n)
        largest = [n.to_i,largest].max
        puts "i: #{i} c: #{c} largest: #{largest}"
    end
end
