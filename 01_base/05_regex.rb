line = "java ruby python perl "
# 使用=~来匹配正则表达式，如果匹配成功，则返回最先匹配模式的位置,否则返回nil
if index = (line =~ /python|perl/)
	puts "match, index: #{index} "
else 
	puts "not match"
end	