def is_palindrome(n)
    n.to_s == n.to_s.reverse
end

s = 0 
for i in 1..1000000
    s += i if is_palindrome(i) && is_palindrome(i.to_s(2))
end

puts s