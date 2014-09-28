# ruby中的容器有Array、Hashs...
a = [1,3,5,7,9] # 数组创建，也可以使用Array.new
# a[6]为nil， a[-1]为右边第一个
a[1,3] # [1,2,3]  数组访问[start, count]，从start开始count个元素
a[1..3] # range方式访问。[start..end], 从索引start到索引end。   两个点包括end， 三个点不包含end
a[1] = 'a' # 可以设置任意类型的数据。 
a[6] = 99 # ['a',3,5,7,9,nil,99] 此时由于a[5]没设值，所以为nil

a = [1,3,5,7,9]
a[2,2] = 'cat' # [1,3,'cat',9]  
a[2,0] = 'dog' # [1,3,'dog', 'cat', 9] 注意：当start，count的方式赋值，count为0的时候，表示在start的位置插入，而不是替换
a[1,1] = [9,8,7] # [1,9,8,7,'dog', 'cat', 9]
print a
a[0..3] = [] # ['dog', 'cat', 9]
a[5..6] = 99,98 # ['dog', 'cat', 9, nil, nil, 99, 98] 当等号两边的元素个数不一致时，会自动调整数组的大小

# 数组还有其他方法(push,shift,pop...)，利用这些方法可以实现stack，set，queue， dequeue双向队列, fifo先进先出队列