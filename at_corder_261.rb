#ABC087B - Shift only##################
N = gets.to_i
result_cnt = 0
arry = gets.split(" ").map{|m| m.to_i}

loop do
  cnt = 0
  #配列内の要素の偶数判定
  arry.each do |a|
    if a % 2 == 0
      cnt +=1
    else
      break
    end
  end
  #偶数判定数　＝＝　配列要素数ならcountup
  if cnt == N
    arry = arry.map{|m| m/2}
    result_cnt +=1
  else
    puts result_cnt
    break
  end
end


#ABC087B - Coins##################

A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
cnt = 0

for i in 0..A
  a_price = 500*i
  if a_price == X
   cnt = cnt += 1
  end
  break if a_price >= X

  for j in 0..B
  	b_price = 100*j
  		if a_price + b_price == X
    		cnt += 1
   		end
   	break if a_price + b_price >= X

   	for k in 0..C
   		c_price = 50*k
   		if a_price + b_price + c_price == X
     		cnt += 1
  		end
      	break if a_price + b_price + c_price >= X
   	end

  end

end

puts cnt

#ABC083B - Some Sums##################

arry = gets.split(" ").map{|m| m.to_i}
N = arry[0]
A = arry[1]
B = arry[2]
total_value = 0

for i in 1..N
  sum = i.to_s.split("").map{|m| m.to_i}.sum
  if sum >= A && B >= sum
  	total_value += i
  end
end

puts total_value


#ABC088B - Card Game for Two##########
N = gets.to_i
arry = gets.split(" ").map{|m| m.to_i}
alice_sum = 0
bob_sum = 0

for i in 1..N
  unless i % 2 == 0
    alice_sum +=arry.max
    arry.delete_at(arry.index(arry.max))
  else
    bob_sum +=arry.max
    arry.delete_at(arry.index(arry.max))
  end
end

puts alice_sum - bob_sum


#ABC085C - Otoshidama##############

input = gets.split(" ").map{|m| m.to_i}
 N = input[0]
 Y = input[1]

for k in 0..N
  j = 0
  i = 0

  for j in 0..N-k
    check_value = 0
    i = N-k-j
  	check_value = 10000 * k + 5000 * j + 1000 * i
    if check_value == Y
      return print "#{k}\s","#{j}\s","#{i}\s"
    end
  end
end

return print("-1\s-1\s-1\s")
