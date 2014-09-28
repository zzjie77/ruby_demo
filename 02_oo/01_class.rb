class Song
	def initialize(name, artist, duration)
		@name=name #  @xx实例变量
		@artist=artist
		@duration=duration
	end
	def to_s   #任何类的任何方法都可以重写， 内建的类也可以
		"Song: #@name--#@artist(#@duration)"
	end
end
song = Song.new("happy ending", "unknow", 120)
puts song.inspect  # 输出#<Song:0xbb6afc @name="happy ending", @artist="unknow", @duration=120>
puts song.to_s # 不重写改方法，默认只会输出类名和对象ID