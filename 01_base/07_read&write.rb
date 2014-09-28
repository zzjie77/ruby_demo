# ruby有完整的io库，这里只介绍最简单的几个用法
# puts 带换行标准输出，print 不带换行的标准输出
printf("Number: %5.2f,\n String: %s \n", 4.3, "tom") # 格式化输出
# line = gets # gets是从标准输入流中读一行

# $xx 是全局变量， $_是一个特殊的全局变量。 gets每次读取的都会保存在$_这个全局变量中
# if /Ruby/ 这种写法会用$_来匹配正则表达式。  print 不带参数就会输出$_   所以有如下写法：
while line = gets
	# print if /Ruby/ # 这种匹配已经不建议使用，将来很可能会废弃。  ruby -w xx.rb 运行并输出警告，可以查看警告
	ARGF.each {|line| print line if line =~ /Ruby/} # ARGF表示程序的输入文件
end
