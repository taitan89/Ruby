$list = ["大吉","中吉","中吉","吉","吉","吉","凶","凶","大凶"]

puts "★本日の占い★\nEnterを押して占う"
gets
a = $list.sample

puts "あなたの今日の運勢は・・・#{a}！"
puts ""
puts ""

loop{
puts "もういちど占う？\nEnter＝占う　end＝終了"
a = $list.sample
b = gets.chomp

if b == "end"
    break
else
    puts "あなたの今日の運勢は・・・#{a}！"
    puts ""
    puts ""
end
}