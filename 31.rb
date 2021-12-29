require 'pry'
# [1p, 2p, 5p, 10p, 20p, 50p, 100p, 200p]
$values = [1,2,5,10,20,50,100,200]

# def adds_to_2quid(combination)
#     200 == value(combination)
# end

def value(combination)
    combination.each_with_index.map { |e, i| e * $values[i] }.reduce(:+)
end

def asd(combination)
    if value(combination) == 200
        $list << combination
        puts "#{combination} - #{Time.now - $start}"
        return
    elsif value(combination) > 200 
        return
    else
        for i in 0..7
            combination[i] += 1
            asd(combination)
            combination[i] -= 1
        end
    end
end

$list = []
$start = Time.now
asd([0,0,0,0,0,0,0,0])
puts $list.uniq.size