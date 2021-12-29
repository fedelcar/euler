candidates = []

def candidate_fraction(a,b)
    a < b && 
    !(a % 10 == 0 && b % 10 == 0) && 
    (a.to_s.chars & b.to_s.chars) != []
end

def is_winner(a,b)
    repeated_char = (a.to_s.chars & b.to_s.chars)
    simplified_a = (a.to_s.chars - repeated_char).first.to_i
    simplified_b = (b.to_s.chars - repeated_char).first.to_i
    a.fdiv(b) == simplified_a.fdiv(simplified_b)
end

for i in 11..99
    for x in 10..99
        candidates << [i,x] if candidate_fraction(i,x)
    end
end

winners = []
candidates.each do |fraction|
    winners << fraction if is_winner(fraction[0], fraction[1])
end

puts winners.reduce(1) { |a,e| a = a * (e[0].fdiv(e[1]))}