def is_pandigital(a,b,p)
    '123456789' == (a.to_s + b.to_s + p.to_s).chars.sort.join()
end


list = []

for a in 1..98
    for b in 123..9876
        p = a * b
        list << [a,b,p] if is_pandigital(a,b,p)
    end
end

puts list.map{ |e| e[2] }.sort.uniq.reduce(:+)