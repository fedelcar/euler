n = ""
for i in 1..500000
    n += i.to_s
end
puts n[0].to_i * n[9].to_i * n[99].to_i * n[999].to_i * n[9999].to_i * n[99999].to_i * n[999999].to_i

