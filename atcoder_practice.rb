#ABC087B - Shift only##################
N = gets.to_i
result_cnt = 0
arry = gets.split(" ").map{|m| m.to_i}

while true do
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


