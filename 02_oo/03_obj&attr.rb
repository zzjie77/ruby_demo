# ruby是单继承的，只有一个直接父类，但可以通过mixin来引入其他类的功能，从而达到多继承的目的。
# 实例变量都是私有的，别的对象不能访问。 如果想别的对象也能访问，就要创建属性
class Song
	def initialize(name, duration)
		@name=name
		@duration=duration
	end
	# 定义name的读属性
	# def name  
	# 	@name
	# end
	# 定义name的写属性, 以等号结尾，这样就可以使用=号来赋值
	# def name=(new_name)
	# 	@name=new_name
	# end

	# 如果每个属性都要如上定义，显然很麻烦，可以通过attr_reader，attr_writer来完成
	attr_reader :name, :duration
	attr_writer :name, :duration
end
song = Song.new("aa", 15)
puts song.name
song.name = "bb"
puts song.name

# 类变量以@@开头， 类方法以(Song.)类名加点开头
# 单例：
class MyLogger
	private_class_method :new
	@@logger=nil   #必须先初始化
	def MyLogger.create
		@@logger = new unless @@logger # unless即是if not
		@@logger
	end
end
puts MyLogger.create.object_id
puts MyLogger.create.object_id #打印发现两次的对象id是一样的

# 以上的类方法定义只是最简单的。 还有其他常用手段定义类方法，如：
class Demo
	def Demo.meth1
		# ..
	end
	def self.meth2
		# ..
	end
	class << self
		def meth3
			# ..
		end
	end
end

# 访问控制 public protected private   类的方法默认是public的
# public private 与java相同  protected：子类和同类的其他对象可以访问
