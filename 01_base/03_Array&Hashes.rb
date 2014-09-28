# -----数组
a = [12, "abc", 123.11]
# puts a[0]
a[2] = nil # 通常nil表示没有对象，而ruby中表示没有东西的对象
# puts a

a = ['ant', 'bee', 'cat', 'dog', 'elk']
# 快捷方式定义array, 不需要逗号和引号
a = %w{ant bee cat dog elk}
puts a[0]
puts a[2]

# -----散列
person = {
	'username' => 'zhangsan', #   key => value
	'age' => '15',
	'password' => '123'
}
puts person['username']
puts person['age']
puts person['have not'] # return nil

h = Hash.new(0) # new一个对象
h["key1"] = 0
h["key1"] = h["key1"] + 1
puts h["key1"]