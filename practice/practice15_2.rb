# encoding: utf-8

def reverse(file)
  File.open(file, "r+"){ |io|
    lines = io.readlines
    io.rewind
    io.truncate(0)
    io.write lines.reverse.join()
  }
end

def first(file)
  File.open(file, "r+"){ |io|
    lines = io.readlines
    io.rewind
    io.truncate(0)
    io.write lines.first
  }
end

def last(file)
  File.open(file, "r+"){ |io|
    lines = io.readlines
    io.rewind
    io.truncate(0)
    io.write lines.pop
  }
end

# reverse(__FILE__)
last("test3.txt")
