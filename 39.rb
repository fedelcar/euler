def hyp(a,b)
    Math.sqrt(a ** 2 + b ** 2)
end

def per(a,b,c)
    (a + b + c).to_i
end

p_sols = Hash.new
for a in 1..1000
    for b in 1..1000
        c = hyp(a,b)
        if c % 1 == 0
            p_sols[per(a,b,c)] = 0 if p_sols[per(a,b,c)].nil?
            p_sols[per(a,b,c)] += 1
        end
    end
end

puts p_sols.select{|k,v| k < 1001}.sort_by { |p, sols| sols }.reverse.first