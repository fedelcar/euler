s = 0
for i in 1..1000
    s += i ** i
end
puts s % 10 ** 10