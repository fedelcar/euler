list = []
for i in 2..100
    for x in 2..100
        list << i ** x
    end
end

puts list.uniq.size