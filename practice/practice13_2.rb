# encoding: utf-8

def str2hash(str)
  ary = str.split(/\s+/)

  return if ary.length % 2 != 0
  
  h = Hash.new
  
  0.step(ary.length - 1, 2) do |i|
    h[ary[i]] = ary[i+1]
  end

  return h
end

p str2hash("blue 青 white 白\nred 赤")
