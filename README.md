# Ruby

[![CircleCI](https://circleci.com/gh/taitan89/Ruby.svg?style=svg)](https://circleci.com/gh/taitan89/Ruby)

### Rubyファイル実行のやり方
Rubyファイルを実行するときは、頭に「ruby (ファイル名)」を入れる。  
※$マークはターミナルの始まり。

~~~
$ ruby Untitled-1.rb
~~~

### コミット&プッシュのやり方
1. 変更のステージングを押してコミットするものを確定する。
2. コミットする。
3. 3点ﾘｰﾀﾞｰからプッシュする。

### パイプ（｜）
下記文のように書くと前のファイルの出力結果をケツに受け継ぐ（意思を受け継ぐ）
~~~
$ cat input1.txt | ruby tashizan1.rb
~~~

### RSpecについて
端的に言えばテストファイル。  
- describe = 説明
- expect = 期待する答え
- context = 条件、状況
実行する時は下記参照(spec/は参照先指定)
~~~
$ bundle exec rspec spec/
~~~

### 配列
~~~
$ puts Array.new(5).map { gets.chomp.to_i }.min
~~~
- Array.new(5)は５つの要素をもつ配列を作成する
- .mapは各要素にたいして｛｝する

~~~
list = ["apple","banana","lemon"]
list.each.with_index { |e,i|  puts "element=#{e}, index=#{i}" }
~~~
- |e,i|は各要素を取り込む、ｅ→ｉの順番で処理されるためｅには要素が、ｉではindexがあてられる

### Dateライブラリ
例文
~~~
$ require 'date'

y,m,d = gets.chomp.split(" ")
parsed = Date.parse("#{y}-#{m.rjust(2, "0")}-#{d.rjust(2, "0")}")
p wday = %w(SUN MON TUE WED THU FRI SAT)[parsed.wday]

puts "#{wday}曜日"
~~~
def を使いこなしてコード綺麗に（リファクタリング）しよう