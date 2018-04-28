a = Array.new
1.upto(100){ |i| a << i }

sum = 0
a.each { |v|
  sum += v
}
p sum
