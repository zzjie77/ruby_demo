def wrap &b 
	print "Santa say: "
	3.times(&b)
	print "\n"
	yield
	yield
end
wrap { print "ho! " } 
