a = 1
b  = 1
count = 2

while b < 10 ** 999
    c = a + b
    a = b
    b = c
    count +=1
end

puts count