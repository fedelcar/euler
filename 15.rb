 def count_paths(x,y)
    if x < $size
        count_paths(x + 1, y)
    end
    if y < $size
        count_paths(x, y + 1)
    end
    if x == y && x == $size
        $count += 1
    end
end

for i in 20..20
    start = Time.now
    $size = i
    $count = 0
    count_paths(0,0)
    puts "for grid of #{i}x#{i} possible paths are: #{$count} time: #{Time.now - start}"
end


