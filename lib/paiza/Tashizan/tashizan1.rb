require "./core.rb"

ab = gets.chomp.split(" ")
a = ab[0].to_i
b = ab[1].to_i
answer = sum(a, b)
puts answer