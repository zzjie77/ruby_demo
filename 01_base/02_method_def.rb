# $name="xx" #全局变量
# @name="xx" #类的实例变量
# @@name="" #类变量
def hello(name)
	# result = "hello " + name
	# return result
	
	# 使用表达式. 如果是全局变量或是类的实例变量，可以不用花括号
	# result = "hello #{name}"
	# return retult
	
	# 默认就会返回  最后一行计算表达式， 所以不需要return
	"hello #{name}"
end
puts hello('ruby')
puts hello('zzjie')