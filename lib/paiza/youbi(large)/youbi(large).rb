LEAP_YEAR     = "閏年".freeze
NOT_LEAP_YEAR = "平年".freeze
#閏年か平年を判定し、返すメソッド
def motomu_urudosi(y)
  return LEAP_YEAR     if y%400 == 0
  return NOT_LEAP_YEAR if y%100 == 0
  return LEAP_YEAR     if y%4   == 0
  return NOT_LEAP_YEAR
end

#端数年の月数を日にち換算し、返すメソッド
def gesu_nissu(m,y)
  md2 = 0 #日数のカウント用
  j = 1 #月初
  a = motomu_urudosi(y)
  while j < m #<=じゃない理由は3月13日だった場合、2か月分と13日になるから
    if j == 4 or j == 6 or j == 9 or j == 11
      md2 = md2 + 30
    elsif j == 2
      if a == LEAP_YEAR
        md2 = md2 + 29
      elsif a == NOT_LEAP_YEAR
        md2 = md2 + 28
      end
    else
      md2 = md2 + 31
    end
    j = j + 1
  end
  return md2
end

#1800年から入力した年数の去年までの総日数を返すメソッド（端数年の日数は含んでない）
def nen_nissu(y)
  i = 1800 #年初
  y2 = y - i #入力値-1800年
  y4 = y - 1 #入力値ｰ1年（端数年目を含ませないため）
  l = (y4 / 4) - 449 #449=1800年分の閏年の数（100年、400年のは含んでない）　l=1800年から入力値ｰ1年の閏年の回数（100年、400年のは含んでない）
  k = (y4 / 100) - 17 #平年の数（400年のは含んでない）　17=1800年分の平年の数（400年のは含んでない）
  n = (y4 / 400) - 4 #閏年の数　4=1800年分の閏年の数
  o = k - n #o=平年の数の決定版
  c = l - o #c=閏年の数の決定版
  hn = y2 - c #hn=入力値-1800年した年数から閏年の回数を引いた数＝平年数
  #hn＝平年の回数　c＝閏年の回数
  return hn*365 + c*366 #1800年から入力した年数の去年までの総日数（端数年の日数は含んでない）
end

#曜日を返すメソッド
def gets_answer(y,m,d)
  md = nen_nissu(y)
  md2 = gesu_nissu(m,y)
  last = (md + md2 + d) % 7 #(1800/1/1から入力値までの総日数)を7で割って余りを求める
  week_days = ["火", "水", "木", "金", "土", "日", "月"]
  answer = "#{week_days[last]}曜日"
  return answer
end

y,m,d = gets.chomp.split.map { |str| str.to_i }
answer = gets_answer(y,m,d)
puts answer
