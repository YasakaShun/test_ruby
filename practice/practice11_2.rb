a = Array.new
1.upto(100) { |i| a << i }

a2 = a.collect{ |i| i * 100 }
p a2

a.collect!{ |i| i * 100 }
p a

