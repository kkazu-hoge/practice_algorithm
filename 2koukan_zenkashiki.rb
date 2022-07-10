input_line = gets.split(" ")
x = input_line[0].to_i
d_1 = input_line[1].to_i
d_2 = input_line[2].to_i
k = input_line[3].to_i

a_1 = x
result = 0
before_result = a_1
for i in 2..k
      if i%2 == 0
        result = before_result + d_2
        before_result = result
      else
        result = before_result + d_1
        before_result = result
       end
end
puts result
