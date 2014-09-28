# ruby中的代码块有两种分界符{}, do .. end  一般约定单行用{} 多行用do end
# 使用block可以轻松实现回调， 比java中的匿名函数要方便很多
# greet {puts "hi"} # 调用无参数的greet方法,后面跟block表示在greet方法内可以使用yield来回调block中的代码
# greet("jerry") {puts "hi"} # 有参数的写法
def call_block
	puts "start of method"
	yield
	yield
	puts "end of method"
end
call_block {puts "in the block"} # 会在call_block中使用yield回调此代码块两次

def call_block2
	yield("jerry", 56)  # block中有参数
end
call_block2 {|name, age| puts name, age} # 竖线中间是参数名定义

# block经常用来实现迭代
animals = %w{ant bee cat dog}
animals.each {|animal| puts animal}

# java中的循环结构在ruby中只是方法调用，更多迭代写法：
['dog', 'cat', 'bee', 'ant'].each {|name| print name, ' '}
5.times {print '*'}
3.upto(6) {|i| print i}  # 会包含开始和结束，类似的还有downto， 字符串也有upto，没有downto
('a'..'e').each {|x| print x} # 整数也可以通过(1..5)来创建数组
# 会打印：dog cat bee ant *****3456abcde
# print不换行，puts会换行


