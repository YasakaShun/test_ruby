a = Array.new
1.upto(100) { |i| a << i }

a3 = a.reject { |i| i % 3 != 0}

p a3

a.reject! { |i| i % 3 != 0 }
p a
