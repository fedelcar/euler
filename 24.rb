require 'pry'
chars = ["0","1","2","3","4","5","6","7","8","9"]

# binding.pry
puts chars.permutation(10).to_a.sort.at(999999).inject {|s="", e| s + e.to_s}
