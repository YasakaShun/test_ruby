# encoding: utf-8

def tail(nline, file)
  File.open(file){ |io|
    lines = io.readlines
    # 指定行数だけ残るように前から切り捨てていく
    while nline < lines.length
      lines.shift
    end
    print lines.join()
  }
end

tail(4, "test4.txt")
