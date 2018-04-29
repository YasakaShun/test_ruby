str = "Ruby is an object oriented programming language"

a = str.split

puts "Q1."
p a


a2 = a.sort

puts "Q2."
p a2

a3 = str.split
a3.sort_by!{ |s| s.downcase }

puts "Q3."
p a3


a4 = str.split
a4.each{ |s| s.capitalize! }

# 足していって最後の1文字だけ消す
#str2 = ""
#a4.each { |s|
#  str2 << s + " "
#}
#str2.chop!

# 半角スペース区切りで文字列化
str2 = a4.join(" ")

puts "Q4."
p str2

h = Hash.new
str.each_char{ |c|
  if h.has_key?(c)
    h[c] += 1
  else
    h[c] = 1
  end
}

puts "Q5."
h.each{ |key, value|
  printf("\'%s\': %s\n", key, "*" * value)
}


