def is_pandigital(n)
    '0123456789' == n.to_s.chars.sort.join() &&
    n.to_s[1..3].to_i % 2 == 0 &&
    n.to_s[2..4].to_i % 3 == 0 &&
    n.to_s[3..5].to_i % 5 == 0 &&
    n.to_s[4..6].to_i % 7 == 0 &&
    n.to_s[5..7].to_i % 11 == 0 &&
    n.to_s[6..8].to_i % 13 == 0 &&
    n.to_s[7..9].to_i % 17 == 0
end

sum = 0
'0123456789'.chars.permutation.each do |p|
    n = p.join.to_i 
    sum += n if is_pandigital(n)
end

puts sum
