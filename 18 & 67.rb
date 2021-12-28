triangle = Array.new
File.foreach("67-in.txt") do |line|
    triangle << line.split(" ").map(&:to_i)
end

triangle.reverse.each_with_index do |row_elem ,row_index|
    row_elem.each_with_index do |col_elem, col_index|
        triangle[triangle.size - 2 - row_index][col_index] += [col_elem, row_elem[col_index + 1]].max unless row_elem[col_index + 1].nil?
    end
end

puts triangle[0][0]