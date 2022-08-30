require "csv"
puts "1(新規でメモを作成)" "2(既存のメモを編集する)　のいずれかを選択してください。"
input_num = gets.chomp.to_s

#１を選択した場合、ファイル名をあらかじめ入力させる
if input_num == "1"
 puts "拡張子抜きのファイル名を入力してください。"
 file_name = gets.chomp.to_s
 csv_name = file_name + ".csv"
 puts "ファイル名は「" + csv_name + "」で保存されます。"
 puts "----------"

#CSVファイルに記録したい内容を入力させる。
 puts "次に、記録したい内容を打ち込んでください。"
 memo_type = gets.chomp.to_s
 puts "入力内容は「" + memo_type + "」になります。"
 
#CSVファイルを新規作成させる
 File.open(csv_name,"w") do |f|
  f.puts(memo_type)
 end
 
#２を選択した場合、まずは既存のファイル名を入力させる 
elsif input_num == "2"
 puts "既存のメモを編集します。"
 puts "編集したいファイル名を、拡張子抜きで入力してください。"
 file_name = gets.chomp.to_s
 csv_name = file_name + ".csv"
 puts csv_name + "を以下より編集します。"
 puts "----------"

#既存ファイルに追加する内容を入力させる
 puts "追加で記録したい内容を入力してください。"
 memo_type = gets.chomp.to_s
 puts "入力内容は「" + memo_type + "」になります。"
 
#既存ファイルに追記させる 
 File.open(csv_name,"a+") do |f|
  f.puts(memo_type)
 end
end