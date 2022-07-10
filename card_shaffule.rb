#＊＊＊＊＊＊＊＊＊＊＊＊カードシャッフル　＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊

# あなたは、N 枚のカードをシャッフルするプログラムを実装することにしました。

# N 枚のカードにはそれぞれ 1 から N までの整数が 1 つ、重複なく書いてあります。
# これらのカードは最初、整数 i (1 ≦ i ≦ N) が書かれているカードは上から i 番目に並んでいます。
# つまり、1 が書かれたカードが一番上に、2 が書かれたカードが上から二番目に、...、N が書かれたカードが一番下になるように重ねられています。

# 今回は以下の方法でカードをシャッフルをします。重ねられたカードを上から M 枚ごとのセットに分けます。
# ただし、一番下のセットが M 枚未満の場合は M 枚未満のまま、 1 つのセットとします。
# 上から i 番目 (1 ≦ i ≦ M) のセットが下から i 番目のセットにくるように並び替えます。
# すなわち、それぞれのセットに分けたあと、一番上のセットが一番下、上から二番目のセットが下から二番目、...、
# 一番下のセットが一番上、になるように並び替えます。

# この操作を 1 回のシャッフルとします。
# もう一度シャッフルする際は、前回のシャッフルされた状態から同じ動作を繰り返します。
# K 回シャッフルしたあとのカードの順番を出力して下さい。


# 条件
# すべてのテストケースにおいて、以下の条件をみたします。

# ・2 ≦ N ≦ 1,000
# ・1 ≦ M ≦ 10
# ・1 ≦ K ≦ 10
# 入力例1
# 9 3 1
# 出力例1
# 7
# 8
# 9
# 4
# 5
# 6
# 1
# 2
# 3

# 入力例2
# 10 3 2
# 出力例2
# 3
# 6
# 1
# 2
# 9
# 4
# 5
# 10
# 7
# 8



input_line = gets.split(" ").map{|a| a.to_i}
#カード枚数
n = input_line[0]
#カードの1セット枚数
m = input_line[1]
#シャッフルの回数
k = input_line[2]

card_array = []
#枚数分のカードを配列に格納
for i in 0..n-1 do
    card_array[i] = i+1
end

#配列を交換するメソッド
class Array
    def swap(i,i_reverse)
     self[i],self[i_reverse] = self[i_reverse],self[i]
     return self
    end
end

#セットを2次元配列に格納
def set_2D_array(array, set_n, n)
    d2_array=[]
    a = 0
    b = set_n-1

    num = 0
    #カード枚数をセット数で除算した値を繰り返し回数として定義(割り切れない場合は切り上げ)
    while num < (n.to_f/set_n.to_f).ceil do
        d2_array[num] = array.slice(a..b)
        num +=1
        a +=set_n
        b +=set_n
    end
 return d2_array
end

#初回分の配列を2次元配列に変換
d2_array = set_2D_array(card_array, m, n)


#シャッフル回数(k)分シャッフル処理を実行
for j in 1..k do
    #１回シャッフル
    for i in 0..d2_array.length/2-1 do
        index = i
        reverse_index = -(i+1)
        d2_array.swap(index,reverse_index)
    end
    #シャッフルした2次元配列を１次元配列に戻す
    card_array = d2_array.flatten
    #１次元配列に戻した配列をセットの枚数で再グルーピング
    d2_array = set_2D_array(card_array, m, n)
end

puts d2_array.flatten