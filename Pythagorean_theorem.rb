#＊＊＊＊＊＊＊＊＊＊ピタゴラスの定理＊＊＊＊＊＊＊＊＊＊
#・ピタゴラスの定理という公式があり、 a² + b² = c²条件を満たすものを直角三角形とする。
#・上記条件を満たすうち、 直角三角形のc²が6000cm以下となる直角三角形が何個存在するか求める。
#・引数としてa, bの値が渡されるがそれぞれの条件は以下のとおりとする。

#1 ≦ a ≦ N
#2 ≦ b ≦ N


def pitago
		a = 0.0
		b = 0.0
		c = 0.0
		cnt = 0

		i = 1
		while i < 100
		  	j = 2
			while j < 100
				# a = m2 - n2
				m = i ** 2
				n = j ** 2
				if m < n
					a = n - m
				else
					a = m - n
				end
				# b = 2mn
				b = 2 * i * j
				# c = m2 + n2
				c = m + n

				if c ** 2 <= 6000
					cnt +=1
				end
				# p "a = " + "#{a}" + ", b = " +"#{b}" + ", c = " + "#{c}"
				j +=2
			end

			i +=2
		end
	return "c²が6000以下のピタゴラスの定理は[" + "#{cnt}" + "]件ありました"
end

q = pitago
p q