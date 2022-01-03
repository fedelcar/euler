def triangular(n)
    (0.5 * n * (n + 1)).to_i
end

def pentagonal(n)
    (0.5 * n * (3 * n - 1)).to_i
end

def hexagonal(n)
    n * (2 * n - 1)
end

triangulars = []
pentagonals = []
hexagonals = []

for i in 1..1000000
    triangulars << triangular(i)
    pentagonals << pentagonal(i)
    hexagonals << hexagonal(i)
end

puts triangulars & pentagonals & hexagonals