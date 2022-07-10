#＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊選択ソート（昇順）のアルゴリズム＊＊＊＊＊＊＊＊＊

#arrayクラスのスワップメソッド定義
class Array
#非破壊的
#   def swap(a,b)
#      temp = self.dup
#      temp[a],temp[b] = temp[b],temp[a]
#      return temp
#   end
#破壊的
  def swap(a,b)
     self[a],self[b] = self[b],self[a]
     return self
  end
end

#選択ソート
n = gets.to_i
#標準入力をsplitで空白を区切り文字として配列に要素を格納し、mapで要素をintに変換する
A_n_array = gets.split(" ").map{ |m| m.to_i }

#要素5つであれば0～4の要素番号を走査することになるため0～n-2(今回は"3")の範囲で4回繰り返し処理を行う
for i in 0..n-2 do
    min_index = i
　　#比較処理のループは比較対象の要素の次の要素(i+1)から最後の要素(n-1)の範囲で処理を行う
    for j in i+1..n-1 do
        if A_n_array[min_index] > A_n_array[j] then
            min_index = j
        end
    end
　　#比較処理で最も小さい値の配列番号がmin_indexに格納されているのでi番目の要素と交換する
    A_n_array.swap(i, min_index)
    #出力整形処理（配列の最後の要素の場合は正規表現の改行を入れる）
    A_n_array.each_with_index do |a, index|
        unless index == A_n_array.size-1
            print "#{a}"+" "
        else
            print "#{a}"+"\n"
        end
    end
end
