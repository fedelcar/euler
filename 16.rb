n = (2 ** 1000).to_s
sum = 0 
for i in 0..n.length-1
    sum += n[i].to_i
end
puts sum
