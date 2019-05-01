list = []
5.times do
  n = gets.chomp.to_i
  list.push(n)
end

# a = gets.chomp.to_i
# b = gets.chomp.to_i
# c = gets.chomp.to_i
# d = gets.chomp.to_i
# e = gets.chomp.to_i
# list = [a,b,c,d,e]

answer = list.min
puts answer