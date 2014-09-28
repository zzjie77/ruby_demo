# if
count=51
if count > 50
	puts "gt 50" #如果if中
elsif count < 10
	puts "lt 10"
else
	puts "in (10, 50)"
end

# while
while line = gets # gets获取用户一行输入,只要不是nil就会继续。ctrl+c结束 = nil
	puts "you input: #{line}"
end 

# 当if, while的语句体中只有一个语句时，可以使用语句修饰符(statement modifiers)来简化
puts "gt 50" if count > 50 
# 相当于如下
# if count > 50
# puts "gt 50"
count=count-1 while count > 45