# 数字支持整数，浮点数，支持任何长度
# 当数字是从-2的62次方到2的62的时候属于Fixnum类型，超出范围的时候就Bignum
# Bignum由Fixnum的集合组成，会自动转换
num=81
6.times do 
	puts "#{num.class}: #{num}"
	num *= num
end

3.times {print "x "}
1.upto(5) {|i| print i, " "}
95.downto(90) {|i| print i, " "}
50.step(80, 5) {|i| print i, " "}  # 从50到80，步长为5

# some_file的每行有两个数字，以空格分隔
some_file.each do |line|
	v1, v2 = line.split # 以空格分隔
	print Integer(v1) + Integer(v2) , " " # 读文件的时候,要转换为整数才能相加，否则就是字符串拼接
end
