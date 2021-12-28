require 'pry'

def name_score(name)
    score = 0
    for i in 0..name.length - 1
        score += name[i].ord - 64
    end
    score
end

names = []
File.foreach("22-in.txt") do |line|
    names = line.split(",").map!{|e| e.gsub("\"","")}.sort
end

score = 0
names.each_with_index do |name, index|
    score += name_score(name) * (index + 1)
end
puts score
