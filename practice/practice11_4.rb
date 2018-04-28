a = Array.new
1.upto(100){ |i| a << i }

#a.sort_by!{ |i| -i }
a.reverse!
p a
