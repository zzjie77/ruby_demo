# 使用array实现音乐播放列表
class SongList
	def initialize
		@songs=Array.new
	end
	def append(song)
		@songs.push(song)
		self  # 返回self， 方便进行链式调用
	end
	def delete_first
		@songs.shift 
	end
	def delete_last
		@songs.pop
	end
	def [](index)   # 通过该方法可以以 [index]的方式来访问
		@songs[index]
	end
	# 通过名字查找歌曲 
	# 传统方式实现迭代for 这种方式的问题是for与数组过度耦合，for语句必须要知道数组的长度
	def with_title(title) 
		for i in 0...@songs.length
			return @songs[i] if @songs[i].name==title
		end
		return nil
	end
	# block方式实现迭代, 用find来查找
	def with_title2(title)
		@songs.find {|song| title==song.name}
	end
end

class Song 
	def initialize(name,duration)
		@name=name
		@duration=duration
	end
	attr_reader :name, :duration
	attr_writer :name, :duration
end

# ruby中的单元测试
require "test/unit"
class TestSongList < Test::Unit::TestCase 
	def test_delete
		list  = SongList.new
		s1 = Song.new("song1", 120)
		s2 = Song.new("song2", 121)
		s3 = Song.new("song3", 122)
		s4 = Song.new("song4", 123)
		list.append(s1).append(s2).append(s3).append(s4)

		assert_equal(s2, list[1])
		assert_equal(s4, list[3])

		assert_nil(list[9])

		assert_equal(s1, list.delete_first)
		assert_equal(s2, list.delete_first)
		assert_equal(s4, list.delete_last)
		assert_equal(s3, list.delete_last)

		assert_nil(list.delete_last)
	end
end

# 迭代


