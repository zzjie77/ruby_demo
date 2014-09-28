class Song
	def initialize(name, artist, duration)
		@name=name
		@artist=artist
		@duration=duration
	end
	def to_s   #任何类的任何方法都可以重写， 内建的类也可以
		"Song: #@name--#@artist(#@duration)"
	end
end

class KaraokeSong < Song   # extend
	def initialize(name, artist, duration, lyrics)
		super(name,artist,duration)
		@lyrics=lyrics
	end
	def to_s
		super + @lyrics #super调用不带参数的super方法，会发送一条消息到父类，让父类调用同名方法to_s，并把参数传递给父类
	end
end

ks = KaraokeSong.new("happy ending", "unknown", 100, ".....")
print ks.to_s
