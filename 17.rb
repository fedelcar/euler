$numbers = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
$decens = ["twenty", "thirthy", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
$exponents = ["hundred", "thousand"]

def to_written(n)
    s = ""
    case n
    when 1000
        s = "#{$numbers[1]} #{$exponents[1]}"
    when 100..999
        s = n % 100 == 0 ? "#{$numbers[n / 100]} hundred" : "#{$numbers[n / 100]} hundred and #{to_written(n % 100)}"
    when 21..99
        s = n % 10 == 0 ? s = "#{$decens[n / 10 - 2]}" : "#{$decens[n / 10 - 2]}-#{$numbers[n % 10]}"
    when 1..20
        s = $numbers[n]
    end
    s
end

sum = 0
for i in 1..1000
    written = to_written(i)
    puts "#{i}: #{written.gsub(" ","").gsub("-","")} length: #{written.gsub(" ","").gsub("-","").length}"
    sum += written.gsub(" ","").gsub("-","").length
end

puts sum