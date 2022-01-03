def triangle_number(n)
    0.5 * n * (n + 1)
end

def is_triangle_word(word)
    $triangle_numbers.include?(word.chars.map { |c| c.ord - 64 }.reduce(:+) )
end

$triangle_numbers = []

for i in 1..1000
    $triangle_numbers << triangle_number(i)
end

names = []

File.foreach("42-in.txt") do |line|
    names = line.split(",").map!{|e| e.gsub("\"","")}.sort
end

puts names.map { |e| is_triangle_word(e) }.select { |e| e}.length

