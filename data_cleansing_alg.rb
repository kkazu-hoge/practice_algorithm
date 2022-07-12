#人数と設問数を格納
input_num = gets.split(" ").map{|i| i.to_i}
m = input_num[0]
n = input_num[1]
#実際の回答を2次元配列に格納
input_array = []
i = 0
while i < m do
    input_array[i] = gets.split(" ")
    i +=1
end

for j in 1..n do
    #設問の合計値を格納する変数
    sum = 0
    error_cnt = 0
    for k in 1..m do
        #2次元配列の要素を取り出す
        tmp = input_array.dig(k-1,j-1)
        #キャストする前に0だった場合はunlessの処理をスルー
        unless tmp == 0
            #英小文字チェック& 0<= tmp <= 100のスコープチェック
            if tmp.match?(/[a-z]/) || tmp.to_i > 100 || tmp.to_i < 0
              error_cnt += 1
              tmp = 0
            end
        end
        #チェック通過後にintにキャスト
        tmp = tmp.to_i
        sum += tmp
    end
    unless sum == 0
        puts sum / (m - error_cnt)
    else
        puts 0
    end
end