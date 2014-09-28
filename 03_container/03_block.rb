a = [1,2]
b = 'cat'
a.each {|b| puts b} # block默认会返回最后一行给调用yield的地方
puts a # [1,2]
puts b # 注意： ruby1.8或之前的版本 b会与block中的b共用，所以这里是2，而1.9后修正了这个问题，不会共享，所以这里输出'cat'
puts defined?(c) # nil  defined?查看c是否定义

# 迭代器除了find，还有each，collect. ruby中的内部迭代器是集合中的方法
# find 查找一个元素，遍历集合，当block返回true时，就获取当前元素返回
# each 最简单的遍历。
# collect 遍历集合，经过block的处理，返回一个新的集合
# 迭代器除了用于集合，还可用于输出输入类
# f = File.open("01_array.rb")
# f.each do |line| # do end的优先级低于{}
# 	puts line
# end
# f.close

# 另一个有用的迭代器inject
[1,3,5,7].inject(0) {|sum,element| sum+element} # 16  0会传给block中的第一个参数，每次迭代返回的结果又会传到sum中
[1,3,5,7].inject(1) {|product,element| product*element} # 105  1传给product  1*3*5*7
# 另一种写法   inject不带参数，会默以集合的第一个元素做为参数，从第二个元素开始迭代。所以结果一样
[1,3,5,7].inject {|sum,element| sum+element} # 16
[1,3,5,7].inject {|product,element| product*element} # 105

# 事务blocks 可以定义必须运行在事务环境中的代码
# 当使用文件的时候，处理结束后要关闭。尽管可以使用传统方法来，但也可以由文件自身来关闭(可以由block来实现)
# 
class File 
	# 通过该方法，可以将文件的关闭放到文件自身
	def File.open_and_process(*args) # *args表示接收一个args的数组
		f = File.open(*args)
		yield f
		f.close
	end
end

# ruby的file.open本来就有这种实现。如果file.open带block，就会再执行完block后关闭文件；如果没带block，就会直接返回file，由我们手动关闭
# 判断调用方法时是否带有block，用Kernel.block_given?方法，如果有则返回true，没有则返回false
# 以下代码模拟File.open
class File
	def File.myopen(*args)
		result = file = File.new(*args)
		if block_given?
			result = yield file
			file.close
		end
		return result
	end
end


