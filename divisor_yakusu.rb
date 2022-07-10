#＊＊＊＊＊複数の最小公倍数を求めるプログラム＊＊＊＊＊＊＊＊＊＊

numbers = [30, 20, 15, 120, 200]


# 最小公倍数
puts numbers.inject(:lcm)
# => 60


#＊＊＊＊＊複数の最大公約数を求めるプログラム＊＊＊＊＊＊＊＊＊＊

#numbers = [30, 20, 15, 120, 200]

# 最大公約数
puts numbers.inject(:gcd)
# => 5


#＊＊＊＊＊入力値の約数を列挙するプログラム＊＊＊＊＊＊＊＊＊＊

n=1024

def divisor(n)
  res = []
  for i in 1..(n+1)
    break if i*i > n
    next if n % i != 0
    res << i
    res << (n/i) if n / i != i
  end
  return res.sort
end

p divisor(n).join(' ')

